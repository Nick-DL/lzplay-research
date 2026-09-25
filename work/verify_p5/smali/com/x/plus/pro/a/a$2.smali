.class public final Lcom/x/plus/pro/a/a$2;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Lcom/x/plus/pro/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/x/plus/pro/a/a;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/a/a;)V
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/x/plus/pro/a/a$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 1025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 2025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 106
    invoke-virtual {v0}, Lcom/x/plus/pro/SplashActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0c001e

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object p0, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 8174
    new-instance p1, Lcom/x/plus/pro/view/a$a;

    iget-object v0, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-direct {p1, v0}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c002b

    .line 8175
    invoke-virtual {p1, v0}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    move-result-object v0

    const v2, 0x7f0c0036

    new-instance v3, Lcom/x/plus/pro/a/a$6;

    invoke-direct {v3, p0}, Lcom/x/plus/pro/a/a$6;-><init>(Lcom/x/plus/pro/a/a;)V

    invoke-virtual {v0, v2, v3}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 8184
    invoke-virtual {p1}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    .line 8185
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8186
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    .line 119
    :pswitch_1
    iget-object p0, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 7155
    new-instance p1, Lcom/x/plus/pro/view/a$a;

    iget-object v2, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-direct {p1, v2}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0030

    .line 7156
    invoke-virtual {p1, v2}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    move-result-object v2

    new-instance v3, Lcom/x/plus/pro/a/a$5;

    invoke-direct {v3, p0}, Lcom/x/plus/pro/a/a$5;-><init>(Lcom/x/plus/pro/a/a;)V

    invoke-virtual {v2, v0, v3}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 7165
    invoke-virtual {p1}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    .line 7166
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7167
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 116
    :pswitch_2
    iget-object p0, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 6133
    new-instance p1, Lcom/x/plus/pro/view/a$a;

    iget-object v2, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-direct {p1, v2}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c003c

    .line 6134
    invoke-virtual {p1, v2}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    move-result-object v2

    const v3, 0x7f0c0040

    new-instance v4, Lcom/x/plus/pro/a/a$4;

    invoke-direct {v4, p0}, Lcom/x/plus/pro/a/a$4;-><init>(Lcom/x/plus/pro/a/a;)V

    .line 6135
    invoke-virtual {v2, v3, v4}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    move-result-object v2

    new-instance v3, Lcom/x/plus/pro/a/a$3;

    invoke-direct {v3, p0}, Lcom/x/plus/pro/a/a$3;-><init>(Lcom/x/plus/pro/a/a;)V

    .line 6141
    invoke-virtual {v2, v0, v3}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 6149
    invoke-virtual {p1}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    .line 6150
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6151
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    new-instance v0, Lcom/x/plus/pro/a/a$a;

    iget-object v2, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 3025
    iget-object v2, v2, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 111
    invoke-direct {v0, v2, v1}, Lcom/x/plus/pro/a/a$a;-><init>(Lcom/x/plus/pro/SplashActivity;B)V

    .line 4025
    iput-object v0, p1, Lcom/x/plus/pro/a/a;->c:Lcom/x/plus/pro/a/a$a;

    .line 113
    iget-object p1, p0, Lcom/x/plus/pro/a/a$2;->b:Lcom/x/plus/pro/a/a;

    .line 5025
    iget-object p1, p1, Lcom/x/plus/pro/a/a;->c:Lcom/x/plus/pro/a/a$a;

    const/4 v0, 0x1

    .line 113
    iget-wide v1, p0, Lcom/x/plus/pro/a/a$2;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/x/plus/pro/a/a$a;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
