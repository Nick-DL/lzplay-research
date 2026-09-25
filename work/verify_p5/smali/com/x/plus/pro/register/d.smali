.class public final enum Lcom/x/plus/pro/register/d;
.super Ljava/lang/Enum;
.source "RegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/x/plus/pro/register/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lcom/x/plus/pro/register/d;

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lcom/x/plus/pro/register/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/x/plus/pro/register/d;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/x/plus/pro/register/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/x/plus/pro/register/d;->INSTANCE:Lcom/x/plus/pro/register/d;

    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lcom/x/plus/pro/register/d;

    sget-object v1, Lcom/x/plus/pro/register/d;->INSTANCE:Lcom/x/plus/pro/register/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/x/plus/pro/register/d;->b:[Lcom/x/plus/pro/register/d;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/x/plus/pro/register/d;
    .locals 1

    .line 8
    const-class v0, Lcom/x/plus/pro/register/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/register/d;

    return-object p0
.end method

.method public static values()[Lcom/x/plus/pro/register/d;
    .locals 1

    .line 8
    sget-object v0, Lcom/x/plus/pro/register/d;->b:[Lcom/x/plus/pro/register/d;

    invoke-virtual {v0}, [Lcom/x/plus/pro/register/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/x/plus/pro/register/d;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 16
    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 21
    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 0

    .line 25
    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 26
    sget-object p0, Lcom/x/plus/pro/register/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
