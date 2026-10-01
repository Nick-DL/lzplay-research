.class public final Lcom/liulishuo/filedownloader/b/b;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/b/b$b;,
        Lcom/liulishuo/filedownloader/b/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
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
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(II)V
    .registers 3

    return-void
.end method

.method public final a(IIJ)V
    .registers 6

    .line 105
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_b

    return-void

    .line 108
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/model/a;

    .line 1054
    iget v0, p1, Lcom/liulishuo/filedownloader/model/a;->b:I

    if-ne v0, p2, :cond_f

    .line 1074
    iput-wide p3, p1, Lcom/liulishuo/filedownloader/model/a;->d:J

    return-void

    :cond_22
    return-void
.end method

.method public final a(IJ)V
    .registers 4

    return-void
.end method

.method public final a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method

.method public final a(ILjava/lang/String;JJI)V
    .registers 8

    return-void
.end method

.method public final a(ILjava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public final a(ILjava/lang/Throwable;J)V
    .registers 5

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p1, "update but model == null!"

    const/4 v0, 0x0

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1111
    :cond_b
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 132
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 134
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    .line 2111
    iget v1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    .line 3111
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 135
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 3122
    :cond_22
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    .line 4111
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 3122
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/a;)V
    .registers 4

    .line 1046
    iget v0, p1, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 94
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_16

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_16
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/liulishuo/filedownloader/b/a$a;
    .registers 2

    .line 188
    new-instance v0, Lcom/liulishuo/filedownloader/b/b$a;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/b/b$a;-><init>(Lcom/liulishuo/filedownloader/b/b;)V

    return-object v0
.end method

.method public final b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object p0
.end method

.method public final b(IJ)V
    .registers 4

    return-void
.end method

.method public final c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_12

    .line 81
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return-object v0
.end method

.method public final d(I)V
    .registers 2

    .line 88
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final e(I)Z
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f(I)V
    .registers 2

    .line 175
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->e(I)Z

    return-void
.end method

.method public final g(I)V
    .registers 2

    return-void
.end method
