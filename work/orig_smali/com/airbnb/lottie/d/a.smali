.class public final enum Lcom/airbnb/lottie/d/a;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Json:Lcom/airbnb/lottie/d/a;

.field public static final enum Zip:Lcom/airbnb/lottie/d/a;

.field private static final synthetic a:[Lcom/airbnb/lottie/d/a;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lcom/airbnb/lottie/d/a;

    const-string v1, "Json"

    const-string v2, ".json"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/lottie/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/d/a;->Json:Lcom/airbnb/lottie/d/a;

    .line 12
    new-instance v0, Lcom/airbnb/lottie/d/a;

    const-string v1, "Zip"

    const-string v2, ".zip"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/lottie/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/d/a;->Zip:Lcom/airbnb/lottie/d/a;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lcom/airbnb/lottie/d/a;

    sget-object v1, Lcom/airbnb/lottie/d/a;->Json:Lcom/airbnb/lottie/d/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/d/a;->Zip:Lcom/airbnb/lottie/d/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/lottie/d/a;->a:[Lcom/airbnb/lottie/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/airbnb/lottie/d/a;->extension:Ljava/lang/String;

    return-void
.end method

.method public static forFile(Ljava/lang/String;)Lcom/airbnb/lottie/d/a;
    .registers 6

    .line 29
    invoke-static {}, Lcom/airbnb/lottie/d/a;->values()[Lcom/airbnb/lottie/d/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 30
    iget-object v4, v3, Lcom/airbnb/lottie/d/a;->extension:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const-string v0, "Unable to find correct extension for "

    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)V

    .line 36
    sget-object p0, Lcom/airbnb/lottie/d/a;->Json:Lcom/airbnb/lottie/d/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/d/a;
    .registers 2

    .line 10
    const-class v0, Lcom/airbnb/lottie/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/d/a;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/d/a;
    .registers 1

    .line 10
    sget-object v0, Lcom/airbnb/lottie/d/a;->a:[Lcom/airbnb/lottie/d/a;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/d/a;

    return-object v0
.end method


# virtual methods
.method public final tempExtension()Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".temp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/d/a;->extension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/airbnb/lottie/d/a;->extension:Ljava/lang/String;

    return-object p0
.end method
