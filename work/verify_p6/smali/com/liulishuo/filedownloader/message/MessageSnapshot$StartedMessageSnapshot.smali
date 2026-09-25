.class public Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "MessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartedMessageSnapshot"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final b()B
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
