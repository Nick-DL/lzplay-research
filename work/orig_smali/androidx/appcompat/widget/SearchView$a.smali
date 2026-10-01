.class final Landroidx/appcompat/widget/SearchView$a;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 7

    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2031
    :try_start_5
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doBeforeTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2032
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$a;->a:Ljava/lang/reflect/Method;

    .line 2033
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$a;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_16} :catch_16

    .line 2038
    :catch_16
    :try_start_16
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doAfterTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2039
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$a;->b:Ljava/lang/reflect/Method;

    .line 2040
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_27} :catch_27

    .line 2045
    :catch_27
    :try_start_27
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "ensureImeVisible"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 2046
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    .line 2047
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    return-void
.end method


# virtual methods
.method final a(Landroid/widget/AutoCompleteTextView;)V
    .registers 3

    .line 2054
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    .line 2056
    :try_start_4
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$a;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-void

    :catch_d
    :cond_d
    return-void
.end method

.method final b(Landroid/widget/AutoCompleteTextView;)V
    .registers 3

    .line 2063
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    .line 2065
    :try_start_4
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$a;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-void

    :catch_d
    :cond_d
    return-void
.end method

.method final c(Landroid/widget/AutoCompleteTextView;)V
    .registers 5

    .line 2072
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    .line 2074
    :try_start_4
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-void

    :catch_12
    :cond_12
    return-void
.end method
