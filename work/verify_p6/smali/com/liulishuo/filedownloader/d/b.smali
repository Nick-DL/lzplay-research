.class public final Lcom/liulishuo/filedownloader/d/b;
.super Lcom/liulishuo/filedownloader/d/c;
.source "DownloadServiceConnectChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/d/b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "event.service.connect.changed"

    .line 28
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/d/c;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lcom/liulishuo/filedownloader/d/b;->a:I

    .line 31
    iput-object p2, p0, Lcom/liulishuo/filedownloader/d/b;->d:Ljava/lang/Class;

    return-void
.end method
