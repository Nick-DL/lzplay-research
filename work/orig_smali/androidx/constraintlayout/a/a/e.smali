.class public final Landroidx/constraintlayout/a/a/e;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/e$a;,
        Landroidx/constraintlayout/a/a/e$b;,
        Landroidx/constraintlayout/a/a/e$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/a/a/m;

.field final b:Landroidx/constraintlayout/a/a/f;

.field final c:Landroidx/constraintlayout/a/a/e$c;

.field public d:Landroidx/constraintlayout/a/a/e;

.field public e:I

.field f:I

.field g:I

.field h:I

.field public i:Landroidx/constraintlayout/a/h;

.field private j:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/constraintlayout/a/a/m;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/m;-><init>(Landroidx/constraintlayout/a/a/e;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->e:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Landroidx/constraintlayout/a/a/e;->f:I

    .line 76
    sget v1, Landroidx/constraintlayout/a/a/e$b;->NONE$4f4a4916:I

    iput v1, p0, Landroidx/constraintlayout/a/a/e;->g:I

    .line 77
    sget v1, Landroidx/constraintlayout/a/a/e$a;->RELAXED$3f5d9801:I

    iput v1, p0, Landroidx/constraintlayout/a/a/e;->j:I

    .line 78
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->h:I

    .line 87
    iput-object p1, p0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 88
    iput-object p2, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_e

    .line 102
    new-instance v0, Landroidx/constraintlayout/a/h;

    sget v1, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/h;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    return-void

    .line 104
    :cond_e
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/h;->b()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;IIIIZ)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 212
    iput v1, p0, Landroidx/constraintlayout/a/a/e;->e:I

    const/4 p1, -0x1

    .line 213
    iput p1, p0, Landroidx/constraintlayout/a/a/e;->f:I

    .line 214
    sget p1, Landroidx/constraintlayout/a/a/e$b;->NONE$4f4a4916:I

    iput p1, p0, Landroidx/constraintlayout/a/a/e;->g:I

    const/4 p1, 0x2

    .line 215
    iput p1, p0, Landroidx/constraintlayout/a/a/e;->h:I

    return v0

    :cond_14
    if-nez p6, :cond_98

    if-nez p1, :cond_1b

    :cond_18
    :goto_18
    :pswitch_18
    move p6, v1

    goto/16 :goto_95

    .line 4118
    :cond_1b
    iget-object p6, p1, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    .line 3272
    iget-object v2, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_3b

    .line 3273
    iget-object p6, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_38

    .line 5112
    iget-object p6, p1, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 3274
    invoke-virtual {p6}, Landroidx/constraintlayout/a/a/f;->u()Z

    move-result p6

    if-eqz p6, :cond_18

    .line 6112
    iget-object p6, p0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 3274
    invoke-virtual {p6}, Landroidx/constraintlayout/a/a/f;->u()Z

    move-result p6

    if-nez p6, :cond_38

    goto :goto_18

    :cond_38
    :goto_38
    move p6, v0

    goto/16 :goto_95

    .line 3279
    :cond_3b
    sget-object v2, Landroidx/constraintlayout/a/a/e$1;->a:[I

    iget-object v3, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    .line 3307
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e$c;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3295
    :pswitch_54
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    if-eq p6, v2, :cond_5f

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_5d

    goto :goto_5f

    :cond_5d
    move v2, v1

    goto :goto_60

    :cond_5f
    :goto_5f
    move v2, v0

    .line 8112
    :goto_60
    iget-object v3, p1, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 3296
    instance-of v3, v3, Landroidx/constraintlayout/a/a/i;

    if-eqz v3, :cond_6d

    if-nez v2, :cond_38

    .line 3297
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->CENTER_Y:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_18

    goto :goto_38

    :cond_6d
    move p6, v2

    goto :goto_95

    .line 3287
    :pswitch_6f
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    if-eq p6, v2, :cond_7a

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_78

    goto :goto_7a

    :cond_78
    move v2, v1

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v2, v0

    .line 7112
    :goto_7b
    iget-object v3, p1, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 3288
    instance-of v3, v3, Landroidx/constraintlayout/a/a/i;

    if-eqz v3, :cond_6d

    if-nez v2, :cond_38

    .line 3289
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->CENTER_X:Landroidx/constraintlayout/a/a/e$c;

    if-ne p6, v2, :cond_18

    goto :goto_38

    .line 3282
    :pswitch_88
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    if-eq p6, v2, :cond_18

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->CENTER_X:Landroidx/constraintlayout/a/a/e$c;

    if-eq p6, v2, :cond_18

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->CENTER_Y:Landroidx/constraintlayout/a/a/e$c;

    if-eq p6, v2, :cond_18

    goto :goto_38

    :goto_95
    if-nez p6, :cond_98

    return v1

    .line 221
    :cond_98
    iput-object p1, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-lez p2, :cond_9f

    .line 223
    iput p2, p0, Landroidx/constraintlayout/a/a/e;->e:I

    goto :goto_a1

    .line 225
    :cond_9f
    iput v1, p0, Landroidx/constraintlayout/a/a/e;->e:I

    .line 227
    :goto_a1
    iput p3, p0, Landroidx/constraintlayout/a/a/e;->f:I

    .line 228
    iput p4, p0, Landroidx/constraintlayout/a/a/e;->g:I

    .line 229
    iput p5, p0, Landroidx/constraintlayout/a/a/e;->h:I

    return v0

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_88
        :pswitch_6f
        :pswitch_6f
        :pswitch_54
        :pswitch_54
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public final b()I
    .registers 3

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 1643
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->f:I

    if-ltz v0, :cond_1d

    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 2643
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    if-ne v0, v1, :cond_1d

    .line 130
    iget p0, p0, Landroidx/constraintlayout/a/a/e;->f:I

    return p0

    .line 132
    :cond_1d
    iget p0, p0, Landroidx/constraintlayout/a/a/e;->e:I

    return p0
.end method

.method public final c()V
    .registers 3

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->e:I

    const/4 v1, -0x1

    .line 177
    iput v1, p0, Landroidx/constraintlayout/a/a/e;->f:I

    .line 178
    sget v1, Landroidx/constraintlayout/a/a/e$b;->STRONG$4f4a4916:I

    iput v1, p0, Landroidx/constraintlayout/a/a/e;->g:I

    .line 179
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->h:I

    .line 180
    sget v0, Landroidx/constraintlayout/a/a/e$a;->RELAXED$3f5d9801:I

    iput v0, p0, Landroidx/constraintlayout/a/a/e;->j:I

    .line 181
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/m;->b()V

    return-void
.end method

.method public final d()Z
    .registers 1

    .line 259
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 8652
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e$c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
