.class public final Lcom/x/plus/pro/f/d$e;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:[B

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcom/x/plus/pro/f/d$e;->a:I

    .line 221
    iput-object p1, p0, Lcom/x/plus/pro/f/d$e;->c:Ljava/util/Map;

    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/x/plus/pro/f/d$e;->b:[B

    .line 223
    iput-object p1, p0, Lcom/x/plus/pro/f/d$e;->d:Ljava/lang/Throwable;

    return-void
.end method
