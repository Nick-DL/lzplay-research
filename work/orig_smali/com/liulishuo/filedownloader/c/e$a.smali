.class public final Lcom/liulishuo/filedownloader/c/e$a;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/liulishuo/filedownloader/c/h;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Integer;

.field private final d:Lcom/liulishuo/filedownloader/c/a$a;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/liulishuo/filedownloader/c/a$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/c/a$a;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/c/a$a;->a(I)Lcom/liulishuo/filedownloader/c/a$a;

    return-object p0
.end method

.method public final a(Lcom/liulishuo/filedownloader/c/b;)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    .line 1214
    iput-object p1, v0, Lcom/liulishuo/filedownloader/c/a$a;->d:Lcom/liulishuo/filedownloader/c/b;

    return-object p0
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    .line 1209
    iput-object p1, v0, Lcom/liulishuo/filedownloader/c/a$a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    .line 1199
    iput-object p1, v0, Lcom/liulishuo/filedownloader/c/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 2

    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/e$a;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a()Lcom/liulishuo/filedownloader/c/e;
    .registers 10

    .line 229
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->a:Lcom/liulishuo/filedownloader/c/h;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    .line 235
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/a$a;->a()Lcom/liulishuo/filedownloader/c/a;

    move-result-object v4

    .line 236
    new-instance v0, Lcom/liulishuo/filedownloader/c/e;

    iget v2, v4, Lcom/liulishuo/filedownloader/c/a;->a:I

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/e$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/c/e$a;->a:Lcom/liulishuo/filedownloader/c/h;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/e$a;->e:Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/liulishuo/filedownloader/c/e$a;->b:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/c/e;-><init>(IILcom/liulishuo/filedownloader/c/a;Lcom/liulishuo/filedownloader/c/h;ZLjava/lang/String;B)V

    return-object v0

    .line 231
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/e$a;->a:Lcom/liulishuo/filedownloader/c/h;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/e$a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/e$a;->e:Ljava/lang/Boolean;

    aput-object p0, v1, v2

    const-string p0, "%s %s %B"

    invoke-static {p0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/e$a;->d:Lcom/liulishuo/filedownloader/c/a$a;

    .line 1204
    iput-object p1, v0, Lcom/liulishuo/filedownloader/c/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
