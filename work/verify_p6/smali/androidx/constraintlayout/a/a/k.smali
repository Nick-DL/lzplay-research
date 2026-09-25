.class public final Landroidx/constraintlayout/a/a/k;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Z

    sput-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    return-void
.end method

.method static a(ILandroidx/constraintlayout/a/a/f;)V
    .locals 17

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

    if-ne v6, v5, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 163
    :goto_0
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v9, v9, v7

    sget v10, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v9, v10, :cond_1

    .line 164
    invoke-static {v0, v7}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 166
    :goto_1
    iget v10, v1, Landroidx/constraintlayout/a/a/m;->g:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v10, v12, :cond_13

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v10, v10, v7

    sget v7, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 5643
    iget v7, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

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

    if-nez v9, :cond_4

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_3

    .line 221
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_3

    .line 223
    :cond_4
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_3

    .line 227
    :cond_5
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_3

    .line 229
    :cond_6
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 233
    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_3

    .line 235
    :cond_8
    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 240
    :cond_9
    iget v9, v0, Landroidx/constraintlayout/a/a/f;->K:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 16224
    iput v11, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 17224
    iput v11, v3, Landroidx/constraintlayout/a/a/m;->g:I

    .line 243
    invoke-virtual {v1, v3, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;F)V

    goto/16 :goto_3

    .line 18224
    :cond_a
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

    goto/16 :goto_3

    .line 170
    :cond_b
    :goto_2
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_d

    .line 6224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 7224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_c

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_3

    .line 176
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_3

    .line 178
    :cond_d
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_f

    .line 8224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 9224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_e

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto/16 :goto_3

    .line 184
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto :goto_3

    .line 186
    :cond_f
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_11

    .line 10224
    iput v8, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 11224
    iput v8, v3, Landroidx/constraintlayout/a/a/m;->g:I

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    if-eqz v6, :cond_10

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_3

    .line 193
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    goto :goto_3

    .line 195
    :cond_11
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_13

    .line 12224
    iput v15, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 13224
    iput v15, v3, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_12

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

    goto :goto_3

    .line 204
    :cond_12
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
    :cond_13
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v8

    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v3, :cond_14

    .line 260
    invoke-static {v0, v8}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;I)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v16, v8

    goto :goto_4

    :cond_14
    const/16 v16, 0x0

    .line 262
    :goto_4
    iget v1, v2, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v1, v12, :cond_26

    iget v1, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eq v1, v12, :cond_26

    .line 265
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v8

    sget v3, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-eq v1, v3, :cond_1e

    if-eqz v16, :cond_15

    .line 19643
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    if-ne v1, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v16, :cond_26

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

    if-nez v3, :cond_17

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    .line 330
    :cond_16
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 332
    :cond_17
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    .line 336
    :cond_18
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 338
    :cond_19
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    return-void

    :cond_1a
    neg-int v0, v1

    .line 342
    invoke-virtual {v2, v4, v0}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 344
    :cond_1b
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/n;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 349
    :cond_1c
    iget v3, v0, Landroidx/constraintlayout/a/a/f;->K:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

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
    :cond_1d
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

    if-lez v1, :cond_26

    .line 361
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 35058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 361
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    goto/16 :goto_a

    .line 267
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_20

    .line 20224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 21224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_1f

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_6

    .line 273
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 275
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_26

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
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_22

    .line 23224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 24224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_21

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_7

    .line 286
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 288
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_26

    .line 289
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 25058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 289
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 291
    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_24

    .line 25224
    iput v8, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 26224
    iput v8, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_23

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;ILandroidx/constraintlayout/a/a/n;)V

    goto :goto_8

    .line 297
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    .line 299
    :goto_8
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_26

    .line 300
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 27058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 300
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    .line 302
    :cond_24
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_26

    .line 27224
    iput v15, v2, Landroidx/constraintlayout/a/a/m;->g:I

    .line 28224
    iput v15, v4, Landroidx/constraintlayout/a/a/m;->g:I

    if-eqz v6, :cond_25

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

    goto :goto_9

    .line 311
    :cond_25
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
    :goto_9
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v1, :cond_26

    .line 315
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 29058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 315
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->S:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;I)V

    return-void

    :cond_26
    :goto_a
    return-void
.end method

