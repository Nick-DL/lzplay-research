.class public final Lcom/x/plus/pro/c/a;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field public static a:Lcom/liulishuo/filedownloader/a;


# direct methods
.method public static a()V
    .registers 1

    .line 38
    sget-object v0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    sget-object v0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->k()Z

    :cond_11
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 60
    invoke-static {p0}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v1

    :cond_2b
    return v1
.end method
