.class public Lcom/x/plus/pro/f/j;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static a:Ljava/lang/String; = "j"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "display"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 15
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    .line 16
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_26

    aget-object v3, p0, v2

    .line 17
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    .line 18
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method
