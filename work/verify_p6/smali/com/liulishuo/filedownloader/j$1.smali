.class final Lcom/liulishuo/filedownloader/j$1;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/u;

.field final synthetic b:Lcom/liulishuo/filedownloader/j;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/j;Lcom/liulishuo/filedownloader/u;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/liulishuo/filedownloader/j$1;->b:Lcom/liulishuo/filedownloader/j;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/j$1;->a:Lcom/liulishuo/filedownloader/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/liulishuo/filedownloader/j$1;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/u;->b()V

    return-void
.end method
