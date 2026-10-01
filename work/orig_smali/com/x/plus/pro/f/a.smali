.class public final Lcom/x/plus/pro/f/a;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    .line 7
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, ""

    :cond_a
    return-object p0
.end method
