.class public final Lcom/x/plus/pro/f/d$d;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/x/plus/pro/f/d$c;

.field public d:[B

.field e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Lcom/x/plus/pro/f/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/x/plus/pro/f/d$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/f/d$c;Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/f/d$d;->b:Ljava/util/Map;

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/x/plus/pro/f/d$d;->f:I

    .line 140
    iput v0, p0, Lcom/x/plus/pro/f/d$d;->g:I

    .line 145
    iput-object p1, p0, Lcom/x/plus/pro/f/d$d;->c:Lcom/x/plus/pro/f/d$c;

    .line 146
    iput-object p2, p0, Lcom/x/plus/pro/f/d$d;->a:Ljava/lang/String;

    .line 148
    iget-object p1, p0, Lcom/x/plus/pro/f/d$d;->b:Ljava/util/Map;

    const-string p2, "Connection"

    const-string v0, "Keep-Alive"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object p0, p0, Lcom/x/plus/pro/f/d$d;->b:Ljava/util/Map;

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
