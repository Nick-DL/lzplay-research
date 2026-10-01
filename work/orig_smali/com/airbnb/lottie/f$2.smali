.class final Lcom/airbnb/lottie/f$2;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/airbnb/lottie/f;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;I)V
    .registers 3

    .line 551
    iput-object p1, p0, Lcom/airbnb/lottie/f$2;->b:Lcom/airbnb/lottie/f;

    iput p2, p0, Lcom/airbnb/lottie/f$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/airbnb/lottie/f$2;->b:Lcom/airbnb/lottie/f;

    iget p0, p0, Lcom/airbnb/lottie/f$2;->a:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/f;->c(I)V

    return-void
.end method
