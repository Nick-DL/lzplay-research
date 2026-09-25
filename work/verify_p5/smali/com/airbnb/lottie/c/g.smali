.class public final Lcom/airbnb/lottie/c/g;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/c/g;


# instance fields
.field private final b:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/airbnb/lottie/c/g;

    invoke-direct {v0}, Lcom/airbnb/lottie/c/g;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/c/g;->a:Lcom/airbnb/lottie/c/g;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/b/e;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/g;->b:Landroidx/b/e;

    return-void
.end method

.method public static a()Lcom/airbnb/lottie/c/g;
    .locals 1

    .line 17
    sget-object v0, Lcom/airbnb/lottie/c/g;->a:Lcom/airbnb/lottie/c/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/airbnb/lottie/d;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/c/g;->b:Landroidx/b/e;

    invoke-virtual {p0, p1}, Landroidx/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/d;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/c/g;->b:Landroidx/b/e;

    invoke-virtual {p0, p1, p2}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
