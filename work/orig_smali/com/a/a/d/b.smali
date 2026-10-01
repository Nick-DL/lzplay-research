.class public final enum Lcom/a/a/d/b;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/a/a/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGIN_ARRAY:Lcom/a/a/d/b;

.field public static final enum BEGIN_OBJECT:Lcom/a/a/d/b;

.field public static final enum BOOLEAN:Lcom/a/a/d/b;

.field public static final enum END_ARRAY:Lcom/a/a/d/b;

.field public static final enum END_DOCUMENT:Lcom/a/a/d/b;

.field public static final enum END_OBJECT:Lcom/a/a/d/b;

.field public static final enum NAME:Lcom/a/a/d/b;

.field public static final enum NULL:Lcom/a/a/d/b;

.field public static final enum NUMBER:Lcom/a/a/d/b;

.field public static final enum STRING:Lcom/a/a/d/b;

.field private static final synthetic a:[Lcom/a/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 31
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    .line 37
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    .line 43
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->BEGIN_OBJECT:Lcom/a/a/d/b;

    .line 49
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    .line 56
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    .line 61
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "STRING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    .line 67
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    .line 72
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->BOOLEAN:Lcom/a/a/d/b;

    .line 77
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "NULL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    .line 84
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->END_DOCUMENT:Lcom/a/a/d/b;

    const/16 v0, 0xa

    .line 25
    new-array v0, v0, [Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/b;->BEGIN_OBJECT:Lcom/a/a/d/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/a/a/d/b;->BOOLEAN:Lcom/a/a/d/b;

    aput-object v1, v0, v9

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/a/a/d/b;->END_DOCUMENT:Lcom/a/a/d/b;

    aput-object v1, v0, v11

    sput-object v0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b;
    .registers 2

    .line 25
    const-class v0, Lcom/a/a/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/d/b;

    return-object p0
.end method

.method public static values()[Lcom/a/a/d/b;
    .registers 1

    .line 25
    sget-object v0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b;

    invoke-virtual {v0}, [Lcom/a/a/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b;

    return-object v0
.end method
