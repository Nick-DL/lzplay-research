.class public abstract Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/f$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/fragment/app/d;


# instance fields
.field b:Landroidx/fragment/app/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroidx/fragment/app/d;

    invoke-direct {v0}, Landroidx/fragment/app/d;-><init>()V

    sput-object v0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/d;

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract a()Landroidx/fragment/app/i;
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract addOnBackStackChangedListener(Landroidx/fragment/app/f$a;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public e()Landroidx/fragment/app/d;
    .registers 2

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/d;

    if-nez v0, :cond_8

    .line 412
    sget-object v0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/d;

    iput-object v0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/d;

    .line 414
    :cond_8
    iget-object p0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public abstract removeOnBackStackChangedListener(Landroidx/fragment/app/f$a;)V
.end method
