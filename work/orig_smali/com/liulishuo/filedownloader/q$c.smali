.class final Lcom/liulishuo/filedownloader/q$c;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/y$b;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/y$b;)V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/y$b;

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/q$c;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 165
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/y$b;

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final run()V
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/q$c;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 155
    :cond_5
    iget-object p0, p0, Lcom/liulishuo/filedownloader/q$c;->a:Lcom/liulishuo/filedownloader/y$b;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y$b;->m()V

    return-void
.end method
