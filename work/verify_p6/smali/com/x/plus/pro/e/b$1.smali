.class final Lcom/x/plus/pro/e/b$1;
.super Ljava/lang/Object;
.source "InitializeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/e/b;->b(Lcom/x/plus/pro/beans/config/ApkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/beans/config/ApkInfo;

.field final synthetic b:Lcom/x/plus/pro/e/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/e/b;Lcom/x/plus/pro/beans/config/ApkInfo;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/x/plus/pro/e/b$1;->b:Lcom/x/plus/pro/e/b;

    iput-object p2, p0, Lcom/x/plus/pro/e/b$1;->a:Lcom/x/plus/pro/beans/config/ApkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    iget-object p1, p0, Lcom/x/plus/pro/e/b$1;->b:Lcom/x/plus/pro/e/b;

    invoke-static {p1}, Lcom/x/plus/pro/e/b;->b(Lcom/x/plus/pro/e/b;)Lcom/x/plus/pro/e/c;

    move-result-object p1

    iget-object p0, p0, Lcom/x/plus/pro/e/b$1;->a:Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 1058
    iget-object p0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 1169
    iget-object p2, p1, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    invoke-static {p2, p0}, Lcom/x/plus/pro/e/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1170
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.applications.InstalledAppDetailsTop"

    .line 1171
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package:"

    .line 1173
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1174
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1175
    iget-object v0, p1, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1176
    iput-object p0, p1, Lcom/x/plus/pro/e/c;->e:Ljava/lang/String;

    .line 1178
    new-instance p2, Lcom/x/plus/pro/e/c$3;

    invoke-direct {p2, p1, p0}, Lcom/x/plus/pro/e/c$3;-><init>(Lcom/x/plus/pro/e/c;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    .line 1189
    iget-object p0, p1, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    iget-object p1, p1, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1191
    :cond_0
    iget-object p2, p1, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    if-eqz p2, :cond_1

    .line 1192
    iget-object p1, p1, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    invoke-interface {p1, p0}, Lcom/x/plus/pro/e/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
