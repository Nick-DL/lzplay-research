.class final Lcom/x/plus/pro/register/RegisterActivity$5;
.super Ljava/util/TimerTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/register/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$5;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$5;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p0}, Lcom/x/plus/pro/register/RegisterActivity;->f(Lcom/x/plus/pro/register/RegisterActivity;)V

    return-void
.end method
