.class final Lcom/x/plus/pro/f/d$f$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/f/d$f;->a(Lcom/x/plus/pro/f/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/f/d$d;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/f/d$d;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/x/plus/pro/f/d$f$1;->a:Lcom/x/plus/pro/f/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/x/plus/pro/f/d$f$1;->a:Lcom/x/plus/pro/f/d$d;

    invoke-static {p0}, Lcom/x/plus/pro/f/d$f;->b(Lcom/x/plus/pro/f/d$d;)Lcom/x/plus/pro/f/d$e;

    return-void
.end method
