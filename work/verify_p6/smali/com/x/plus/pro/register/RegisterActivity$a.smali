.class public final Lcom/x/plus/pro/register/RegisterActivity$a;
.super Ljava/lang/Object;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/register/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/register/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final registerResult(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3ea

    if-ne p1, p0, :cond_1

    .line 291
    sput-boolean v0, Lcom/x/plus/pro/register/b;->a:Z

    .line 292
    sget-object p0, Lcom/x/plus/pro/register/d;->INSTANCE:Lcom/x/plus/pro/register/d;

    const-string p1, "https://www.google.com/android/uncertified"

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/d;->remove(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 279
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p1}, Lcom/x/plus/pro/register/RegisterActivity;->c(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "com.x.plus.pro.register_result"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    .line 1446
    iget-object p1, p1, Lcom/x/plus/pro/register/RegisterActivity;->k:Landroid/content/SharedPreferences;

    const-string v0, "com.x.plus.pro.reboot_result"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 281
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    return-void

    .line 283
    :cond_3
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    .line 284
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$a;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p0}, Lcom/x/plus/pro/register/RegisterActivity;->d(Lcom/x/plus/pro/register/RegisterActivity;)V

    return-void
.end method
