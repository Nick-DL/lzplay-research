.class public final Landroidx/constraintlayout/a/a/b;
.super Landroidx/constraintlayout/a/a/j;
.source "Barrier.java"


# instance fields
.field public a:I

.field private at:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/j;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    .line 65
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    if-nez p1, :cond_5

    return-void

    .line 68
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    check-cast p1, Landroidx/constraintlayout/a/a/g;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 73
    :cond_11
    iget p1, p0, Landroidx/constraintlayout/a/a/b;->a:I

    packed-switch p1, :pswitch_data_96

    return-void

    .line 84
    :pswitch_17
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    .line 5058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_2a

    .line 81
    :pswitch_1c
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    .line 4058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_2a

    .line 78
    :pswitch_21
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    .line 3058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_2a

    .line 75
    :pswitch_26
    iget-object p1, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    .line 2058
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    :goto_2a
    const/4 v0, 0x5

    .line 5224
    iput v0, p1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 91
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_39

    goto :goto_48

    .line 95
    :cond_39
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    .line 8058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 95
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    .line 9058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 96
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    goto :goto_56

    .line 92
    :cond_48
    :goto_48
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    .line 6058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 92
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    .line 7058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 93
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 99
    :goto_56
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 100
    :goto_5c
    iget v1, p0, Landroidx/constraintlayout/a/a/b;->as:I

    if-ge v0, v1, :cond_95

    .line 101
    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->ar:[Landroidx/constraintlayout/a/a/f;

    aget-object v1, v1, v0

    .line 102
    iget-boolean v3, p0, Landroidx/constraintlayout/a/a/b;->b:Z

    if-nez v3, :cond_6e

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->a()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 106
    :cond_6e
    iget v3, p0, Landroidx/constraintlayout/a/a/b;->a:I

    packed-switch v3, :pswitch_data_a2

    move-object v1, v2

    goto :goto_88

    .line 117
    :pswitch_75
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 13058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_88

    .line 114
    :pswitch_7a
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 12058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_88

    .line 111
    :pswitch_7f
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 11058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_88

    .line 108
    :pswitch_84
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 10058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    :goto_88
    if-eqz v1, :cond_92

    .line 121
    iget-object v3, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/o;)V

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_95
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_84
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
    .end packed-switch
.end method

