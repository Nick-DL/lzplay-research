.class public final Lcom/liulishuo/filedownloader/b/d$a;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/d;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/liulishuo/filedownloader/b/d$b;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/d;)V
    .registers 3

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0, v0}, Lcom/liulishuo/filedownloader/b/d$a;-><init>(Lcom/liulishuo/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Lcom/liulishuo/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    .line 281
    iput-object p2, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    .line 282
    iput-object p3, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 13

    .line 292
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    .line 1386
    iget-object v3, v0, Lcom/liulishuo/filedownloader/b/d$b;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1388
    iget-object v3, v0, Lcom/liulishuo/filedownloader/b/d$b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, ", "

    .line 1389
    iget-object v4, v0, Lcom/liulishuo/filedownloader/b/d$b;->b:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1390
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_2a

    const-string v4, "delete %s"

    .line 1391
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v0, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    :cond_2a
    iget-object v4, v0, Lcom/liulishuo/filedownloader/b/d$b;->c:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v4}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "DELETE FROM %s WHERE %s IN (%s);"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "filedownloader"

    aput-object v8, v7, v1

    const-string v8, "_id"

    aput-object v8, v7, v2

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    iget-object v0, v0, Lcom/liulishuo/filedownloader/b/d$b;->c:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "DELETE FROM %s WHERE %s IN (%s);"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "filedownloaderConnection"

    aput-object v6, v5, v1

    const-string v6, "id"

    aput-object v6, v5, v2

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    :cond_62
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gez v0, :cond_6b

    return-void

    .line 297
    :cond_6b
    iget-object v3, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v3}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v1

    :goto_75
    if-ge v3, v0, :cond_f9

    .line 300
    :try_start_77
    iget-object v4, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 301
    iget-object v5, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 302
    iget-object v6, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v6}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "filedownloader"

    const-string v8, "_id = ?"

    new-array v9, v2, [Ljava/lang/String;

    .line 303
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 302
    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    iget-object v6, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v6}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "filedownloader"

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2199
    iget v6, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    if-le v6, v2, :cond_f3

    .line 307
    iget-object v6, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v6, v4}, Lcom/liulishuo/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v6

    .line 308
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f3

    .line 310
    iget-object v7, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v7}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "filedownloaderConnection"

    const-string v10, "id = ?"

    new-array v11, v2, [Ljava/lang/String;

    .line 311
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v1

    .line 310
    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liulishuo/filedownloader/model/a;

    .line 3111
    iget v7, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 4050
    iput v7, v6, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 314
    iget-object v7, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v7}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "filedownloaderConnection"

    .line 315
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/a;->a()Landroid/content/ContentValues;

    move-result-object v6

    .line 314
    invoke-virtual {v7, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_d3

    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_75

    :catchall_f7
    move-exception v0

    goto :goto_13c

    .line 321
    :cond_f9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_129

    .line 322
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_107
    if-ge v1, v0, :cond_129

    .line 324
    iget-object v2, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 325
    iget-object v3, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_126

    .line 327
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_126

    .line 328
    iget-object v4, p0, Lcom/liulishuo/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_126
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    .line 333
    :cond_129
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_132
    .catchall {:try_start_77 .. :try_end_132} :catchall_f7

    .line 335
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_13c
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 3

    .line 351
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    .line 5111
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 346
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/liulishuo/filedownloader/b/d$b;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/d$a;->a:Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/b/d$b;-><init>(Lcom/liulishuo/filedownloader/b/d;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/d$a;->c:Lcom/liulishuo/filedownloader/b/d$b;

    return-object v0
.end method
