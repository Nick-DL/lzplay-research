.class public final Landroidx/core/e/d;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/e/d$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/reflect/Method; = null

.field private static c:Z = false

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 4

    .line 142
    sget-boolean v0, Landroidx/core/e/d;->c:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 144
    :try_start_5
    const-class v1, Landroid/app/Dialog;

    const-string v2, "mOnKeyListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    sput-object v1, Landroidx/core/e/d;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 148
    :catch_12
    sput-boolean v0, Landroidx/core/e/d;->c:Z

    .line 151
    :cond_14
    sget-object v0, Landroidx/core/e/d;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    .line 153
    :try_start_18
    sget-object v0, Landroidx/core/e/d;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .registers 8

    .line 96
    sget-boolean v0, Landroidx/core/e/d;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 99
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "onMenuKeyEvent"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/e/d;->b:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_18

    .line 102
    :catch_18
    sput-boolean v1, Landroidx/core/e/d;->a:Z

    .line 104
    :cond_1a
    sget-object v0, Landroidx/core/e/d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2f

    .line 106
    :try_start_1e
    sget-object v0, Landroidx/core/e/d;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2e} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    :cond_2f
    return v2
.end method

.method public static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 2

    .line 63
    invoke-static {p0, p1}, Landroidx/core/e/r;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroidx/core/e/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 83
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    .line 84
    invoke-interface {p0, p3}, Landroidx/core/e/d$a;->a(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 86
    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_58

    .line 87
    check-cast p2, Landroid/app/Activity;

    .line 1115
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 1117
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    .line 1121
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1122
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 1123
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_3b

    if-eqz p1, :cond_3b

    .line 1125
    invoke-static {p1, p3}, Landroidx/core/e/d;->a(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3b

    return v3

    .line 1130
    :cond_3b
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_42

    return v3

    .line 1133
    :cond_42
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1134
    invoke-static {p0, p3}, Landroidx/core/e/r;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    return v3

    :cond_4d
    if-eqz p0, :cond_53

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1137
    :cond_53
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 88
    :cond_58
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_90

    .line 89
    check-cast p2, Landroid/app/Dialog;

    .line 1161
    invoke-static {p2}, Landroidx/core/e/d;->a(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p0

    if-eqz p0, :cond_6f

    .line 1162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_6f

    return v3

    .line 1165
    :cond_6f
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 1166
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7a

    return v3

    .line 1169
    :cond_7a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1170
    invoke-static {p0, p3}, Landroidx/core/e/r;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_85

    return v3

    :cond_85
    if-eqz p0, :cond_8b

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1173
    :cond_8b
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_90
    if-eqz p1, :cond_98

    .line 91
    invoke-static {p1, p3}, Landroidx/core/e/r;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_9e

    .line 92
    :cond_98
    invoke-interface {p0, p3}, Landroidx/core/e/d$a;->a(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_9f

    :cond_9e
    return v3

    :cond_9f
    return v0
.end method
