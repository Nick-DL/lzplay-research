.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field private static a:I

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# instance fields
.field private e:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .registers 4

    .line 51
    sget-object p1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    if-eq p2, p1, :cond_5

    return-void

    .line 54
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    const/4 p2, 0x1

    if-nez p1, :cond_36

    const/4 p1, 0x2

    .line 1101
    :try_start_b
    sput p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 1102
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "mServedView"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1103
    sput-object p1, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1104
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "mNextServedView"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1105
    sput-object p1, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1106
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "mH"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1107
    sput-object p1, Landroidx/activity/ImmLeaksCleaner;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1108
    sput p2, Landroidx/activity/ImmLeaksCleaner;->a:I
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_36} :catch_36

    .line 57
    :catch_36
    :cond_36
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    if-ne p1, p2, :cond_78

    .line 58
    iget-object p0, p0, Landroidx/activity/ImmLeaksCleaner;->e:Landroid/app/Activity;

    const-string p1, "input_method"

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    :try_start_44
    sget-object p1, Landroidx/activity/ImmLeaksCleaner;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_44 .. :try_end_4a} :catch_77

    if-nez p1, :cond_4d

    return-void

    .line 69
    :cond_4d
    monitor-enter p1

    .line 72
    :try_start_4e
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;
    :try_end_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_56} :catch_73
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_56} :catch_71
    .catchall {:try_start_4e .. :try_end_56} :catchall_6f

    if-nez p2, :cond_5a

    .line 79
    :try_start_58
    monitor-exit p1

    return-void

    .line 81
    :cond_5a
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_62

    .line 82
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_6f

    return-void

    .line 87
    :cond_62
    :try_start_62
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_68} :catch_6d
    .catchall {:try_start_62 .. :try_end_68} :catchall_6f

    .line 91
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6f

    .line 94
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_78

    .line 89
    :catch_6d
    :try_start_6d
    monitor-exit p1

    return-void

    :catchall_6f
    move-exception p0

    goto :goto_75

    .line 76
    :catch_71
    monitor-exit p1

    return-void

    .line 74
    :catch_73
    monitor-exit p1

    return-void

    .line 91
    :goto_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_6f

    throw p0

    :catch_77
    return-void

    :cond_78
    :goto_78
    return-void
.end method
