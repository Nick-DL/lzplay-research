# Generic APK builder: plain Java + SDK build-tools only (no Gradle, no AGP).
#
#   Build-AndroidApp -Proj <src dir> -Name <app name> [-Out <apk path>] [-Ks <keystore>]
#
# A project dir must contain: AndroidManifest.xml, src/**, and res/ (aapt2 needs at
# least one resource; an empty res/xml stubs file is enough).
#
# NOTE: do NOT set $ErrorActionPreference='Stop' - javac/d8/aapt2 write ordinary
# progress notes to stderr and PowerShell turns those into terminating errors.
$ErrorActionPreference = 'Continue'

$script:BT   = 'D:\Android\Sdk\build-tools\37.0.0'
$script:AJAR = 'D:\Android\Sdk\platforms\android-33\android.jar'
$script:JAVA = 'C:\Users\NickDL\.jdks\jbr-17.0.14\bin\javac.exe'
$script:KEYTOOL = 'C:\Users\NickDL\.jdks\jbr-17.0.14\bin\keytool.exe'
$script:NODE = 'C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\node\bin\node.exe'

function S([string]$p) { return ($p -replace '\\', '/') }

function Build-AndroidApp {
    param(
        [Parameter(Mandatory=$true)][string]$Proj,
        [Parameter(Mandatory=$true)][string]$Name,
        [string]$Out,
        [string]$Ks,
        [int]$MinSdk = 21,
        [int]$TargetSdk = 33
    )
    $ws  = (Get-Location).Path
    $Proj = (Resolve-Path $Proj).Path
    if (-not $Out) { $Out = Join-Path $ws "$Name.apk" }
    $work = Join-Path $Proj 'build'
    Remove-Item $work -Recurse -Force -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force -Path "$work\classes", "$work\gen", "$work\dex" | Out-Null

    Write-Host "=== building $Name from $Proj ==="

    Write-Host '--- 1/7 aapt2 compile ---'
    & "$BT\aapt2.exe" compile --dir "$Proj\res" -o "$work\res.zip"
    if ($LASTEXITCODE -ne 0) { throw 'aapt2 compile failed' }

    Write-Host '--- 2/7 aapt2 link (generates R.java) ---'
    # -A bundles <Proj>/assets into the APK when that directory exists.
    # aapt2 refuses an empty/missing dir, so only pass it when there is something.
    $assetsArg = @()
    if (Test-Path "$Proj\assets") {
        $n = @(Get-ChildItem "$Proj\assets" -Recurse -File -ErrorAction SilentlyContinue).Count
        if ($n -gt 0) {
            $assetsArg = @('-A', "$Proj\assets")
            Write-Host "    bundling assets: $n file(s)"
        }
    }
    & "$BT\aapt2.exe" link -o "$work\base.apk" -I $AJAR `
        --manifest "$Proj\AndroidManifest.xml" --java "$work\gen" `
        --min-sdk-version $MinSdk --target-sdk-version $TargetSdk `
        --version-code 1 --version-name 1.0 @assetsArg "$work\res.zip"
    if ($LASTEXITCODE -ne 0) { throw 'aapt2 link failed' }

    Write-Host '--- 3/7 javac ---'
    $srcs = @(Get-ChildItem "$Proj\src" -Recurse -Filter *.java | ForEach-Object { S $_.FullName }) +
            @(Get-ChildItem "$work\gen" -Recurse -Filter *.java | ForEach-Object { S $_.FullName })
    if ($srcs.Count -eq 0) { throw 'no java sources found' }
    $argfile = "$work\javac.args"
    # -encoding UTF-8 is essential: on a Chinese Windows the javac default is GBK and
    # every Chinese string literal in the sources becomes an "unmappable character".
    $lines = @('-nowarn', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
               '-bootclasspath', ('"' + (S $AJAR) + '"'),
               '-cp', ('"' + (S $AJAR) + '"'),
               '-d', ('"' + (S "$work\classes") + '"')) + ($srcs | ForEach-Object { '"' + $_ + '"' })
    [System.IO.File]::WriteAllLines($argfile, $lines, (New-Object System.Text.ASCIIEncoding))
    & $JAVA "@$argfile"
    if ($LASTEXITCODE -ne 0) { throw 'javac failed' }

    Write-Host '--- 4/7 d8 ---'
    $cls = @(Get-ChildItem "$work\classes" -Recurse -Filter *.class | ForEach-Object { S $_.FullName })
    $d8args = "$work\d8.args"
    [System.IO.File]::WriteAllLines($d8args, $cls, (New-Object System.Text.ASCIIEncoding))
    & "$BT\d8.bat" --min-api $MinSdk --output "$work\dex" --lib $AJAR "@$d8args"
    if ($LASTEXITCODE -ne 0) { throw 'd8 failed' }

    Write-Host '--- 5/7 inject classes.dex at APK root ---'
    & $NODE (Join-Path $ws 'work\tools\adddex.cjs') "$work\base.apk" "$work\dex\classes.dex" "$work\withdex.apk"
    if ($LASTEXITCODE -ne 0) { throw 'adddex failed' }

    Write-Host '--- 6/7 zipalign ---'
    & "$BT\zipalign.exe" -f -p 4 "$work\withdex.apk" "$work\aligned.apk"
    if ($LASTEXITCODE -ne 0) { throw 'zipalign failed' }

    Write-Host '--- 7/7 apksigner ---'
    if (-not $Ks) { $Ks = Join-Path $ws 'work\probe_out\lzprobe.jks' }
    if (-not (Test-Path $Ks)) {
        New-Item -ItemType Directory -Force -Path (Split-Path $Ks) | Out-Null
        & $KEYTOOL -genkeypair -keystore $Ks -storepass lzplay123 -keypass lzplay123 `
            -alias lzplay -keyalg RSA -keysize 2048 -validity 10950 `
            -dname 'CN=LZRevive, OU=research, O=lzplay, L=Unknown, ST=Unknown, C=Unknown'
    }
    Remove-Item $Out -Force -ErrorAction SilentlyContinue
    & "$BT\apksigner.bat" sign --ks $Ks --ks-pass pass:lzplay123 --key-pass pass:lzplay123 `
        --v1-signing-enabled true --v2-signing-enabled true --out $Out "$work\aligned.apk"
    if ($LASTEXITCODE -ne 0) { throw 'apksigner failed' }

    & "$BT\apksigner.bat" verify --verbose $Out | Select-Object -First 3
    Write-Host "BUILT: $Out"
    Get-Item $Out | Select-Object Name, Length
}
