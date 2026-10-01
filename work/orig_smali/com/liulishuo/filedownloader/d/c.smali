.class public abstract Lcom/liulishuo/filedownloader/d/c;
.super Ljava/lang/Object;
.source "IDownloadEvent.java"


# instance fields
.field public b:Ljava/lang/Runnable;

.field protected final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/liulishuo/filedownloader/d/c;->b:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/liulishuo/filedownloader/d/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d/c;->c:Ljava/lang/String;

    return-object p0
.end method
