.class final Lcom/liulishuo/filedownloader/b/b$a;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/b;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/b;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/b$a;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 3

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 2

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/liulishuo/filedownloader/b/b$b;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b$a;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/b/b$b;-><init>(Lcom/liulishuo/filedownloader/b/b;)V

    return-object v0
.end method
