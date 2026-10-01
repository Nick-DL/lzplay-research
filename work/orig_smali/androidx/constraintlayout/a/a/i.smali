.class public final Landroidx/constraintlayout/a/a/i;
.super Landroidx/constraintlayout/a/a/f;
.source "Guideline.java"


# instance fields
.field protected a:F

.field protected ar:I

.field private as:Landroidx/constraintlayout/a/a/e;

.field private at:I

.field private au:Z

.field private av:I

.field private aw:Landroidx/constraintlayout/a/a/l;

.field private ax:I

.field protected b:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 50
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    .line 40
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->at:I

    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/i;->au:Z

    .line 45
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->av:I

    .line 47
    new-instance v1, Landroidx/constraintlayout/a/a/l;

    invoke-direct {v1}, Landroidx/constraintlayout/a/a/l;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/a/a/i;->aw:Landroidx/constraintlayout/a/a/l;

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/a/a/i;->ax:I

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->E:[Landroidx/constraintlayout/a/a/e;

    array-length v1, v1

    :goto_31
    if-ge v0, v1, :cond_3c

    .line 55
    iget-object v2, p0, Landroidx/constraintlayout/a/a/i;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3c
    return-void
.end method


# virtual methods
.method public final A()V
    .registers 5

    .line 35555
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-nez v0, :cond_5

    return-void

    .line 292
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-static {v0}, Landroidx/constraintlayout/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    .line 293
    iget v1, p0, Landroidx/constraintlayout/a/a/i;->at:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    .line 294
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/i;->c(I)V

    .line 295
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/a/a/i;->d(I)V

    .line 36555
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 296
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/i;->f(I)V

    .line 297
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/a/a/i;->e(I)V

    return-void

    .line 299
    :cond_24
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/a/a/i;->c(I)V

    .line 300
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/i;->d(I)V

    .line 37555
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 301
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/i;->e(I)V

    .line 302
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/a/a/i;->f(I)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;
    .registers 4

    .line 137
    sget-object v0, Landroidx/constraintlayout/a/a/i$1;->a:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_c
    const/4 p0, 0x0

    return-object p0

    .line 147
    :pswitch_e
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->at:I

    if-nez v0, :cond_1d

    .line 148
    iget-object p0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 140
    :pswitch_15
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->at:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 141
    iget-object p0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 159
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e$c;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final a(F)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 173
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->a:F

    const/4 p1, -0x1

    .line 174
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->b:I

    .line 175
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    :cond_d
    return-void
.end method

.method public final a(I)V
    .registers 7

    .line 1555
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-nez p1, :cond_5

    return-void

    .line 2121
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->at:I

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_90

    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    .line 3058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 218
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 4058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 218
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 219
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->z:Landroidx/constraintlayout/a/a/e;

    .line 5058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 219
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 6058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 219
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 220
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    if-eq v0, v3, :cond_43

    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->w:Landroidx/constraintlayout/a/a/e;

    .line 7058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 221
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 8058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 221
    iget v2, p0, Landroidx/constraintlayout/a/a/i;->b:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 222
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->y:Landroidx/constraintlayout/a/a/e;

    .line 9058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 222
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 10058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 222
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 223
    :cond_43
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    if-eq v0, v3, :cond_64

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->w:Landroidx/constraintlayout/a/a/e;

    .line 11058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 224
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 12058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 224
    iget v2, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->y:Landroidx/constraintlayout/a/a/e;

    .line 13058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 225
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 14058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 225
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    neg-int p0, p0

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 226
    :cond_64
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_111

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v0

    sget v1, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v0, v1, :cond_111

    .line 227
    iget v0, p1, Landroidx/constraintlayout/a/a/f;->I:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/i;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->w:Landroidx/constraintlayout/a/a/e;

    .line 15058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 228
    iget-object v2, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 16058
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 228
    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 229
    iget-object p0, p0, Landroidx/constraintlayout/a/a/i;->y:Landroidx/constraintlayout/a/a/e;

    .line 17058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 229
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 18058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 229
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 232
    :cond_90
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->w:Landroidx/constraintlayout/a/a/e;

    .line 19058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 232
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 20058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 232
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->y:Landroidx/constraintlayout/a/a/e;

    .line 21058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 233
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 22058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 233
    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 234
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    if-eq v0, v3, :cond_c5

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    .line 23058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 235
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 24058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 235
    iget v2, p0, Landroidx/constraintlayout/a/a/i;->b:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->z:Landroidx/constraintlayout/a/a/e;

    .line 25058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 236
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 26058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 236
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 237
    :cond_c5
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    if-eq v0, v3, :cond_e6

    .line 238
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    .line 27058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 238
    iget-object v1, p1, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 28058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 238
    iget v2, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->z:Landroidx/constraintlayout/a/a/e;

    .line 29058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 239
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 30058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 239
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    neg-int p0, p0

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 240
    :cond_e6
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_111

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v0

    sget v1, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v0, v1, :cond_111

    .line 241
    iget v0, p1, Landroidx/constraintlayout/a/a/f;->J:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/i;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 242
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    .line 31058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 242
    iget-object v2, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 32058
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 242
    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    .line 243
    iget-object p0, p0, Landroidx/constraintlayout/a/a/i;->z:Landroidx/constraintlayout/a/a/e;

    .line 33058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 243
    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 34058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 243
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    :cond_111
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/e;)V
    .registers 11

    .line 34555
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 250
    check-cast v0, Landroidx/constraintlayout/a/a/g;

    if-nez v0, :cond_7

    return-void

    .line 254
    :cond_7
    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v1

    .line 255
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    .line 256
    iget-object v3, p0, Landroidx/constraintlayout/a/a/i;->H:Landroidx/constraintlayout/a/a/f;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroidx/constraintlayout/a/a/i;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v3, v3, v5

    sget v6, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v3, v6, :cond_25

    move v3, v4

    goto :goto_26

    :cond_25
    move v3, v5

    .line 257
    :goto_26
    iget v6, p0, Landroidx/constraintlayout/a/a/i;->at:I

    if-nez v6, :cond_47

    .line 258
    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v1

    .line 259
    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v4

    sget v3, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v3, :cond_46

    move v3, v4

    goto :goto_47

    :cond_46
    move v3, v5

    .line 262
    :cond_47
    :goto_47
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_67

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v1

    .line 265
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    invoke-virtual {p1, v0, v1, p0, v4}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-eqz v3, :cond_66

    .line 267
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v5, v7}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_66
    return-void

    .line 269
    :cond_67
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    if-eq v0, v6, :cond_88

    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    .line 272
    iget p0, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    neg-int p0, p0

    invoke-virtual {p1, v0, v2, p0, v4}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-eqz v3, :cond_87

    .line 274
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v5, v7}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 275
    invoke-virtual {p1, v2, v0, v5, v7}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_87
    return-void

    .line 277
    :cond_88
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_aa

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v6

    .line 281
    iget v7, p0, Landroidx/constraintlayout/a/a/i;->a:F

    iget-boolean v8, p0, Landroidx/constraintlayout/a/a/i;->au:Z

    move-object v3, p1

    .line 282
    invoke-static/range {v3 .. v8}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/e;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;FZ)Landroidx/constraintlayout/a/b;

    move-result-object p0

    .line 281
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    :cond_aa
    return-void
