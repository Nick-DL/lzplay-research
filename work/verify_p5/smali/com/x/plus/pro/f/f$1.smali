.class public final Lcom/x/plus/pro/f/f$1;
.super Lcom/x/plus/pro/f/b$a;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/x/plus/pro/f/b$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/x/plus/pro/f/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/x/plus/pro/f/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1083
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/x/plus/pro/f/f$1;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