.method public final a(Landroidx/constraintlayout/a/e;)V
    .registers 14

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    move v0, v2

    .line 213
    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 214
    iget-object v1, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v6

    iput-object v6, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 216
    :cond_33
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ltz v0, :cond_18b

    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_18b

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->E:[Landroidx/constraintlayout/a/a/e;

    iget v1, p0, Landroidx/constraintlayout/a/a/b;->a:I

    aget-object v0, v0, v1

    move v1, v2

    .line 224
    :goto_43
    iget v6, p0, Landroidx/constraintlayout/a/a/b;->as:I

    if-ge v1, v6, :cond_7b

    .line 225
    iget-object v6, p0, Landroidx/constraintlayout/a/a/b;->ar:[Landroidx/constraintlayout/a/a/f;

    aget-object v6, v6, v1

    .line 226
    iget-boolean v7, p0, Landroidx/constraintlayout/a/a/b;->b:Z

    if-nez v7, :cond_55

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->a()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 229
    :cond_55
    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-eqz v7, :cond_5d

    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v7, v4, :cond_67

    .line 230
    :cond_5d
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v7

    sget v8, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v7, v8, :cond_67

    :goto_65
    move v1, v4

    goto :goto_7c

    .line 233
    :cond_67
    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-eq v7, v3, :cond_6f

    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v7, v5, :cond_78

    .line 234
    :cond_6f
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v6

    sget v7, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v6, v7, :cond_78

    goto :goto_65

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_7b
    move v1, v2

    .line 239
    :goto_7c
    iget v6, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-eqz v6, :cond_90

    iget v6, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v6, v4, :cond_85

    goto :goto_90

    .line 22555
    :cond_85
    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 244
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v6

    sget v7, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v6, v7, :cond_9b

    goto :goto_9a

    .line 21555
    :cond_90
    :goto_90
    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 240
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v6

    sget v7, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v6, v7, :cond_9b

    :goto_9a
    move v1, v2

    :cond_9b
    move v6, v2

    .line 248
    :goto_9c
    iget v7, p0, Landroidx/constraintlayout/a/a/b;->as:I

    if-ge v6, v7, :cond_10d

    .line 249
    iget-object v7, p0, Landroidx/constraintlayout/a/a/b;->ar:[Landroidx/constraintlayout/a/a/f;

    aget-object v7, v7, v6

    .line 250
    iget-boolean v8, p0, Landroidx/constraintlayout/a/a/b;->b:Z

    if-nez v8, :cond_ae

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/f;->a()Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 253
    :cond_ae
    iget-object v8, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    iget v9, p0, Landroidx/constraintlayout/a/a/b;->a:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v8

    .line 254
    iget-object v7, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    iget v9, p0, Landroidx/constraintlayout/a/a/b;->a:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 255
    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v7, :cond_eb

    iget v7, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v7, v3, :cond_cb

    goto :goto_eb

    .line 258
    :cond_cb
    iget-object v7, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 24029
    invoke-virtual {p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v10

    .line 24030
    invoke-virtual {p1}, Landroidx/constraintlayout/a/e;->d()Landroidx/constraintlayout/a/h;

    move-result-object v11

    .line 24031
    iput v2, v11, Landroidx/constraintlayout/a/h;->c:I

    .line 24032
    invoke-virtual {v10, v7, v8, v11, v2}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    if-eqz v1, :cond_e7

    .line 24035
    iget-object v7, v10, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 24036
    invoke-virtual {p1, v10, v7, v4}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;II)V

    .line 24038
    :cond_e7
    invoke-virtual {p1, v10}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    goto :goto_10a

    .line 256
    :cond_eb
    :goto_eb
    iget-object v7, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 23067
    invoke-virtual {p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v10

    .line 23068
    invoke-virtual {p1}, Landroidx/constraintlayout/a/e;->d()Landroidx/constraintlayout/a/h;

    move-result-object v11

    .line 23069
    iput v2, v11, Landroidx/constraintlayout/a/h;->c:I

    .line 23070
    invoke-virtual {v10, v7, v8, v11, v2}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    if-eqz v1, :cond_107

    .line 23073
    iget-object v7, v10, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 23074
    invoke-virtual {p1, v10, v7, v4}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;II)V

    .line 23076
    :cond_107
    invoke-virtual {p1, v10}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    :cond_10a
    :goto_10a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 262
    :cond_10d
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_12e

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-nez v1, :cond_18a

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, p0, v2, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    .line 267
    :cond_12e
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v0, v4, :cond_14d

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-nez v1, :cond_18a

    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, p0, v2, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    .line 272
    :cond_14d
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v0, v3, :cond_16c

    .line 273
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-nez v1, :cond_18a

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, p0, v2, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    return-void

    .line 277
    :cond_16c
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-ne v0, v5, :cond_18a

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-nez v1, :cond_18a

    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->H:Landroidx/constraintlayout/a/a/f;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v0, p0, v2, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_18a
    return-void

    :cond_18b
    return-void
.end method

.method public final a()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .registers 1

    .line 55
    invoke-super {p0}, Landroidx/constraintlayout/a/a/j;->b()V

    .line 56
    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c()V
    .registers 9

    .line 134
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_96

    return-void

    .line 147
    :pswitch_a
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    .line 17058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_18

    .line 143
    :pswitch_f
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    .line 16058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    goto :goto_1e

    .line 140
    :pswitch_14
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    .line 15058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    :goto_18
    move v1, v2

    goto :goto_1e

    .line 136
    :pswitch_1a
    iget-object v0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    .line 14058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 153
    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_58

    .line 156
    iget-object v5, p0, Landroidx/constraintlayout/a/a/b;->at:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/a/a/m;

    .line 157
    iget v6, v5, Landroidx/constraintlayout/a/a/m;->i:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_36

    return-void

    .line 160
    :cond_36
    iget v6, p0, Landroidx/constraintlayout/a/a/b;->a:I

    if-eqz v6, :cond_4b

    iget v6, p0, Landroidx/constraintlayout/a/a/b;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_40

    goto :goto_4b

    .line 166
    :cond_40
    iget v6, v5, Landroidx/constraintlayout/a/a/m;->f:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_55

    .line 167
    iget v1, v5, Landroidx/constraintlayout/a/a/m;->f:F

    .line 168
    iget-object v3, v5, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    goto :goto_55

    .line 161
    :cond_4b
    :goto_4b
    iget v6, v5, Landroidx/constraintlayout/a/a/m;->f:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_55

    .line 162
    iget v1, v5, Landroidx/constraintlayout/a/a/m;->f:F

    .line 163
    iget-object v3, v5, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 173
    :cond_58
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 174
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v2

    iget-wide v4, v2, Landroidx/constraintlayout/a/f;->z:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/constraintlayout/a/f;->z:J

    .line 180
    :cond_69
    iput-object v3, v0, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    .line 181
    iput v1, v0, Landroidx/constraintlayout/a/a/m;->f:F

    .line 182
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/m;->d()V

    .line 183
    iget v0, p0, Landroidx/constraintlayout/a/a/b;->a:I

    packed-switch v0, :pswitch_data_a2

    return-void

    .line 194
    :pswitch_76
    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->x:Landroidx/constraintlayout/a/a/e;

    .line 21058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 194
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    return-void

    .line 191
    :pswitch_7e
    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->z:Landroidx/constraintlayout/a/a/e;

    .line 20058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 191
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    return-void

    .line 188
    :pswitch_86
    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->w:Landroidx/constraintlayout/a/a/e;

    .line 19058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 188
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    return-void

    .line 185
    :pswitch_8e
    iget-object p0, p0, Landroidx/constraintlayout/a/a/b;->y:Landroidx/constraintlayout/a/a/e;

    .line 18058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 185
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_86
        :pswitch_7e
        :pswitch_76
    .end packed-switch
.end method
