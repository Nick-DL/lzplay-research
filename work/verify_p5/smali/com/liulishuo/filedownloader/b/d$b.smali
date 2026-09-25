.class final Lcom/liulishuo/filedownloader/b/d$b;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/database/Cursor;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/liulishuo/filedownloader/b/d;

.field private d:I


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/d;)V
    .locals 2

    .line 362
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/d$b;->c:Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/d$b;->b:Ljava/util/List;

    .line 363
    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "SELECT * FROM filedownloader"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/d$b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/d$b;->a:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$b;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Landroid/database/Cursor;)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 2111
    iget v1, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 1375
    iput v1, p0, Lcom/liulishuo/filedownloader/b/d$b;->d:I

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$b;->b:Ljava/util/List;

    iget p0, p0, Lcom/liulishuo/filedownloader/b/d$b;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
