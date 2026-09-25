.class public Lcom/x/plus/pro/b;
.super Lcom/x/plus/pro/base/a;
.source "GooglePlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/b$a;
    }
.end annotation


# static fields
.field private static final X:Ljava/lang/String; = "b"


# instance fields
.field W:Lcom/x/plus/pro/e/b;

.field private Y:Landroid/widget/Button;

.field private Z:Lcom/airbnb/lottie/LottieAnimationView;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/widget/TextView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/widget/TextView;

.field private af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

.field private ag:Landroid/content/SharedPreferences;

.field private ah:I

.field private ai:Lcom/x/plus/pro/b$a;

.field private aj:J

.field private ak:I

.field private al:J

.field private am:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/x/plus/pro/base/a;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/x/plus/pro/b;->ah:I

    const-wide/16 v1, 0x0

    .line 67
    iput-wide v1, p0, Lcom/x/plus/pro/b;->aj:J

    .line 68
    iput v0, p0, Lcom/x/plus/pro/b;->ak:I

    .line 174
    iput-wide v1, p0, Lcom/x/plus/pro/b;->al:J

    return-void
.end method

.method public static P()Lcom/x/plus/pro/b;
    .locals 1

    .line 72
    new-instance v0, Lcom/x/plus/pro/b;

    invoke-direct {v0}, Lcom/x/plus/pro/b;-><init>()V

    return-object v0
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/x/plus/pro/b;->X:Ljava/lang/String;

    return-object v0
.end method

.method private S()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/plus/pro/b;->al:J

    const/4 v0, 0x2

    .line 180
    invoke-direct {p0, v0}, Lcom/x/plus/pro/b;->c(I)V

    .line 181
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->a()V

    return-void

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->f()V

    return-void
.end method

.method private T()V
    .locals 2

    const/4 v0, 0x2

    .line 188
    invoke-direct {p0, v0}, Lcom/x/plus/pro/b;->c(I)V

    .line 189
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/plus/pro/b;->al:J

    .line 191
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    .line 3185
    iget v0, p0, Lcom/x/plus/pro/e/b;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3197
    :pswitch_0
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->d()V

    goto :goto_0

    .line 3194
    :pswitch_1
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->c()V

    return-void

    .line 3191
    :pswitch_2
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->b()V

    return-void

    .line 3187
    :pswitch_3
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->a()V

    return-void

    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private U()V
    .locals 3

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4182
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v1, :cond_0

    .line 4185
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/e;->a(Landroid/content/Intent;)V

    return-void

    .line 4183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private V()V
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/x/plus/pro/f/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/x/plus/pro/f/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/x/plus/pro/b;->Y()V

    return-void

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/x/plus/pro/b;->W()V

    return-void

    .line 516
    :cond_2
    invoke-direct {p0}, Lcom/x/plus/pro/b;->X()V

    return-void
.end method

.method private W()V
    .locals 3

    .line 521
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0028

    .line 522
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    .line 523
    new-instance v1, Lcom/x/plus/pro/b$5;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/b$5;-><init>(Lcom/x/plus/pro/b;)V

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2, v1}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 530
    new-instance v1, Lcom/x/plus/pro/b$6;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/b$6;-><init>(Lcom/x/plus/pro/b;)V

    const p0, 0x7f0c0023

    invoke-virtual {v0, p0, v1}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 536
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method

.method private X()V
    .locals 2

    .line 540
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0033

    .line 541
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    .line 542
    new-instance v1, Lcom/x/plus/pro/b$7;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/b$7;-><init>(Lcom/x/plus/pro/b;)V

    const p0, 0x7f0c0036

    invoke-virtual {v0, p0, v1}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 548
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method

