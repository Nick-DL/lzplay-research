.class final Lcom/x/plus/pro/a/b$1;
.super Ljava/lang/Object;
.source "DeviceManage.java"

# interfaces
.implements Lcom/x/plus/pro/update/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/a/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/a/b;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/x/plus/pro/a/b$1;->a:Lcom/x/plus/pro/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 140
    iget-object p0, p0, Lcom/x/plus/pro/a/b$1;->a:Lcom/x/plus/pro/a/b;

    invoke-static {p0}, Lcom/x/plus/pro/a/b;->a(Lcom/x/plus/pro/a/b;)Lcom/x/plus/pro/a/b$a;

    move-result-object p0

    const/16 v0, 0x64

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/x/plus/pro/a/b$1;->a:Lcom/x/plus/pro/a/b;

    invoke-static {p0}, Lcom/x/plus/pro/a/b;->b(Lcom/x/plus/pro/a/b;)V

    return-void
.end method
