.class final Lcom/x/plus/pro/beans/config/ApkInfo$2;
.super Ljava/lang/Object;
.source "ApkInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/beans/config/ApkInfo;->a(Landroid/content/Context;Lcom/x/plus/pro/beans/config/ApkInfo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/x/plus/pro/beans/config/ApkInfo;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/beans/config/ApkInfo;Landroid/content/Context;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/x/plus/pro/beans/config/ApkInfo$2;->b:Lcom/x/plus/pro/beans/config/ApkInfo;

    iput-object p2, p0, Lcom/x/plus/pro/beans/config/ApkInfo$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/x/plus/pro/beans/config/ApkInfo$2;->b:Lcom/x/plus/pro/beans/config/ApkInfo;

    iget-object p0, p0, Lcom/x/plus/pro/beans/config/ApkInfo$2;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/x/plus/pro/beans/config/ApkInfo;->a(Lcom/x/plus/pro/beans/config/ApkInfo;Landroid/content/Context;)V

    return-void
.end method