.end method

.method public final a()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final l(I)V
    .registers 5

    .line 89
    iget v0, p0, Landroidx/constraintlayout/a/a/i;->at:I

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->at:I

    .line 93
    iget-object p1, p0, Landroidx/constraintlayout/a/a/i;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget p1, p0, Landroidx/constraintlayout/a/a/i;->at:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/a/a/i;->w:Landroidx/constraintlayout/a/a/e;

    iput-object p1, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    goto :goto_1a

    .line 97
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/a/a/i;->x:Landroidx/constraintlayout/a/a/e;

    iput-object p1, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    .line 99
    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/a/a/i;->F:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Landroidx/constraintlayout/a/a/i;->E:[Landroidx/constraintlayout/a/a/e;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p1, :cond_30

    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/a/a/i;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/i;->as:Landroidx/constraintlayout/a/a/e;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public final m(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    .line 181
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    .line 182
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->b:I

    const/4 p1, -0x1

    .line 183
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    :cond_b
    return-void
.end method

.method public final n(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    .line 189
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->a:F

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Landroidx/constraintlayout/a/a/i;->b:I

    .line 191
    iput p1, p0, Landroidx/constraintlayout/a/a/i;->ar:I

    :cond_b
    return-void
.end method

.method public final v()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Landroidx/constraintlayout/a/a/i;->F:Ljava/util/ArrayList;

    return-object p0
.end method
