# Build LZProbe.apk from plain Java + SDK build-tools only (no Gradle, no AGP).
# Usage:  Invoke-Expression (Get-Content work\tools\build_probe.ps1 -Raw)
#
# NOTE: do NOT set $ErrorActionPreference='Stop' here - javac/d8 write ordinary
# progress notes to stderr and PowerShell would turn those into terminating errors.
$ErrorActionPreference = 'Continue'

function Step($name, $code) {
    & $code
    if ($LASTEXITCODE -ne 0) { throw "$name failed with exit $LASTEXITCODE" }
}

$ws   = (Get-Location).Path
$BT   = 'D:\Android\Sdk\build-tools\37.0.0'
$AJAR = 'D:\Android\Sdk\platforms\android-33\android.jar'
$JAVA = 'C:\Users\NickDL\.jdks\jbr-17.0.14\bin\javac.exe'
$KEYTOOL = 'C:\Users\NickDL\.jdks\jbr-17.0.14\bin\keytool.exe'
$NODE = 'C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\node\bin\node.exe'

$proj  = Join-Path $ws 'work\probe'
$out   = Join-Path $ws 'work\probe_out'
$final = Join-Path $ws 'LZProbe.apk'

function S([string]$p) { return ($p -replace '\\', '/') }

Remove-Item $out -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path "$out\classes", "$out\gen", "$out\dex" | Out-Null

Write-Host '--- 1/7 aapt2 compile resources ---'
& "$BT\aapt2.exe" compile --dir "$proj\res" -o "$out\res.zip"
if ($LASTEXITCODE -ne 0) { throw "aapt2 compile failed" }

Write-Host '--- 2/7 aapt2 link (generates R.java) ---'
& "$BT\aapt2.exe" link -o "$out\base.apk" -I $AJAR `
    --manifest "$proj\AndroidManifest.xml" --java "$out\gen" `
    --min-sdk-version 21 --target-sdk-version 33 --version-code 1 --version-name 1.0 `
    "$out\res.zip"
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

Write-Host '--- 3/7 javac ---'
$srcs = @(Get-ChildItem "$proj\src" -Recurse -Filter *.java | ForEach-Object { S $_.FullName }) +
        @(Get-ChildItem "$out\gen" -Recurse -Filter *.java | ForEach-Object { S $_.FullName })
$argfile = "$out\javac.args"
$lines = @('-nowarn', '-source', '8', '-target', '8',
           '-bootclasspath', ('"' + (S $AJAR) + '"'),
           '-cp', ('"' + (S $AJAR) + '"'),
           '-d', ('"' + (S "$out\classes") + '"')) + ($srcs | ForEach-Object { '"' + $_ + '"' })
[System.IO.File]::WriteAllLines($argfile, $lines, (New-Object System.Text.ASCIIEncoding))
& $JAVA "@$argfile"
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

Write-Host '--- 4/7 d8 ---'
$cls = @(Get-ChildItem "$out\classes" -Recurse -Filter *.class | ForEach-Object { S $_.FullName })
$d8args = "$out\d8.args"
[System.IO.File]::WriteAllLines($d8args, $cls, (New-Object System.Text.ASCIIEncoding))
& "$BT\d8.bat" --min-api 21 --output "$out\dex" --lib $AJAR "@$d8args"
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }

Write-Host '--- 5/7 inject classes.dex at APK root ---'
& $NODE (Join-Path $ws 'work\tools\adddex.cjs') "$out\base.apk" "$out\dex\classes.dex" "$out\withdex.apk"
if ($LASTEXITCODE -ne 0) { throw "adddex failed" }

Write-Host '--- 6/7 zipalign ---'
& "$BT\zipalign.exe" -f -p 4 "$out\withdex.apk" "$out\aligned.apk"
if ($LASTEXITCODE -ne 0) { throw "zipalign failed" }

Write-Host '--- 7/7 apksigner ---'
$ks = "$out\lzprobe.jks"
if (-not (Test-Path $ks)) {
    & $KEYTOOL -genkeypair -keystore $ks -storepass lzplay123 -keypass lzplay123 `
        -alias lzprobe -keyalg RSA -keysize 2048 -validity 10950 `
        -dname 'CN=LZProbe, OU=research, O=lzplay, L=Unknown, ST=Unknown, C=Unknown'
}
Remove-Item $final -Force -ErrorAction SilentlyContinue
& "$BT\apksigner.bat" sign --ks $ks --ks-pass pass:lzplay123 --key-pass pass:lzplay123 `
    --v1-signing-enabled true --v2-signing-enabled true --out $final "$out\aligned.apk"
if ($LASTEXITCODE -ne 0) { throw "apksigner failed" }

& "$BT\apksigner.bat" verify --verbose $final | Select-Object -First 4
Write-Host ''
Write-Host "BUILT: $final"
Get-Item $final | Select-Object Name, Length
