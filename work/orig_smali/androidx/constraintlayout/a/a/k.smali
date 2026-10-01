.class public final Landroidx/constraintlayout/a/a/k;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Z

    sput-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    return-void
.end method

.method static a(ILandroidx/constraintlayout/a/a/f;)V
    .registers 19

    move-object/from16 v0, p1

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->g()V

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 2058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 155
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 3058
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 4058
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 157
    iget-object v4, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 5058
    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_1f

    move v6, v8

    goto :goto_20

    :cond_1f
    move v6, v7

    .line 163
    :goto_20
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v9, v9, v7

    sget v10, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v9, v10, :cond_30

    .line 164
    invoke-static {v0, v7}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;I)Z

    move-result v9

    if-eqz v9, :cond_30

    move v9, v8

    goto :goto_31

    :cond_30
    move v9, v7

    .line 166
    :goto_31
    iget v10, v1, Landroidx/constraintlayout/a/a/m;->g:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_19f

    iget v10, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v10, v12, :cond_19f

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v10, v10, v7

    sget v7, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-eq v10, v7, :cond_ed

    if-eqz v9, :cond_4e

    .line 5643
    iget v7, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    if-ne v7, v5, :cond_4e

    goto/16 :goto_ed

    :cond_4e
    if-eqz v9, :cond_19f

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    .line 14224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 15224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    .line 217
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_74

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_74

    if-eqz v6, :cond_6f

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_19f

    .line 221
    :cond_6f
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_19f

    .line 223
    :cond_74
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_90

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_90

    if-eqz v6, :cond_8b

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_19f

    .line 227
    :cond_8b
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_19f

    .line 229
    :cond_90
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_ad

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_ad

    if-eqz v6, :cond_a7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_19f

    :cond_a7
    neg-int v7, v7

    .line 233
    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_19f

    .line 235
    :cond_ad
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_19f

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_19f

    if-eqz v6, :cond_c9

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 240
    :cond_c9
    iget v9, v0, Landroidx/constraintlayout/a/a/f;->K:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_db

    .line 16224
    iput v11, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 17224
    iput v11, v3, Landroidx/constraintlayout/a/a/m;->g:I

    .line 243
    invoke-virtual {v1, v3, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    goto/16 :goto_19f

    .line 18224
    :cond_db
    iput v15, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 19224
    iput v15, v3, Landroidx/constraintlayout/a/a/m;->g:I

    neg-int v9, v7

    int-to-float v9, v9

    .line 249
    invoke-virtual {v1, v3, v9}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    int-to-float v9, v7

    .line 250
    invoke-virtual {v3, v1, v9}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 251
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/a/a/f;->e(I)V

    goto/16 :goto_19f

    .line 170
    :cond_ed
    :goto_ed
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_111

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_111

    .line 6224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 7224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_108

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_19f

    .line 176
    :cond_108
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_19f

    .line 178
    :cond_111
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_134

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_134

    .line 8224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 9224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_12c

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_19f

    .line 184
    :cond_12c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto :goto_19f

    .line 186
    :cond_134
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_15f

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_15f

    .line 10224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 11224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    if-eqz v6, :cond_156

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_19f

    .line 193
    :cond_156
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto :goto_19f

    .line 195
    :cond_15f
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_19f

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_19f

    .line 12224
    iput v15, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 13224
    iput v15, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_18e

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_19f

    .line 204
    :cond_18e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 259
    :cond_19f
    :goto_19f
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v8

    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v3, :cond_1b0

    .line 260
    invoke-static {v0, v8}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;I)Z

    move-result v1

    if-eqz v1, :cond_1b0

    move/from16 v16, v8

    goto :goto_1b2

    :cond_1b0
    const/16 v16, 0x0

    .line 262
    :goto_1b2
    iget v1, v2, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v1, v12, :cond_354

    iget v1, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v1, v12, :cond_354

    .line 265
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v8

    sget v3, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-eq v1, v3, :cond_26f

    if-eqz v16, :cond_1ca

    .line 19643
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    if-ne v1, v5, :cond_1ca

    goto/16 :goto_26f

    :cond_1ca
    if-eqz v16, :cond_354

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    .line 29224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 30224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    .line 326
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_1ee

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_1ee

    if-eqz v6, :cond_1ea

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    .line 330
    :cond_1ea
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 332
    :cond_1ee
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_208

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_208

    if-eqz v6, :cond_204

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    .line 336
    :cond_204
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 338
    :cond_208
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_223

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_223

    if-eqz v6, :cond_21e

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    :cond_21e
    neg-int v0, v1

    .line 342
    invoke-virtual {v2, v4, v0}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 344
    :cond_223
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_354

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_354

    if-eqz v6, :cond_23f

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 349
    :cond_23f
    iget v3, v0, Landroidx/constraintlayout/a/a/f;->K:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_250

    .line 31224
    iput v11, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 32224
    iput v11, v4, Landroidx/constraintlayout/a/a/m;->g:I

    .line 352
    invoke-virtual {v2, v4, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 353
    invoke-virtual {v4, v2, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    return-void

    .line 33224
    :cond_250
    iput v15, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 34224
    iput v15, v4, Landroidx/constraintlayout/a/a/m;->g:I

    neg-int v3, v1

    int-to-float v3, v3

    .line 357
    invoke-virtual {v2, v4, v3}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    int-to-float v3, v1

    .line 358
    invoke-virtual {v4, v2, v3}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 359
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 360
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_354

    .line 361
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 35058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 361
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_354

    .line 267
    :cond_26f
    :goto_26f
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_2a7

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_2a7

    .line 20224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 21224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_289

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_290

    .line 273
    :cond_289
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 275
    :goto_290
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_354

    .line 276
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 22058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 22224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 277
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 23058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 278
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    neg-int v0, v0

    .line 277
    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 280
    :cond_2a7
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_2d6

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_2d6

    .line 23224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 24224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_2c1

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_2c8

    .line 286
    :cond_2c1
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 288
    :goto_2c8
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_354

    .line 289
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 25058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 289
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 291
    :cond_2d6
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_306

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_306

    .line 25224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 26224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_2f0

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_2f8

    .line 297
    :cond_2f0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 299
    :goto_2f8
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_354

    .line 300
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 27058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 300
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 302
    :cond_306
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_354

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_354

    .line 27224
    iput v15, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 28224
    iput v15, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_335

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    goto :goto_346

    .line 311
    :cond_335
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 314
    :goto_346
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_354

    .line 315
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 29058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 315
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    :cond_354
    :goto_354
    return-void
.end method

.method static a(Landroidx/constraintlayout/a/a/f;II)V
    .registers 7

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 674
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v0

    .line 50061
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 50062
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 675
    iget-object v3, v3, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 50063
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 675
    iput-object v3, v2, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    .line 676
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v0

    .line 50064
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    int-to-float p2, p2

    .line 676
    iput p2, v2, Landroidx/constraintlayout/a/a/m;->f:F

    .line 678
    iget-object p2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object p2, p2, v0

    .line 50065
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    const/4 v2, 0x1

    .line 678
    iput v2, p2, Landroidx/constraintlayout/a/a/m;->i:I

    .line 680
    iget-object p2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object p2, p2, v1

    .line 50066
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 680
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v3, v0

    .line 50067
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 681
    iput-object v0, p2, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    .line 682
    iget-object p2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object p2, p2, v1

    .line 50068
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 683
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->b(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Landroidx/constraintlayout/a/a/m;->f:F

    .line 684
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object p0, p0, v1

    .line 50069
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 684
    iput v2, p0, Landroidx/constraintlayout/a/a/m;->i:I

    return-void
.end method

.method static a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/e;Landroidx/constraintlayout/a/a/f;)V
    .registers 8

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    const/4 v3, 0x2

    if-eq v0, v2, :cond_46

    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    if-ne v0, v1, :cond_46

    .line 60
    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->e:I

    .line 61
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget v2, v2, Landroidx/constraintlayout/a/a/e;->e:I

    sub-int/2addr v1, v2

    .line 68
    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v4, p2, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 69
    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v4, p2, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 70
    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    .line 71
    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    .line 72
    iput v3, p2, Landroidx/constraintlayout/a/a/f;->c:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/a/a/f;->c(II)V

    .line 76
    :cond_46
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v0, v2, :cond_a9

    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    if-ne v0, v1, :cond_a9

    .line 79
    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->e:I

    .line 80
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result p0

    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget v1, v1, Landroidx/constraintlayout/a/a/e;->e:I

    sub-int/2addr p0, v1

    .line 87
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 88
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 89
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    .line 90
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    .line 91
    iget v1, p2, Landroidx/constraintlayout/a/a/f;->S:I

    if-gtz v1, :cond_90

    .line 1643
    iget v1, p2, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a4

    .line 92
    :cond_90
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v2, p2, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 93
    iget-object v1, p2, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget v2, p2, Landroidx/constraintlayout/a/a/f;->S:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    .line 95
    :cond_a4
    iput v3, p2, Landroidx/constraintlayout/a/a/f;->d:I

    .line 97
    invoke-virtual {p2, v0, p0}, Landroidx/constraintlayout/a/a/f;->d(II)V

    :cond_a9
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;I)Z
    .registers 5

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, p1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 114
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 115
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    aget p0, p0, v1

    sget p1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne p0, p1, :cond_1f

    return v2

    :cond_1f
    return v2

    :cond_20
    if-nez p1, :cond_30

    .line 123
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->g:I

    if-eqz p1, :cond_27

    return v2

    .line 126
    :cond_27
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez p1, :cond_2f

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->k:I

    if-eqz p0, :cond_3e

    :cond_2f
    return v2

    .line 130
    :cond_30
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->h:I

    if-eqz p1, :cond_35

    return v2

    .line 133
    :cond_35
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez p1, :cond_3f

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->n:I

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    return v1

    :cond_3f
    :goto_3f
    return v2
.end method

.method static a(Landroidx/constraintlayout/a/e;IILandroidx/constraintlayout/a/a/d;)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 383
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Landroidx/constraintlayout/a/a/f;

    .line 384
    iget-object v4, v2, Landroidx/constraintlayout/a/a/d;->c:Landroidx/constraintlayout/a/a/f;

    .line 385
    iget-object v5, v2, Landroidx/constraintlayout/a/a/d;->b:Landroidx/constraintlayout/a/a/f;

    .line 386
    iget-object v6, v2, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/f;

    .line 387
    iget-object v7, v2, Landroidx/constraintlayout/a/a/d;->e:Landroidx/constraintlayout/a/a/f;

    .line 394
    iget v2, v2, Landroidx/constraintlayout/a/a/d;->k:F

    .line 398
    sget v8, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    const/4 v8, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_2e

    .line 404
    iget v11, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-nez v11, :cond_1e

    move v11, v10

    goto :goto_1f

    :cond_1e
    const/4 v11, 0x0

    .line 405
    :goto_1f
    iget v12, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-ne v12, v10, :cond_25

    move v12, v10

    goto :goto_26

    :cond_25
    const/4 v12, 0x0

    .line 406
    :goto_26
    iget v7, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-ne v7, v8, :cond_2c

    :goto_2a
    move v7, v10

    goto :goto_41

    :cond_2c
    const/4 v7, 0x0

    goto :goto_41

    .line 408
    :cond_2e
    iget v11, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-nez v11, :cond_34

    move v11, v10

    goto :goto_35

    :cond_34
    const/4 v11, 0x0

    .line 409
    :goto_35
    iget v12, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-ne v12, v10, :cond_3b

    move v12, v10

    goto :goto_3c

    :cond_3b
    const/4 v12, 0x0

    .line 410
    :goto_3c
    iget v7, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-ne v7, v8, :cond_2c

    goto :goto_2a

    :goto_41
    move-object v14, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_48
    const/16 v9, 0x8

    if-nez v13, :cond_fd

    move/from16 v18, v13

    .line 35643
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v13, v9, :cond_95

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_5d

    .line 426
    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    goto :goto_63

    .line 428
    :cond_5d
    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :goto_63
    if-eq v14, v5, :cond_6f

    .line 431
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :cond_6f
    if-eq v14, v6, :cond_7d

    .line 434
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v19, p2, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    .line 436
    :cond_7d
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float v17, v17, v13

    .line 437
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v19, p2, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float v17, v17, v13

    .line 36643
    :cond_95
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v13, v9, :cond_ce

    .line 442
    iget-object v9, v14, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v9, v9, v1

    sget v13, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v9, v13, :cond_ce

    add-int/lit8 v8, v8, 0x1

    if-nez v1, :cond_b5

    .line 447
    iget v9, v14, Landroidx/constraintlayout/a/a/f;->g:I

    if-eqz v9, :cond_ab

    const/4 v9, 0x0

    return v9

    :cond_ab
    const/4 v9, 0x0

    .line 449
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez v13, :cond_b4

    iget v13, v14, Landroidx/constraintlayout/a/a/f;->k:I

    if-eqz v13, :cond_c4

    :cond_b4
    return v9

    :cond_b5
    const/4 v9, 0x0

    .line 453
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->h:I

    if-eqz v13, :cond_bb

    return v9

    .line 455
    :cond_bb
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez v13, :cond_cd

    iget v13, v14, Landroidx/constraintlayout/a/a/f;->n:I

    if-eqz v13, :cond_c4

    goto :goto_cd

    .line 459
    :cond_c4
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->K:F

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-eqz v13, :cond_ce

    return v9

    :cond_cd
    :goto_cd
    return v9

    .line 465
    :cond_ce
    iget-object v9, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v13, p2, 0x1

    aget-object v9, v9, v13

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_f0

    .line 467
    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 468
    iget-object v13, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v13, :cond_f0

    iget-object v13, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    if-eq v13, v14, :cond_ed

    goto :goto_f0

    :cond_ed
    move-object/from16 v20, v9

    goto :goto_f2

    :cond_f0
    :goto_f0
    const/16 v20, 0x0

    :goto_f2
    if-eqz v20, :cond_fa

    move/from16 v13, v18

    move-object/from16 v14, v20

    goto/16 :goto_48

    :cond_fa
    const/4 v13, 0x1

    goto/16 :goto_48

    .line 481
    :cond_fd
    iget-object v13, v3, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    .line 37058
    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 482
    iget-object v9, v4, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v18, p2, 0x1

    aget-object v9, v9, v18

    .line 38058
    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    move-object/from16 v21, v3

    .line 484
    iget-object v3, v13, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    if-eqz v3, :cond_36c

    iget-object v3, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    if-nez v3, :cond_117

    goto/16 :goto_36c

    .line 490
    :cond_117
    iget-object v3, v13, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->i:I

    const/4 v0, 0x1

    if-ne v3, v0, :cond_36a

    iget-object v3, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->i:I

    if-eq v3, v0, :cond_126

    goto/16 :goto_36a

    :cond_126
    if-lez v8, :cond_12c

    if-eq v8, v10, :cond_12c

    const/4 v0, 0x0

    return v0

    :cond_12c
    if-nez v7, :cond_135

    if-nez v11, :cond_135

    if-eqz v12, :cond_133

    goto :goto_135

    :cond_133
    const/4 v0, 0x0

    goto :goto_14e

    :cond_135
    :goto_135
    if-eqz v5, :cond_141

    .line 504
    iget-object v0, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_142

    :cond_141
    const/4 v0, 0x0

    :goto_142
    if-eqz v6, :cond_14e

    .line 507
    iget-object v3, v6, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 511
    :cond_14e
    :goto_14e
    iget-object v3, v13, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->f:F

    .line 512
    iget-object v6, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v6, v6, Landroidx/constraintlayout/a/a/m;->f:F

    cmpg-float v9, v3, v6

    if-gez v9, :cond_15d

    sub-float/2addr v6, v3

    sub-float/2addr v6, v15

    goto :goto_160

    :cond_15d
    sub-float v6, v3, v6

    sub-float/2addr v6, v15

    :goto_160
    const/high16 v9, -0x40800000    # -1.0f

    const-wide/16 v19, 0x1

    if-lez v8, :cond_20a

    if-ne v8, v10, :cond_20a

    .line 38555
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_178

    .line 39555
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 521
    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v5, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v5, :cond_178

    const/4 v0, 0x0

    return v0

    :cond_178
    add-float/2addr v6, v15

    sub-float v6, v6, v17

    move-object/from16 v0, v21

    :goto_17d
    if-eqz v0, :cond_208

    .line 529
    sget-object v5, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v5, :cond_19b

    .line 530
    sget-object v5, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v10, v5, Landroidx/constraintlayout/a/f;->B:J

    sub-long v10, v10, v19

    iput-wide v10, v5, Landroidx/constraintlayout/a/f;->B:J

    .line 531
    sget-object v5, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v10, v5, Landroidx/constraintlayout/a/f;->s:J

    add-long v10, v10, v19

    iput-wide v10, v5, Landroidx/constraintlayout/a/f;->s:J

    .line 532
    sget-object v5, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v10, v5, Landroidx/constraintlayout/a/f;->y:J

    add-long v10, v10, v19

    iput-wide v10, v5, Landroidx/constraintlayout/a/f;->y:J

    .line 534
    :cond_19b
    iget-object v5, v0, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v5, v5, v1

    if-nez v5, :cond_1a7

    if-ne v0, v4, :cond_1a4

    goto :goto_1a7

    :cond_1a4
    move-object/from16 v14, p0

    goto :goto_205

    :cond_1a7
    :goto_1a7
    int-to-float v7, v8

    div-float v7, v6, v7

    const/4 v10, 0x0

    cmpl-float v11, v2, v10

    if-lez v11, :cond_1bf

    .line 538
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->am:[F

    aget v7, v7, v1

    cmpl-float v7, v7, v9

    if-nez v7, :cond_1b9

    const/4 v7, 0x0

    goto :goto_1bf

    .line 541
    :cond_1b9
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->am:[F

    aget v7, v7, v1

    mul-float/2addr v7, v6

    div-float/2addr v7, v2

    .line 39643
    :cond_1bf
    :goto_1bf
    iget v10, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1c6

    const/4 v7, 0x0

    .line 547
    :cond_1c6
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, p2

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v3, v10

    .line 548
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, p2

    .line 40058
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 548
    iget-object v11, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    invoke-virtual {v10, v11, v3}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 550
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, v18

    .line 41058
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 550
    iget-object v11, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    add-float/2addr v3, v7

    invoke-virtual {v10, v11, v3}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 552
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, p2

    .line 42058
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    move-object/from16 v14, p0

    .line 552
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 553
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v18

    .line 43058
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 553
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 555
    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v18

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    :goto_205
    move-object v0, v5

    goto/16 :goto_17d

    :cond_208
    const/4 v0, 0x1

    return v0

    :cond_20a
    move-object/from16 v14, p0

    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_214

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_214
    if-eqz v7, :cond_299

    sub-float/2addr v6, v0

    if-nez v1, :cond_21e

    move-object/from16 v2, v21

    .line 44008
    iget v9, v2, Landroidx/constraintlayout/a/a/f;->Y:F

    goto :goto_225

    :cond_21e
    move-object/from16 v2, v21

    const/4 v0, 0x1

    if-ne v1, v0, :cond_225

    .line 44010
    iget v9, v2, Landroidx/constraintlayout/a/a/f;->Z:F

    :cond_225
    :goto_225
    mul-float/2addr v6, v9

    add-float/2addr v3, v6

    :goto_227
    if-eqz v2, :cond_2a0

    .line 575
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_245

    .line 576
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v5, v0, Landroidx/constraintlayout/a/f;->B:J

    sub-long v5, v5, v19

    iput-wide v5, v0, Landroidx/constraintlayout/a/f;->B:J

    .line 577
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v5, v0, Landroidx/constraintlayout/a/f;->s:J

    add-long v5, v5, v19

    iput-wide v5, v0, Landroidx/constraintlayout/a/f;->s:J

    .line 578
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v5, v0, Landroidx/constraintlayout/a/f;->y:J

    add-long v5, v5, v19

    iput-wide v5, v0, Landroidx/constraintlayout/a/f;->y:J

    .line 580
    :cond_245
    iget-object v0, v2, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v0, v0, v1

    if-nez v0, :cond_24d

    if-ne v2, v4, :cond_297

    :cond_24d
    if-nez v1, :cond_255

    .line 584
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v5

    int-to-float v5, v5

    goto :goto_25a

    .line 586
    :cond_255
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v5

    int-to-float v5, v5

    .line 588
    :goto_25a
    iget-object v6, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 589
    iget-object v6, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, p2

    .line 44058
    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 589
    iget-object v7, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    invoke-virtual {v6, v7, v3}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 591
    iget-object v6, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v18

    .line 45058
    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 591
    iget-object v7, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    add-float/2addr v3, v5

    invoke-virtual {v6, v7, v3}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 593
    iget-object v5, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v5, v5, p2

    .line 46058
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 593
    invoke-virtual {v5, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 594
    iget-object v5, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v5, v5, v18

    .line 47058
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 594
    invoke-virtual {v5, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 596
    iget-object v2, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_297
    move-object v2, v0

    goto :goto_227

    :cond_299
    move-object/from16 v2, v21

    if-nez v11, :cond_2a3

    if-eqz v12, :cond_2a0

    goto :goto_2a3

    :cond_2a0
    const/4 v0, 0x1

    goto/16 :goto_369

    :cond_2a3
    :goto_2a3
    if-eqz v11, :cond_2a7

    sub-float/2addr v6, v0

    goto :goto_2aa

    :cond_2a7
    if-eqz v12, :cond_2aa

    sub-float/2addr v6, v0

    :cond_2aa
    :goto_2aa
    add-int/lit8 v0, v10, 0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    if-eqz v12, :cond_2be

    const/4 v7, 0x1

    if-le v10, v7, :cond_2ba

    add-int/lit8 v0, v10, -0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    goto :goto_2be

    :cond_2ba
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v6, v0

    .line 47643
    :cond_2be
    :goto_2be
    iget v6, v2, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2c7

    add-float v6, v3, v0

    goto :goto_2c8

    :cond_2c7
    move v6, v3

    :goto_2c8
    if-eqz v12, :cond_2d7

    const/4 v7, 0x1

    if-le v10, v7, :cond_2d7

    .line 620
    iget-object v6, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    :cond_2d7
    if-eqz v11, :cond_2e5

    if-eqz v5, :cond_2e5

    .line 624
    iget-object v3, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_2e5
    :goto_2e5
    if-eqz v2, :cond_2a0

    .line 628
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v3, :cond_303

    .line 629
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v7, v3, Landroidx/constraintlayout/a/f;->B:J

    sub-long v7, v7, v19

    iput-wide v7, v3, Landroidx/constraintlayout/a/f;->B:J

    .line 630
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v7, v3, Landroidx/constraintlayout/a/f;->s:J

    add-long v7, v7, v19

    iput-wide v7, v3, Landroidx/constraintlayout/a/f;->s:J

    .line 631
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v7, v3, Landroidx/constraintlayout/a/f;->y:J

    add-long v7, v7, v19

    iput-wide v7, v3, Landroidx/constraintlayout/a/f;->y:J

    .line 633
    :cond_303
    iget-object v3, v2, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v3, v3, v1

    if-nez v3, :cond_30f

    if-ne v2, v4, :cond_30c

    goto :goto_30f

    :cond_30c
    const/16 v7, 0x8

    goto :goto_366

    :cond_30f
    :goto_30f
    if-nez v1, :cond_317

    .line 637
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    int-to-float v7, v7

    goto :goto_31c

    .line 639
    :cond_317
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v7

    int-to-float v7, v7

    :goto_31c
    if-eq v2, v5, :cond_328

    .line 642
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, p2

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 644
    :cond_328
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, p2

    .line 48058
    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 644
    iget-object v9, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    invoke-virtual {v8, v9, v6}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 646
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, v18

    .line 49058
    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 646
    iget-object v9, v13, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    add-float v10, v6, v7

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 648
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, p2

    .line 50058
    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 648
    invoke-virtual {v8, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 649
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, v18

    .line 50059
    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 649
    invoke-virtual {v8, v14}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 650
    iget-object v2, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    if-eqz v3, :cond_30c

    .line 50060
    iget v2, v3, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v7, 0x8

    if-eq v2, v7, :cond_366

    add-float/2addr v6, v0

    :cond_366
    :goto_366
    move-object v2, v3

    goto/16 :goto_2e5

    :goto_369
    return v0

    :cond_36a
    :goto_36a
    const/4 v0, 0x0

    return v0

    :cond_36c
    :goto_36c
    const/4 v0, 0x0

    return v0
.end method
