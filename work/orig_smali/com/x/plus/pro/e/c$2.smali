.class final Lcom/x/plus/pro/e/c$2;
.super Ljava/lang/Object;
.source "InstallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/e/c;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/x/plus/pro/e/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/e/c;Ljava/lang/String;)V
    .registers 3

    .line 149
    iput-object p1, p0, Lcom/x/plus/pro/e/c$2;->b:Lcom/x/plus/pro/e/c;

    iput-object p2, p0, Lcom/x/plus/pro/e/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/x/plus/pro/e/c$2;->b:Lcom/x/plus/pro/e/c;

    invoke-static {v0}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    iget-object v0, p0, Lcom/x/plus/pro/e/c$2;->b:Lcom/x/plus/pro/e/c;

    invoke-static {v0}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object v0

    iget-object p0, p0, Lcom/x/plus/pro/e/c$2;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/e/a;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
