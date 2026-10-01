.class final Lcom/x/plus/pro/b$a;
.super Landroid/os/Handler;
.source "GooglePlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/x/plus/pro/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/x/plus/pro/b;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/b;)V
    .registers 3

    .line 228
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/x/plus/pro/b$a;->a:I

    .line 224
    iput v0, p0, Lcom/x/plus/pro/b$a;->b:I

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/x/plus/pro/b$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/b;

    iput-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    .line 235
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    if-nez v0, :cond_f

    return-void

    .line 238
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0c0032

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_152

    :pswitch_1a
    goto/16 :goto_151

    :pswitch_1c
    const/16 p1, 0x32

    .line 317
    iput p1, p0, Lcom/x/plus/pro/b$a;->a:I

    goto/16 :goto_151

    .line 314
    :pswitch_22
    iput v3, p0, Lcom/x/plus/pro/b$a;->a:I

    return-void

    .line 285
    :pswitch_25
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->e(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->a(Lcom/x/plus/pro/b;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->b(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/view/RoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->c(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->b(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/view/RoundCornerProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/x/plus/pro/b$a;->a:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setProgress(F)V

    .line 290
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->c(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/x/plus/pro/b$a;->a:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object p0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p0}, Lcom/x/plus/pro/b;->d(Lcom/x/plus/pro/b;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 308
    :pswitch_81
    iget-object p1, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p1}, Lcom/x/plus/pro/b;->h(Lcom/x/plus/pro/b;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.x.plus.pro.userRegistered"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    iget-object p1, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p1}, Lcom/x/plus/pro/b;->e(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0c003b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object p1, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/x/plus/pro/b;->a(Lcom/x/plus/pro/b;I)V

    .line 311
    iget-object p0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p0}, Lcom/x/plus/pro/b;->i(Lcom/x/plus/pro/b;)V

    return-void

    :pswitch_ad
    return-void

    .line 298
    :pswitch_ae
    iget v0, p0, Lcom/x/plus/pro/b$a;->a:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/x/plus/pro/b$a;->a:I

    return-void

    .line 278
    :pswitch_b6
    iget v0, p0, Lcom/x/plus/pro/b$a;->a:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/x/plus/pro/b$a;->a:I

    return-void

    .line 266
    :pswitch_be
    iget-object p1, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p1}, Lcom/x/plus/pro/b;->f(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/e/b;

    move-result-object p1

    .line 1590
    iget p1, p1, Lcom/x/plus/pro/e/b;->e:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_d5

    .line 267
    iget-object p1, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/x/plus/pro/b;->a(Lcom/x/plus/pro/b;I)V

    .line 268
    iget-object p0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p0}, Lcom/x/plus/pro/b;->g(Lcom/x/plus/pro/b;)V

    return-void

    .line 270
    :cond_d5
    iget-object p0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {p0, v0}, Lcom/x/plus/pro/b;->a(Lcom/x/plus/pro/b;I)V

    return-void

    .line 252
    :pswitch_db
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->a(Lcom/x/plus/pro/b;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->b(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/view/RoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->c(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->d(Lcom/x/plus/pro/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->e(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->b(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/view/RoundCornerProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/x/plus/pro/b$a;->a:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setProgress(F)V

    .line 258
    iget-object v0, p0, Lcom/x/plus/pro/b$a;->d:Lcom/x/plus/pro/b;

    invoke-static {v0}, Lcom/x/plus/pro/b;->c(Lcom/x/plus/pro/b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/x/plus/pro/b$a;->a:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {}, Lcom/x/plus/pro/b;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/x/plus/pro/b$a;->a:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/x/plus/pro/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_151
    return-void

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_db
        :pswitch_be
        :pswitch_be
        :pswitch_b6
        :pswitch_be
        :pswitch_ae
        :pswitch_be
        :pswitch_ad
        :pswitch_81
        :pswitch_25
        :pswitch_1a
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method
