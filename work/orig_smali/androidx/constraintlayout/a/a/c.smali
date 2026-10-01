.class final Landroidx/constraintlayout/a/a/c;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method static a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/e;I)V
    .registers 51

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    if-nez v11, :cond_10

    .line 51
    iget v1, v0, Landroidx/constraintlayout/a/a/g;->av:I

    .line 52
    iget-object v2, v0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    move v9, v1

    move-object v14, v2

    const/4 v15, 0x0

    goto :goto_17

    .line 55
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/a/a/g;->aw:I

    .line 56
    iget-object v2, v0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    move v9, v1

    move-object v14, v2

    const/4 v15, 0x2

    :goto_17
    const/4 v8, 0x0

    :goto_18
    if-ge v8, v9, :cond_63a

    .line 60
    aget-object v1, v14, v8

    .line 1195
    iget-boolean v2, v1, Landroidx/constraintlayout/a/a/d;->o:Z

    if-nez v2, :cond_23

    .line 1196
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->a()V

    :cond_23
    const/4 v2, 0x1

    .line 1198
    iput-boolean v2, v1, Landroidx/constraintlayout/a/a/d;->o:Z

    const/4 v7, 0x4

    .line 64
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 65
    invoke-static {v10, v11, v15, v1}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/e;IILandroidx/constraintlayout/a/a/d;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_3e

    :cond_34
    move/from16 v40, v8

    move/from16 v17, v9

    move-object/from16 v31, v14

    const/16 v16, 0x0

    goto/16 :goto_630

    .line 2086
    :cond_3e
    :goto_3e
    iget-object v6, v1, Landroidx/constraintlayout/a/a/d;->a:Landroidx/constraintlayout/a/a/f;

    .line 2087
    iget-object v5, v1, Landroidx/constraintlayout/a/a/d;->c:Landroidx/constraintlayout/a/a/f;

    .line 2088
    iget-object v4, v1, Landroidx/constraintlayout/a/a/d;->b:Landroidx/constraintlayout/a/a/f;

    .line 2089
    iget-object v3, v1, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/f;

    .line 2090
    iget-object v7, v1, Landroidx/constraintlayout/a/a/d;->e:Landroidx/constraintlayout/a/a/f;

    .line 2096
    iget v13, v1, Landroidx/constraintlayout/a/a/d;->k:F

    .line 2100
    iget-object v12, v0, Landroidx/constraintlayout/a/a/g;->G:[I

    aget v12, v12, v11

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v12, v2, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    if-nez v11, :cond_7d

    .line 2106
    iget v12, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    if-nez v12, :cond_5f

    move/from16 v20, v8

    const/4 v12, 0x1

    goto :goto_62

    :cond_5f
    move/from16 v20, v8

    const/4 v12, 0x0

    .line 2107
    :goto_62
    iget v8, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    move/from16 v21, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6b

    const/4 v8, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v8, 0x0

    .line 2108
    :goto_6c
    iget v9, v7, Landroidx/constraintlayout/a/a/f;->ai:I

    move/from16 v22, v8

    const/4 v8, 0x2

    if-ne v9, v8, :cond_75

    const/4 v8, 0x1

    goto :goto_76

    :cond_75
    const/4 v8, 0x0

    :goto_76
    move-object v9, v6

    move/from16 v18, v8

    move/from16 v23, v12

    const/4 v8, 0x0

    goto :goto_a0

    :cond_7d
    move/from16 v20, v8

    move/from16 v21, v9

    .line 2110
    iget v8, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    if-nez v8, :cond_87

    const/4 v12, 0x1

    goto :goto_88

    :cond_87
    const/4 v12, 0x0

    .line 2111
    :goto_88
    iget v8, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8f

    const/4 v8, 0x1

    goto :goto_90

    :cond_8f
    const/4 v8, 0x0

    .line 2112
    :goto_90
    iget v9, v7, Landroidx/constraintlayout/a/a/f;->aj:I

    move/from16 v23, v12

    const/4 v12, 0x2

    if-ne v9, v12, :cond_99

    const/4 v9, 0x1

    goto :goto_9a

    :cond_99
    const/4 v9, 0x0

    :goto_9a
    move/from16 v22, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    move-object v9, v6

    :goto_a0
    const/16 v25, 0x0

    if-nez v8, :cond_186

    .line 2120
    iget-object v12, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v12, v12, v15

    if-nez v2, :cond_b0

    if-eqz v18, :cond_ad

    goto :goto_b0

    :cond_ad
    const/16 v27, 0x4

    goto :goto_b2

    :cond_b0
    :goto_b0
    const/16 v27, 0x1

    .line 2125
    :goto_b2
    invoke-virtual {v12}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v28

    move/from16 v29, v8

    .line 2127
    iget-object v8, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_c6

    if-eq v9, v6, :cond_c6

    .line 2128
    iget-object v8, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v8

    add-int v28, v28, v8

    :cond_c6
    move/from16 v8, v28

    if-eqz v18, :cond_d4

    if-eq v9, v6, :cond_d4

    if-eq v9, v4, :cond_d4

    move/from16 v30, v13

    move-object/from16 v31, v14

    const/4 v13, 0x6

    goto :goto_e4

    :cond_d4
    if-eqz v23, :cond_de

    if-eqz v2, :cond_de

    move/from16 v30, v13

    move-object/from16 v31, v14

    const/4 v13, 0x4

    goto :goto_e4

    :cond_de
    move/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v13, v27

    .line 2139
    :goto_e4
    iget-object v14, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v14, :cond_111

    if-ne v9, v4, :cond_f9

    .line 2141
    iget-object v14, v12, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v32, v7

    iget-object v7, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v33, v6

    const/4 v6, 0x5

    invoke-virtual {v10, v14, v7, v8, v6}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_107

    :cond_f9
    move-object/from16 v33, v6

    move-object/from16 v32, v7

    .line 2144
    iget-object v6, v12, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v14, 0x6

    invoke-virtual {v10, v6, v7, v8, v14}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2147
    :goto_107
    iget-object v6, v12, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v10, v6, v7, v8, v13}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_115

    :cond_111
    move-object/from16 v33, v6

    move-object/from16 v32, v7

    :goto_115
    if-eqz v2, :cond_14a

    .line 2643
    iget v6, v9, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_139

    .line 2152
    iget-object v6, v9, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v6, v6, v11

    sget v7, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v6, v7, :cond_139

    .line 2154
    iget-object v6, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v8, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v6, v7, v8, v12}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_13a

    :cond_139
    const/4 v8, 0x0

    .line 2158
    :goto_13a
    iget-object v6, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v0, Landroidx/constraintlayout/a/a/g;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v12, 0x6

    invoke-virtual {v10, v6, v7, v8, v12}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2164
    :cond_14a
    iget-object v6, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v6, :cond_16b

    .line 2166
    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 2167
    iget-object v7, v6, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_16b

    iget-object v7, v6, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    if-eq v7, v9, :cond_169

    goto :goto_16b

    :cond_169
    move-object/from16 v25, v6

    :cond_16b
    :goto_16b
    if-eqz v25, :cond_17b

    move-object/from16 v9, v25

    move/from16 v8, v29

    move/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v7, v32

    move-object/from16 v6, v33

    goto/16 :goto_a0

    :cond_17b
    move/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v7, v32

    move-object/from16 v6, v33

    const/4 v8, 0x1

    goto/16 :goto_a0

    :cond_186
    move-object/from16 v33, v6

    move-object/from16 v32, v7

    move/from16 v30, v13

    move-object/from16 v31, v14

    if-eqz v3, :cond_1b1

    .line 2181
    iget-object v6, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v6, :cond_1b1

    .line 2182
    iget-object v6, v3, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v7

    .line 2183
    iget-object v8, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v9, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v9, v7

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2184
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    neg-int v6, v6

    const/4 v9, 0x5

    .line 2183
    invoke-virtual {v10, v8, v7, v6, v9}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_1b1
    if-eqz v2, :cond_1cd

    .line 2190
    iget-object v2, v0, Landroidx/constraintlayout/a/a/g;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v6, v15, 0x1

    aget-object v2, v2, v6

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v8, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v8, v6

    .line 2192
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    const/4 v8, 0x6

    .line 2190
    invoke-virtual {v10, v2, v7, v6, v8}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2196
    :cond_1cd
    iget-object v2, v1, Landroidx/constraintlayout/a/a/d;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_2fc

    .line 2198
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x1

    if-le v6, v9, :cond_2fc

    .line 2203
    iget-boolean v7, v1, Landroidx/constraintlayout/a/a/d;->l:Z

    if-eqz v7, :cond_1e4

    iget-boolean v7, v1, Landroidx/constraintlayout/a/a/d;->n:Z

    if-nez v7, :cond_1e4

    .line 2204
    iget v7, v1, Landroidx/constraintlayout/a/a/d;->j:I

    int-to-float v13, v7

    goto :goto_1e6

    :cond_1e4
    move/from16 v13, v30

    :goto_1e6
    const/4 v7, 0x0

    move v14, v7

    move-object/from16 v12, v25

    const/4 v8, 0x0

    :goto_1eb
    if-ge v8, v6, :cond_2fc

    .line 2208
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroidx/constraintlayout/a/a/f;

    .line 2209
    iget-object v0, v9, Landroidx/constraintlayout/a/a/f;->am:[F

    aget v0, v0, v11

    cmpg-float v19, v0, v7

    if-gez v19, :cond_21e

    .line 2212
    iget-boolean v0, v1, Landroidx/constraintlayout/a/a/d;->n:Z

    if-eqz v0, :cond_218

    .line 2213
    iget-object v0, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v7, v15, 0x1

    aget-object v0, v0, v7

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move/from16 v35, v6

    const/4 v6, 0x4

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v7, v9, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    const/4 v6, 0x6

    goto :goto_23a

    :cond_218
    move/from16 v35, v6

    const/4 v6, 0x4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_221

    :cond_21e
    move/from16 v35, v6

    const/4 v6, 0x4

    :goto_221
    const/16 v16, 0x0

    cmpl-float v19, v0, v16

    if-nez v19, :cond_244

    .line 2220
    iget-object v0, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v7, v15, 0x1

    aget-object v0, v0, v7

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v6, 0x6

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v7, v9, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :goto_23a
    move-object/from16 v38, v1

    move-object/from16 v36, v2

    move/from16 v16, v9

    const/16 v17, 0x0

    goto/16 :goto_2ed

    :cond_244
    const/4 v6, 0x6

    const/16 v16, 0x0

    if-eqz v12, :cond_2df

    .line 2226
    iget-object v6, v12, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2227
    iget-object v12, v12, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v17, v15, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2228
    iget-object v7, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v36, v2

    .line 2229
    iget-object v2, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v17

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v37, v9

    .line 2230
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v9

    move-object/from16 v38, v1

    const/4 v1, 0x0

    .line 3215
    iput v1, v9, Landroidx/constraintlayout/a/b;->b:F

    cmpl-float v17, v13, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v17, :cond_2c0

    cmpl-float v17, v14, v0

    if-nez v17, :cond_27b

    goto :goto_2c0

    :cond_27b
    const/16 v17, 0x0

    cmpl-float v26, v14, v17

    if-nez v26, :cond_290

    .line 3225
    iget-object v2, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3226
    iget-object v2, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v2, v12, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_28d
    move/from16 v39, v0

    goto :goto_2db

    :cond_290
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v19, :cond_2a1

    .line 3228
    iget-object v6, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v6, v7, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3229
    iget-object v1, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_28d

    :cond_2a1
    div-float/2addr v14, v13

    div-float v19, v0, v13

    div-float v14, v14, v19

    move/from16 v39, v0

    .line 3237
    iget-object v0, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3238
    iget-object v0, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v12, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3239
    iget-object v0, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, v2, v14}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3240
    iget-object v0, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    neg-float v1, v14

    invoke-virtual {v0, v7, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_2db

    :cond_2c0
    :goto_2c0
    move/from16 v39, v0

    move v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    .line 3219
    iget-object v14, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v14, v6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3220
    iget-object v6, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v6, v12, v0}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3221
    iget-object v6, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v6, v2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 3222
    iget-object v1, v9, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v1, v7, v0}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 2233
    :goto_2db
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    goto :goto_2e9

    :cond_2df
    move/from16 v39, v0

    move-object/from16 v38, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v9

    const/16 v17, 0x0

    :goto_2e9
    move-object/from16 v12, v37

    move/from16 v14, v39

    :goto_2ed
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v17

    move/from16 v6, v35

    move-object/from16 v2, v36

    move-object/from16 v1, v38

    move-object/from16 v0, p0

    const/4 v9, 0x1

    goto/16 :goto_1eb

    :cond_2fc
    move-object/from16 v38, v1

    const/16 v16, 0x0

    if-eqz v4, :cond_37e

    if-eq v4, v3, :cond_306

    if-eqz v18, :cond_37e

    :cond_306
    move-object/from16 v0, v33

    .line 2255
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    .line 2256
    iget-object v2, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v6, v15, 0x1

    aget-object v2, v2, v6

    .line 2257
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v15

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_323

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v15

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_325

    :cond_323
    move-object/from16 v0, v25

    .line 2258
    :goto_325
    iget-object v7, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_336

    iget-object v7, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_338

    :cond_336
    move-object/from16 v7, v25

    :goto_338
    if-ne v4, v3, :cond_342

    .line 2260
    iget-object v1, v4, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    .line 2261
    iget-object v2, v4, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v6

    :cond_342
    if-eqz v0, :cond_374

    if-eqz v7, :cond_374

    if-nez v11, :cond_34d

    move-object/from16 v6, v32

    .line 2266
    iget v6, v6, Landroidx/constraintlayout/a/a/f;->Y:F

    goto :goto_351

    :cond_34d
    move-object/from16 v6, v32

    .line 2268
    iget v6, v6, Landroidx/constraintlayout/a/a/f;->Z:F

    .line 2270
    :goto_351
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v8

    .line 2271
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v9

    .line 2272
    iget-object v12, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v13, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v14, 0x5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v12, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v8

    move-object v8, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v13

    move-object v13, v8

    move/from16 v40, v20

    move v8, v9

    move/from16 v17, v21

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_37b

    :cond_374
    move-object v12, v3

    move-object v0, v4

    move-object v13, v5

    move/from16 v40, v20

    move/from16 v17, v21

    :goto_37b
    move-object v14, v0

    goto/16 :goto_5ce

    :cond_37e
    move-object v12, v3

    move-object v14, v4

    move-object v13, v5

    move/from16 v40, v20

    move/from16 v17, v21

    move-object/from16 v0, v33

    if-eqz v23, :cond_498

    if-eqz v14, :cond_498

    move-object/from16 v1, v38

    .line 2279
    iget v2, v1, Landroidx/constraintlayout/a/a/d;->j:I

    if-lez v2, :cond_39a

    iget v2, v1, Landroidx/constraintlayout/a/a/d;->i:I

    iget v1, v1, Landroidx/constraintlayout/a/a/d;->j:I

    if-ne v2, v1, :cond_39a

    const/16 v34, 0x1

    goto :goto_39c

    :cond_39a
    move/from16 v34, v16

    :goto_39c
    move-object v8, v14

    move-object v9, v8

    :goto_39e
    if-eqz v9, :cond_5ce

    .line 2281
    iget-object v1, v9, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v1, v1, v11

    move-object v7, v1

    :goto_3a5
    if-eqz v7, :cond_3b2

    .line 3643
    iget v1, v7, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3b2

    .line 2283
    iget-object v1, v7, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v7, v1, v11

    goto :goto_3a5

    :cond_3b2
    if-nez v7, :cond_3c4

    if-ne v9, v12, :cond_3b7

    goto :goto_3c4

    :cond_3b7
    move-object/from16 v43, v0

    move-object/from16 v44, v7

    move-object/from16 v24, v8

    move-object v0, v9

    :goto_3be
    const/16 v20, 0x6

    const/16 v21, 0x4

    goto/16 :goto_488

    .line 2286
    :cond_3c4
    :goto_3c4
    iget-object v1, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    .line 2287
    iget-object v2, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2288
    iget-object v3, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_3d3

    iget-object v3, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_3d5

    :cond_3d3
    move-object/from16 v3, v25

    :goto_3d5
    if-eq v8, v9, :cond_3e0

    .line 2290
    iget-object v3, v8, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v4, v15, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_3f7

    :cond_3e0
    if-ne v9, v14, :cond_3f7

    if-ne v8, v9, :cond_3f7

    .line 2292
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_3f5

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v15

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_3f7

    :cond_3f5
    move-object/from16 v3, v25

    .line 2298
    :cond_3f7
    :goto_3f7
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    .line 2299
    iget-object v4, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v4

    if-eqz v7, :cond_412

    .line 2302
    iget-object v6, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v15

    move-object/from16 v41, v0

    .line 2303
    iget-object v0, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    :goto_40f
    move-object/from16 v42, v7

    goto :goto_423

    :cond_412
    move-object/from16 v41, v0

    .line 2306
    iget-object v0, v13, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v5

    iget-object v6, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v6, :cond_41f

    .line 2308
    iget-object v0, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_40f

    :cond_41f
    move-object/from16 v42, v7

    move-object/from16 v0, v25

    .line 2310
    :goto_423
    iget-object v7, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    if-eqz v6, :cond_430

    .line 2314
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    add-int/2addr v4, v6

    :cond_430
    if-eqz v8, :cond_43b

    .line 2317
    iget-object v6, v8, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    add-int/2addr v1, v6

    :cond_43b
    if-eqz v2, :cond_47f

    if-eqz v3, :cond_47f

    if-eqz v0, :cond_47f

    if-eqz v7, :cond_47f

    if-ne v9, v14, :cond_44d

    .line 2322
    iget-object v1, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    :cond_44d
    move v6, v1

    if-ne v9, v12, :cond_45b

    .line 2326
    iget-object v1, v12, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    move/from16 v18, v1

    goto :goto_45d

    :cond_45b
    move/from16 v18, v4

    :goto_45d
    if-eqz v34, :cond_462

    const/16 v19, 0x6

    goto :goto_464

    :cond_462
    const/16 v19, 0x4

    :goto_464
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v4, v6

    move-object/from16 v43, v41

    const/16 v20, 0x6

    const/16 v21, 0x4

    move-object v6, v0

    move-object/from16 v0, v42

    move-object/from16 v24, v8

    move/from16 v8, v18

    move-object/from16 v44, v0

    move-object v0, v9

    move/from16 v9, v19

    .line 2332
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_488

    :cond_47f
    move-object/from16 v24, v8

    move-object v0, v9

    move-object/from16 v43, v41

    move-object/from16 v44, v42

    goto/16 :goto_3be

    .line 4643
    :goto_488
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_490

    move-object v8, v0

    goto :goto_492

    :cond_490
    move-object/from16 v8, v24

    :goto_492
    move-object/from16 v0, v43

    move-object/from16 v9, v44

    goto/16 :goto_39e

    :cond_498
    move-object/from16 v43, v0

    move-object/from16 v1, v38

    const/16 v20, 0x6

    const/16 v21, 0x4

    if-eqz v22, :cond_5ce

    if-eqz v14, :cond_5ce

    .line 2346
    iget v0, v1, Landroidx/constraintlayout/a/a/d;->j:I

    if-lez v0, :cond_4b1

    iget v0, v1, Landroidx/constraintlayout/a/a/d;->i:I

    iget v1, v1, Landroidx/constraintlayout/a/a/d;->j:I

    if-ne v0, v1, :cond_4b1

    const/16 v34, 0x1

    goto :goto_4b3

    :cond_4b1
    move/from16 v34, v16

    :goto_4b3
    move-object v0, v14

    move-object v9, v0

    :goto_4b5
    if-eqz v0, :cond_56c

    .line 2348
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v1, v1, v11

    :goto_4bb
    if-eqz v1, :cond_4c8

    .line 5643
    iget v2, v1, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4c8

    .line 2350
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    aget-object v1, v1, v11

    goto :goto_4bb

    :cond_4c8
    if-eq v0, v14, :cond_55d

    if-eq v0, v12, :cond_55d

    if-eqz v1, :cond_55d

    if-ne v1, v12, :cond_4d3

    move-object/from16 v8, v25

    goto :goto_4d4

    :cond_4d3
    move-object v8, v1

    .line 2356
    :goto_4d4
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    .line 2357
    iget-object v2, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2359
    iget-object v3, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v4, v15, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2363
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    .line 2364
    iget-object v5, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v5

    if-eqz v8, :cond_504

    .line 2367
    iget-object v6, v8, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v15

    .line 2368
    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v45, v7

    .line 2369
    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_501

    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_520

    :cond_501
    move-object/from16 v7, v25

    goto :goto_520

    .line 2371
    :cond_504
    iget-object v6, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v6, :cond_511

    .line 2373
    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v46, v6

    goto :goto_515

    :cond_511
    move-object/from16 v46, v6

    move-object/from16 v7, v25

    .line 2375
    :goto_515
    iget-object v6, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object/from16 v45, v7

    move-object v7, v6

    move-object/from16 v6, v46

    :goto_520
    if-eqz v6, :cond_527

    .line 2379
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v6

    add-int/2addr v5, v6

    :cond_527
    move/from16 v18, v5

    if-eqz v9, :cond_534

    .line 2382
    iget-object v5, v9, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v4

    add-int/2addr v1, v4

    :cond_534
    move v4, v1

    if-eqz v34, :cond_53a

    move/from16 v19, v20

    goto :goto_53c

    :cond_53a
    move/from16 v19, v21

    :goto_53c
    if-eqz v2, :cond_556

    if-eqz v3, :cond_556

    if-eqz v45, :cond_556

    if-eqz v7, :cond_556

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object/from16 v6, v45

    move-object/from16 v26, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v19

    .line 2389
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_55a

    :cond_556
    move-object/from16 v26, v8

    move-object/from16 v18, v9

    :goto_55a
    move-object/from16 v1, v26

    goto :goto_55f

    :cond_55d
    move-object/from16 v18, v9

    .line 6643
    :goto_55f
    iget v2, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_567

    move-object v9, v0

    goto :goto_569

    :cond_567
    move-object/from16 v9, v18

    :goto_569
    move-object v0, v1

    goto/16 :goto_4b5

    .line 2399
    :cond_56c
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v15

    move-object/from16 v1, v43

    .line 2400
    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v15

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 2401
    iget-object v2, v12, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v3, v15, 0x1

    aget-object v9, v2, v3

    .line 2402
    iget-object v2, v13, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v3

    iget-object v8, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_5bb

    if-eq v14, v12, :cond_597

    .line 2405
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v1, v0, v3}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    move-object v1, v8

    move-object v0, v9

    goto :goto_5bd

    :cond_597
    if-eqz v8, :cond_5bb

    .line 2407
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v3, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v9, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v7, v8, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    .line 2408
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    const/16 v18, 0x5

    move-object/from16 v1, p1

    move-object/from16 v47, v8

    move v8, v0

    move-object v0, v9

    move/from16 v9, v18

    .line 2407
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    move-object/from16 v1, v47

    goto :goto_5bd

    :cond_5bb
    move-object v0, v9

    move-object v1, v8

    :goto_5bd
    if-eqz v1, :cond_5ce

    if-eq v14, v12, :cond_5ce

    .line 2412
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    neg-int v0, v0

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v1, v0, v3}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_5ce
    :goto_5ce
    if-nez v23, :cond_5d2

    if-eqz v22, :cond_630

    :cond_5d2
    if-eqz v14, :cond_630

    .line 2419
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v15

    .line 2420
    iget-object v1, v12, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v2, v15, 0x1

    aget-object v1, v1, v2

    .line 2421
    iget-object v3, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_5e7

    iget-object v3, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_5e9

    :cond_5e7
    move-object/from16 v3, v25

    .line 2422
    :goto_5e9
    iget-object v4, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v4, :cond_5f2

    iget-object v4, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_5f4

    :cond_5f2
    move-object/from16 v4, v25

    :goto_5f4
    if-eq v13, v12, :cond_605

    .line 2424
    iget-object v4, v13, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v4, v2

    .line 2425
    iget-object v5, v4, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v5, :cond_603

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    goto :goto_605

    :cond_603
    move-object/from16 v4, v25

    :cond_605
    :goto_605
    move-object v6, v4

    if-ne v14, v12, :cond_610

    .line 2428
    iget-object v0, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, v15

    .line 2429
    iget-object v1, v14, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v2

    :cond_610
    if-eqz v3, :cond_630

    if-eqz v6, :cond_630

    .line 2433
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v4

    if-nez v12, :cond_61b

    goto :goto_61c

    :cond_61b
    move-object v13, v12

    .line 2438
    :goto_61c
    iget-object v5, v13, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v8

    .line 2439
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v7, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_630
    :goto_630
    add-int/lit8 v8, v40, 0x1

    move/from16 v9, v17

    move-object/from16 v14, v31

    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_63a
    return-void
.end method
