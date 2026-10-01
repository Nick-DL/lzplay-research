.class final Lcom/liulishuo/filedownloader/s$a;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Lcom/liulishuo/filedownloader/s;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/s;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/s$a;->a:Lcom/liulishuo/filedownloader/s;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/s;
    .registers 1

    .line 129
    sget-object v0, Lcom/liulishuo/filedownloader/s$a;->a:Lcom/liulishuo/filedownloader/s;

    return-object v0
.end method
