.class public final Lcom/liulishuo/filedownloader/d/b$a;
.super Ljava/lang/Enum;
.source "DownloadServiceConnectChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/filedownloader/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[I

.field public static final connected$bef08b2:I = 0x1

.field public static final disconnected$bef08b2:I = 0x2

.field public static final lost$bef08b2:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [I

    sget v1, Lcom/liulishuo/filedownloader/d/b$a;->connected$bef08b2:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/liulishuo/filedownloader/d/b$a;->disconnected$bef08b2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/liulishuo/filedownloader/d/b$a;->lost$bef08b2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/liulishuo/filedownloader/d/b$a;->a:[I

    return-void
.end method

.method public static values$21e0f288()[I
    .registers 1

    .line 36
    sget-object v0, Lcom/liulishuo/filedownloader/d/b$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
