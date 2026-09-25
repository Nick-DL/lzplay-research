.class final Lcom/x/plus/pro/register/RegisterActivity$6;
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

    .line 373
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$6;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x1

    .line 381
    sput-boolean v0, Lcom/x/plus/pro/register/b;->a:Z

    .line 382
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$6;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p0}, Lcom/x/plus/pro/register/RegisterActivity;->f(Lcom/x/plus/pro/register/RegisterActivity;)V

    return-void
.end method
