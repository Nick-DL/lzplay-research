.class public final Landroidx/appcompat/widget/MenuPopupWindow;
.super Landroidx/appcompat/widget/u;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/widget/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field public a:Landroidx/appcompat/widget/v;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 60
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_18

    .line 61
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19

    :cond_18
    return-void

    :catch_19
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Z)Landroidx/appcompat/widget/r;
    .registers 4

    .line 77
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 78
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroidx/appcompat/widget/v;)V

    return-object v0
.end method

.method public final a()V
    .registers 3

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    .line 84
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->o:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_c
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .registers 4

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->a:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_9

    .line 128
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->a:Landroidx/appcompat/widget/v;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/v;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    :cond_9
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .registers 4

    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->a:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_9

    .line 120
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->a:Landroidx/appcompat/widget/v;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/v;->b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    :cond_9
    return-void
.end method

.method public final g()V
    .registers 5

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_22

    .line 104
    sget-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 106
    :try_start_b
    sget-object v0, Landroidx/appcompat/widget/MenuPopupWindow;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->o:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    const-string p0, "MenuPopupWindow"

    const-string v0, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_22
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    :cond_27
    return-void
.end method