.method private Y()V
    .locals 2

    .line 552
    iget v0, p0, Lcom/x/plus/pro/b;->ah:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    invoke-direct {p0}, Lcom/x/plus/pro/b;->S()V

    return-void

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/x/plus/pro/b;->U()V

    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/x/plus/pro/b;->T()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/x/plus/pro/b;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic a(Lcom/x/plus/pro/b;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/x/plus/pro/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/view/RoundCornerProgressBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    return-object p0
.end method

.method static synthetic c(Lcom/x/plus/pro/b;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    return-object p0
.end method

.method private c(I)V
    .locals 10

    .line 328
    iput p1, p0, Lcom/x/plus/pro/b;->ah:I

    const v0, 0x7f0b0015

    const v1, 0x7f0c0025

    const v2, 0x7f0c002f

    const v3, 0x7f0c002e

    const v4, 0x7f0c0034

    const v5, 0x7f0c002a

    const v6, 0x7f0b001b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 418
    :pswitch_0
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    const v0, 0x7f0c002d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 426
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 429
    iget-object p0, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 404
    :pswitch_1
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 410
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    const v0, 0x7f0c003b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 415
    iget-object p0, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p0, v8}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 383
    :pswitch_2
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    const-string v0, "com.x.plus.pro.userRegistered"

    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 395
    iget-object p0, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 398
    iget-object p0, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 369
    :pswitch_3
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    const v0, 0x7f0c0031

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    const v0, 0x7f0c0040

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 379
    iget-object p0, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p0, v8}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 359
    :pswitch_4
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v8}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object p0, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 345
    :pswitch_5
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 349
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object p0, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 331
    :pswitch_6
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 333
    iget-object p1, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object p1, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    invoke-virtual {p1, v9}, Lcom/x/plus/pro/view/RoundCornerProgressBar;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object p0, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/x/plus/pro/b;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/x/plus/pro/b;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/x/plus/pro/b;)Lcom/x/plus/pro/e/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    return-object p0
.end method

