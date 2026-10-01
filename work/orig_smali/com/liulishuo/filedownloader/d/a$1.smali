.class final Lcom/liulishuo/filedownloader/d/a$1;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/d/a;->b(Lcom/liulishuo/filedownloader/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/d/c;

.field final synthetic b:Lcom/liulishuo/filedownloader/d/a;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/d/a;Lcom/liulishuo/filedownloader/d/c;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/liulishuo/filedownloader/d/a$1;->b:Lcom/liulishuo/filedownloader/d/a;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/d/a$1;->a:Lcom/liulishuo/filedownloader/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d/a$1;->b:Lcom/liulishuo/filedownloader/d/a;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/d/a$1;->a:Lcom/liulishuo/filedownloader/d/c;

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/d/a;->a(Lcom/liulishuo/filedownloader/d/c;)Z

    return-void
.end method