.method static a(Landroidx/constraintlayout/a/a/f;II)V
    .locals 4

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
    .locals 5

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    if-ne v0, v1, :cond_0

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
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    if-ne v0, v1, :cond_3

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

    if-gtz v1, :cond_1

    .line 1643
    iget v1, p2, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 92
    :cond_1
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
    :cond_2
    iput v3, p2, Landroidx/constraintlayout/a/a/f;->d:I

    .line 97
    invoke-virtual {p2, v0, p0}, Landroidx/constraintlayout/a/a/f;->d(II)V

    :cond_3
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;I)Z
    .locals 3

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, p1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 114
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 115
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    aget p0, p0, v1

    sget p1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    .line 123
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->g:I

    if-eqz p1, :cond_4

    return v2

    .line 126
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez p1, :cond_5

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->k:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    .line 130
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->h:I

    if-eqz p1, :cond_7

    return v2

    .line 133
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez p1, :cond_9

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->n:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method static a(Landroidx/constraintlayout/a/e;IILandroidx/constraintlayout/a/a/d;)Z
    .locals 22

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

    if-nez v1, :cond_3

    .line 404
    iget v11, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-nez v11, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 405
    :goto_0
    iget v12, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-ne v12, v10, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 406
    :goto_1
    iget v7, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-ne v7, v8, :cond_2

    :goto_2
    move v7, v10

    goto :goto_5

    :cond_2
    const/4 v7, 0x0

    goto :goto_5

    .line 408
    :cond_3
    iget v11, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-nez v11, :cond_4

    move v11, v10

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 409
    :goto_3
    iget v12, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-ne v12, v10, :cond_5

    move v12, v10

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 410
    :goto_4
    iget v7, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-ne v7, v8, :cond_2

    goto :goto_2

    :goto_5
    move-object v14, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v9, 0x8

    if-nez v13, :cond_14

    move/from16 v18, v13

    .line 35643
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v13, v9, :cond_9

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_6

    .line 426
    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    goto :goto_7

    .line 428
    :cond_6
    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :goto_7
    if-eq v14, v5, :cond_7

    .line 431
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    :cond_7
    if-eq v14, v6, :cond_8

    .line 434
    iget-object v13, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v19, p2, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    .line 436
    :cond_8
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
    :cond_9
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v13, v9, :cond_10

    .line 442
    iget-object v9, v14, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v9, v9, v1

    sget v13, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v9, v13, :cond_10

    add-int/lit8 v8, v8, 0x1

    if-nez v1, :cond_c

    .line 447
    iget v9, v14, Landroidx/constraintlayout/a/a/f;->g:I

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    return v9

    :cond_a
    const/4 v9, 0x0

    .line 449
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez v13, :cond_b

    iget v13, v14, Landroidx/constraintlayout/a/a/f;->k:I

    if-eqz v13, :cond_e

    :cond_b
    return v9

    :cond_c
    const/4 v9, 0x0

    .line 453
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->h:I

    if-eqz v13, :cond_d

    return v9

    .line 455
    :cond_d
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez v13, :cond_f

    iget v13, v14, Landroidx/constraintlayout/a/a/f;->n:I

    if-eqz v13, :cond_e

    goto :goto_8

    .line 459
    :cond_e
    iget v13, v14, Landroidx/constraintlayout/a/a/f;->K:F

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-eqz v13, :cond_10

    return v9

    :cond_f
    :goto_8
    return v9

    .line 465
    :cond_10
    iget-object v9, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v13, p2, 0x1

    aget-object v9, v9, v13

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_12

    .line 467
    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 468
    iget-object v13, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v13, :cond_12

    iget-object v13, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, p2

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    if-eq v13, v14, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v20, v9

    goto :goto_a

    :cond_12
    :goto_9
    const/16 v20, 0x0

    :goto_a
    if-eqz v20, :cond_13

    move/from16 v13, v18

    move-object/from16 v14, v20

    goto/16 :goto_6

    :cond_13
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 481
    :cond_14
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

    if-eqz v3, :cond_3e

    iget-object v3, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    if-nez v3, :cond_15

    goto/16 :goto_20

    .line 490
    :cond_15
    iget-object v3, v13, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->i:I

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3d

    iget-object v3, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->i:I

    if-eq v3, v0, :cond_16

    goto/16 :goto_1f

    :cond_16
    if-lez v8, :cond_17

    if-eq v8, v10, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    if-nez v7, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_18

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    :cond_19
    :goto_b
    if-eqz v5, :cond_1a

    .line 504
    iget-object v0, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    :goto_c
    if-eqz v6, :cond_1b

    .line 507
    iget-object v3, v6, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 511
    :cond_1b
    :goto_d
    iget-object v3, v13, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v3, v3, Landroidx/constraintlayout/a/a/m;->f:F

    .line 512
    iget-object v6, v9, Landroidx/constraintlayout/a/a/m;->c:Landroidx/constraintlayout/a/a/m;

    iget v6, v6, Landroidx/constraintlayout/a/a/m;->f:F

    cmpg-float v9, v3, v6

    if-gez v9, :cond_1c

    sub-float/2addr v6, v3

    sub-float/2addr v6, v15

    goto :goto_e

    :cond_1c
    sub-float v6, v3, v6

    sub-float/2addr v6, v15

    :goto_e
    const/high16 v9, -0x40800000    # -1.0f

    const-wide/16 v19, 0x1

    if-lez v8, :cond_25

    if-ne v8, v10, :cond_25

    .line 38555
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_1d

    .line 39555
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 521
    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v1

    sget v5, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v5, :cond_1d

    const/4 v0, 0x0

    return v0

    :cond_1d
    add-float/2addr v6, v15

    sub-float v6, v6, v17

    move-object/from16 v0, v21

    :goto_f
    if-eqz v0, :cond_24

    .line 529
    sget-object v5, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v5, :cond_1e

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
    :cond_1e
    iget-object v5, v0, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v5, v5, v1

    if-nez v5, :cond_20

    if-ne v0, v4, :cond_1f

    goto :goto_10

    :cond_1f
    move-object/from16 v14, p0

    goto :goto_12

    :cond_20
    :goto_10
    int-to-float v7, v8

    div-float v7, v6, v7

    const/4 v10, 0x0

    cmpl-float v11, v2, v10

    if-lez v11, :cond_22

    .line 538
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->am:[F

    aget v7, v7, v1

    cmpl-float v7, v7, v9

    if-nez v7, :cond_21

    const/4 v7, 0x0

    goto :goto_11

    .line 541
    :cond_21
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->am:[F

    aget v7, v7, v1

    mul-float/2addr v7, v6

    div-float/2addr v7, v2

    .line 39643
    :cond_22
    :goto_11
    iget v10, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_23

    const/4 v7, 0x0

    .line 547
    :cond_23
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

    :goto_12
    move-object v0, v5

    goto/16 :goto_f

    :cond_24
    const/4 v0, 0x1

    return v0

    :cond_25
    move-object/from16 v14, p0

    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_26

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_26
    if-eqz v7, :cond_2d

    sub-float/2addr v6, v0

    if-nez v1, :cond_27

    move-object/from16 v2, v21

    .line 44008
    iget v9, v2, Landroidx/constraintlayout/a/a/f;->Y:F

    goto :goto_13

    :cond_27
    move-object/from16 v2, v21

    const/4 v0, 0x1

    if-ne v1, v0, :cond_28

    .line 44010
    iget v9, v2, Landroidx/constraintlayout/a/a/f;->Z:F

    :cond_28
    :goto_13
    mul-float/2addr v6, v9

    add-float/2addr v3, v6

    :goto_14
    if-eqz v2, :cond_2e

    .line 575
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_29

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
    :cond_29
    iget-object v0, v2, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v0, v0, v1

    if-nez v0, :cond_2a

    if-ne v2, v4, :cond_2c

    :cond_2a
    if-nez v1, :cond_2b

    .line 584
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v5

    int-to-float v5, v5

    goto :goto_15

    .line 586
    :cond_2b
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v5

    int-to-float v5, v5

    .line 588
    :goto_15
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

    :cond_2c
    move-object v2, v0

    goto :goto_14

    :cond_2d
    move-object/from16 v2, v21

    if-nez v11, :cond_2f

    if-eqz v12, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_2f
    :goto_16
    if-eqz v11, :cond_30

    sub-float/2addr v6, v0

    goto :goto_17

    :cond_30
    if-eqz v12, :cond_31

    sub-float/2addr v6, v0

    :cond_31
    :goto_17
    add-int/lit8 v0, v10, 0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    if-eqz v12, :cond_33

    const/4 v7, 0x1

    if-le v10, v7, :cond_32

    add-int/lit8 v0, v10, -0x1

    int-to-float v0, v0

    div-float v0, v6, v0

    goto :goto_18

    :cond_32
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v6, v0

    .line 47643
    :cond_33
    :goto_18
    iget v6, v2, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_34

    add-float v6, v3, v0

    goto :goto_19

    :cond_34
    move v6, v3

    :goto_19
    if-eqz v12, :cond_35

    const/4 v7, 0x1

    if-le v10, v7, :cond_35

    .line 620
    iget-object v6, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    :cond_35
    if-eqz v11, :cond_36

    if-eqz v5, :cond_36

    .line 624
    iget-object v3, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_36
    :goto_1a
    if-eqz v2, :cond_2e

    .line 628
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v3, :cond_37

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
    :cond_37
    iget-object v3, v2, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v3, v3, v1

    if-nez v3, :cond_39

    if-ne v2, v4, :cond_38

    goto :goto_1b

    :cond_38
    const/16 v7, 0x8

    goto :goto_1d

    :cond_39
    :goto_1b
    if-nez v1, :cond_3a

    .line 637
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    int-to-float v7, v7

    goto :goto_1c

    .line 639
    :cond_3a
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v7

    int-to-float v7, v7

    :goto_1c
    if-eq v2, v5, :cond_3b

    .line 642
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, p2

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 644
    :cond_3b
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

    if-eqz v3, :cond_38

    .line 50060
    iget v2, v3, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v7, 0x8

    if-eq v2, v7, :cond_3c

    add-float/2addr v6, v0

    :cond_3c
    :goto_1d
    move-object v2, v3

    goto/16 :goto_1a

    :goto_1e
    return v0

    :cond_3d
    :goto_1f
    const/4 v0, 0x0

    return v0

    :cond_3e
    :goto_20
    const/4 v0, 0x0

    return v0
.end method
