.class final Lcom/liulishuo/filedownloader/c/a$a;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field d:Lcom/liulishuo/filedownloader/c/b;

.field private e:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/liulishuo/filedownloader/c/a$a;
    .locals 0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/a$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method final a()Lcom/liulishuo/filedownloader/c/a;
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/a$a;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/a$a;->d:Lcom/liulishuo/filedownloader/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/liulishuo/filedownloader/c/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/a$a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a$a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/a$a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/c/a$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/liulishuo/filedownloader/c/a$a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/c/a;-><init>(Lcom/liulishuo/filedownloader/c/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;B)V

    return-object v0

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
