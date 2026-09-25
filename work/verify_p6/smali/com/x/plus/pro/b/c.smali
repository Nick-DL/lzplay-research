.class public final Lcom/x/plus/pro/b/c;
.super Ljava/lang/Object;
.source "RC4JavaxImpl.java"

# interfaces
.implements Lcom/x/plus/pro/b/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/String;

    const-string v1, "UkM0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/x/plus/pro/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 23
    iput-object p1, p0, Lcom/x/plus/pro/b/c;->b:[B

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "kie!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a([B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 60
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lcom/x/plus/pro/b/c;->b:[B

    sget-object v1, Lcom/x/plus/pro/b/c;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    sget-object p0, Lcom/x/plus/pro/b/c;->a:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x2

    .line 66
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "toDecrypt is empty!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/x/plus/pro/b/c;->a([B)[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "td empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
