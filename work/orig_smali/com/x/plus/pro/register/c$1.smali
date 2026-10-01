.class final Lcom/x/plus/pro/register/c$1;
.super Ljava/lang/Object;
.source "RegisterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/register/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/register/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/c;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/x/plus/pro/f/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 91
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    iget-object v1, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v1}, Lcom/x/plus/pro/register/c;->b(Lcom/x/plus/pro/register/c;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gsfId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/x/plus/pro/register/c;->a(Lcom/x/plus/pro/register/c;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->a(Lcom/x/plus/pro/register/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 93
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.x.idhelper"

    invoke-static {v0, v1}, Lcom/x/plus/pro/e/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v1}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "idhelper.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z

    .line 95
    iget-object p0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->f(Lcom/x/plus/pro/register/c;)V

    return-void

    .line 96
    :cond_62
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "idhelper.apk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    .line 97
    invoke-static {v3}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "idhelper.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "6260FABB849F0DD28AD7B053782FD570E30E1056D192EB3906175280D28CB466"

    iget-object v1, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    .line 98
    invoke-static {v1}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    .line 99
    invoke-static {v3}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "idhelper.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Lcom/x/plus/pro/f/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 100
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->c(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/e/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "idhelper.apk"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/x/plus/pro/e/c;->a(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_ec
    iget-object p0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->d(Lcom/x/plus/pro/register/c;)V

    return-void

    .line 105
    :cond_f2
    iget-object v0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->c(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/e/c;

    move-result-object v0

    const-string v1, "com.x.idhelper"

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/e/c;->b(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->d(Lcom/x/plus/pro/register/c;)V

    return-void

    .line 110
    :cond_103
    iget-object p0, p0, Lcom/x/plus/pro/register/c$1;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->g(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/register/c$a;

    move-result-object p0

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/x/plus/pro/register/c$a;->a(I)V

    return-void
.end method
