.class public final enum Lcom/airbnb/lottie/c/b/p$b;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/c/b/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bevel:Lcom/airbnb/lottie/c/b/p$b;

.field public static final enum Miter:Lcom/airbnb/lottie/c/b/p$b;

.field public static final enum Round:Lcom/airbnb/lottie/c/b/p$b;

.field private static final synthetic a:[Lcom/airbnb/lottie/c/b/p$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 36
    new-instance v0, Lcom/airbnb/lottie/c/b/p$b;

    const-string v1, "Miter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/c/b/p$b;->Miter:Lcom/airbnb/lottie/c/b/p$b;

    .line 37
    new-instance v0, Lcom/airbnb/lottie/c/b/p$b;

    const-string v1, "Round"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/c/b/p$b;->Round:Lcom/airbnb/lottie/c/b/p$b;

    .line 38
    new-instance v0, Lcom/airbnb/lottie/c/b/p$b;

    const-string v1, "Bevel"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/c/b/p$b;->Bevel:Lcom/airbnb/lottie/c/b/p$b;

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/airbnb/lottie/c/b/p$b;

    sget-object v1, Lcom/airbnb/lottie/c/b/p$b;->Miter:Lcom/airbnb/lottie/c/b/p$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/c/b/p$b;->Round:Lcom/airbnb/lottie/c/b/p$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/c/b/p$b;->Bevel:Lcom/airbnb/lottie/c/b/p$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/lottie/c/b/p$b;->a:[Lcom/airbnb/lottie/c/b/p$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/c/b/p$b;
    .registers 2

    .line 35
    const-class v0, Lcom/airbnb/lottie/c/b/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/c/b/p$b;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/c/b/p$b;
    .registers 1

    .line 35
    sget-object v0, Lcom/airbnb/lottie/c/b/p$b;->a:[Lcom/airbnb/lottie/c/b/p$b;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/c/b/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/c/b/p$b;

    return-object v0
.end method


# virtual methods
.method public final toPaintJoin()Landroid/graphics/Paint$Join;
    .registers 2

    .line 41
    sget-object v0, Lcom/airbnb/lottie/c/b/p$1;->b:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/c/b/p$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return-object p0

    .line 47
    :pswitch_d
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    .line 45
    :pswitch_10
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    .line 43
    :pswitch_13
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method
