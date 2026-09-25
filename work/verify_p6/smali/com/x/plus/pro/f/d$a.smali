.class public final Lcom/x/plus/pro/f/d$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/x/plus/pro/f/d$d;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/f/d$c;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/x/plus/pro/f/d$d;

    invoke-direct {v0, p1, p2}, Lcom/x/plus/pro/f/d$d;-><init>(Lcom/x/plus/pro/f/d$c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    return-void
.end method
