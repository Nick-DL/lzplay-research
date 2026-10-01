.class final Lcom/liulishuo/filedownloader/h$a;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/liulishuo/filedownloader/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/h;-><init>(B)V

    sput-object v0, Lcom/liulishuo/filedownloader/h$a;->a:Lcom/liulishuo/filedownloader/h;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/h;
    .registers 1

    .line 33
    sget-object v0, Lcom/liulishuo/filedownloader/h$a;->a:Lcom/liulishuo/filedownloader/h;

    return-object v0
.end method