.method static synthetic g(Lcom/x/plus/pro/b;)V
    .locals 3

    .line 5435
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5438
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0029

    .line 5439
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    const v1, 0x7f0c0036

    .line 5440
    new-instance v2, Lcom/x/plus/pro/b$1;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/b$1;-><init>(Lcom/x/plus/pro/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    const v1, 0x7f0c0023

    .line 5447
    new-instance v2, Lcom/x/plus/pro/b$2;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/b$2;-><init>(Lcom/x/plus/pro/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 5457
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    const/4 v0, 0x0

    .line 5458
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5459
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/x/plus/pro/b;)Landroid/content/SharedPreferences;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic i(Lcom/x/plus/pro/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/x/plus/pro/b;->U()V

    return-void
.end method

.method static synthetic j(Lcom/x/plus/pro/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/x/plus/pro/b;->S()V

    return-void
.end method

.method static synthetic k(Lcom/x/plus/pro/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/x/plus/pro/b;->V()V

    return-void
.end method

.method static synthetic l(Lcom/x/plus/pro/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/x/plus/pro/b;->Y()V

    return-void
.end method


# virtual methods
.method public final Q()V
    .locals 5

    .line 89
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2102
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2105
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    new-instance v3, Lcom/huawei/android/app/admin/DeviceApplicationManager;

    invoke-direct {v3}, Lcom/huawei/android/app/admin/DeviceApplicationManager;-><init>()V

    .line 2112
    invoke-virtual {v3, v1}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->getPersistentApp(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2113
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2115
    :cond_0
    :try_start_0
    invoke-virtual {v3, v1, v2}, Lcom/huawei/android/app/admin/DeviceApplicationManager;->addPersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    iget-object v1, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    const-string v2, "com.x.plus.pro.userRegistered"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/e/b;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/x/plus/pro/b;->ah:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/x/plus/pro/b;->ah:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 2480
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2483
    iget-object v0, p0, Lcom/x/plus/pro/b;->am:Landroid/app/Dialog;

    if-nez v0, :cond_2

    .line 2484
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0049

    .line 2485
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    const v1, 0x7f0c0036

    .line 2486
    new-instance v2, Lcom/x/plus/pro/b$3;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/b$3;-><init>(Lcom/x/plus/pro/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    const v1, 0x7f0c0023

    .line 2493
    new-instance v2, Lcom/x/plus/pro/b$4;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/b$4;-><init>(Lcom/x/plus/pro/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 2498
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/b;->am:Landroid/app/Dialog;

    .line 2500
    :cond_2
    iget-object v0, p0, Lcom/x/plus/pro/b;->am:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2501
    iget-object p0, p0, Lcom/x/plus/pro/b;->am:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void

    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/x/plus/pro/b;->V()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0a0025

    .line 125
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0700ee

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/x/plus/pro/view/RoundCornerProgressBar;

    iput-object p2, p0, Lcom/x/plus/pro/b;->af:Lcom/x/plus/pro/view/RoundCornerProgressBar;

    const p2, 0x7f070076

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->Z:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0700e5

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    const p2, 0x7f070042

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    const p2, 0x7f0700ea

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->aa:Landroid/widget/TextView;

    const p2, 0x7f070073

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->ad:Landroid/widget/ImageView;

    const p2, 0x7f0700e9

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->ac:Landroid/widget/TextView;

    const p2, 0x7f0700e1

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/x/plus/pro/b;->ae:Landroid/widget/TextView;

    .line 134
    iget-object p2, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p2, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p2, Lcom/x/plus/pro/b$a;

    invoke-direct {p2, p0}, Lcom/x/plus/pro/b$a;-><init>(Lcom/x/plus/pro/b;)V

    iput-object p2, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    .line 140
    new-instance p2, Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    invoke-direct {p2, v1, v2}, Lcom/x/plus/pro/e/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    .line 141
    iget-object p2, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Lcom/x/plus/pro/b$a;->sendEmptyMessage(I)Z

    .line 142
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v1, "com.x.plus.pro"

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    .line 145
    iget-object p2, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    const-string v0, "gsfId"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "gsfId"

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->e()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final m()V
    .locals 5

    .line 154
    invoke-super {p0}, Lcom/x/plus/pro/base/a;->m()V

    .line 155
    iget v0, p0, Lcom/x/plus/pro/b;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    const-string v1, "com.x.plus.pro.userRegistered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    .line 3105
    iget-object v1, v0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 3106
    invoke-virtual {v0, v3}, Lcom/x/plus/pro/e/b;->a(Lcom/x/plus/pro/beans/config/ApkInfo;)I

    move-result v3

    if-eq v3, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/x/plus/pro/b;->ag:Landroid/content/SharedPreferences;

    const-string v1, "com.x.plus.pro.register_result"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 162
    invoke-direct {p0, v0}, Lcom/x/plus/pro/b;->c(I)V

    return-void

    :cond_3
    const/4 v0, 0x5

    .line 164
    invoke-direct {p0, v0}, Lcom/x/plus/pro/b;->c(I)V

    return-void

    .line 167
    :cond_4
    invoke-direct {p0, v4}, Lcom/x/plus/pro/b;->c(I)V

    return-void

    .line 170
    :cond_5
    invoke-direct {p0, v2}, Lcom/x/plus/pro/b;->c(I)V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    .line 4639
    iget-object v2, v0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {v2}, Lcom/x/plus/pro/e/c;->c()V

    .line 4640
    iget-object v2, v0, Lcom/x/plus/pro/e/b;->d:Lcom/x/plus/pro/e/b$a;

    if-eqz v2, :cond_0

    .line 4641
    iget-object v2, v0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/x/plus/pro/e/b;->d:Lcom/x/plus/pro/e/b$a;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4642
    iput-object v1, v0, Lcom/x/plus/pro/e/b;->d:Lcom/x/plus/pro/e/b$a;

    .line 4645
    :cond_0
    invoke-virtual {v0}, Lcom/x/plus/pro/e/b;->g()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 574
    iput-object v1, p0, Lcom/x/plus/pro/b;->ai:Lcom/x/plus/pro/b$a;

    .line 576
    :cond_2
    invoke-super {p0}, Lcom/x/plus/pro/base/a;->n()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/x/plus/pro/b;->Y:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p1}, Lcom/x/plus/pro/e/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->Q()V

    return-void

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->f()V

    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/x/plus/pro/b;->ab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_4

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 207
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 208
    iget-wide v0, p0, Lcom/x/plus/pro/b;->aj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/x/plus/pro/b;->aj:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/x/plus/pro/b;->ak:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3

    .line 209
    iget v0, p0, Lcom/x/plus/pro/b;->ak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/plus/pro/b;->ak:I

    .line 210
    iget v0, p0, Lcom/x/plus/pro/b;->ak:I

    if-lt v0, v1, :cond_4

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/x/plus/pro/f/g;->a(Landroid/content/Context;)V

    .line 212
    iget p1, p0, Lcom/x/plus/pro/b;->ak:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/x/plus/pro/b;->ak:I

    return-void

    .line 215
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/plus/pro/b;->aj:J

    const/4 p1, 0x0

    .line 216
    iput p1, p0, Lcom/x/plus/pro/b;->ak:I

    :cond_4
    return-void
.end method
