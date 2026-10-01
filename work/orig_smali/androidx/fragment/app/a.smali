.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/i;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/g$d;


# instance fields
.field final a:Landroidx/fragment/app/g;

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/g;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/fragment/app/a;->c:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    return-void
.end method

.method static a(Landroidx/fragment/app/i$a;)Z
    .registers 2

    .line 652
    iget-object p0, p0, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1c

    .line 653
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_1c

    .line 654
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private b(Z)I
    .registers 5

    .line 303
    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    if-nez v0, :cond_46

    .line 304
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    const-string v1, "Commit: "

    .line 305
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Landroidx/core/d/b;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/d/b;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 308
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2b
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 312
    iget-boolean v0, p0, Landroidx/fragment/app/a;->k:Z

    if-eqz v0, :cond_3b

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/a;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/a;->c:I

    goto :goto_3e

    :cond_3b
    const/4 v0, -0x1

    .line 315
    iput v0, p0, Landroidx/fragment/app/a;->c:I

    .line 317
    :goto_3e
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/g$d;Z)V

    .line 318
    iget p0, p0, Landroidx/fragment/app/a;->c:I

    return p0

    .line 303
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "commit already called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    move p2, v0

    .line 528
    :goto_3
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_af

    .line 529
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 530
    iget v3, v2, Landroidx/fragment/app/i$a;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_b0

    :pswitch_1c
    goto/16 :goto_ac

    .line 585
    :pswitch_1e
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v4, Landroidx/fragment/app/i$a;

    invoke-direct {v4, v5, v1}, Landroidx/fragment/app/i$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    .line 588
    iget-object v1, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_ac

    .line 537
    :pswitch_2e
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v3, v1, :cond_ac

    .line 539
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/i$a;

    iget-object v2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v5, v2}, Landroidx/fragment/app/i$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    move-object v1, v4

    goto/16 :goto_ac

    .line 546
    :pswitch_48
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    .line 547
    iget v7, v3, Landroidx/fragment/app/Fragment;->w:I

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move-object v9, v1

    move v1, p2

    move p2, v0

    :goto_54
    if-ltz v8, :cond_95

    .line 550
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    .line 551
    iget v11, v10, Landroidx/fragment/app/Fragment;->w:I

    if-ne v11, v7, :cond_92

    if-ne v10, v3, :cond_64

    move p2, v6

    goto :goto_92

    :cond_64
    if-ne v10, v9, :cond_73

    .line 558
    iget-object v9, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/i$a;

    invoke-direct {v11, v5, v10}, Landroidx/fragment/app/i$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object v9, v4

    .line 562
    :cond_73
    new-instance v11, Landroidx/fragment/app/i$a;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v10}, Landroidx/fragment/app/i$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 563
    iget v12, v2, Landroidx/fragment/app/i$a;->c:I

    iput v12, v11, Landroidx/fragment/app/i$a;->c:I

    .line 564
    iget v12, v2, Landroidx/fragment/app/i$a;->e:I

    iput v12, v11, Landroidx/fragment/app/i$a;->e:I

    .line 565
    iget v12, v2, Landroidx/fragment/app/i$a;->d:I

    iput v12, v11, Landroidx/fragment/app/i$a;->d:I

    .line 566
    iget v12, v2, Landroidx/fragment/app/i$a;->f:I

    iput v12, v11, Landroidx/fragment/app/i$a;->f:I

    .line 567
    iget-object v12, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v1, v6

    :cond_92
    :goto_92
    add-int/lit8 v8, v8, -0x1

    goto :goto_54

    :cond_95
    if-eqz p2, :cond_a0

    .line 574
    iget-object p2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, v1, -0x1

    :goto_9e
    move-object v1, v9

    goto :goto_ac

    .line 577
    :cond_a0
    iput v6, v2, Landroidx/fragment/app/i$a;->a:I

    .line 578
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v1

    goto :goto_9e

    .line 533
    :pswitch_a7
    iget-object v2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    :goto_ac
    add-int/2addr p2, v6

    goto/16 :goto_3

    :cond_af
    return-object v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_48
        :pswitch_2e
        :pswitch_1c
        :pswitch_1c
        :pswitch_2e
        :pswitch_a7
        :pswitch_1e
    .end packed-switch
.end method

.method public final a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i;
    .registers 4

    .line 186
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    if-ne v0, v1, :cond_b

    goto :goto_28

    .line 187
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .registers 3

    .line 272
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 273
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 274
    iget-object v1, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    :cond_1e
    return-void
.end method

.method final a(I)V
    .registers 8

    .line 255
    iget-boolean v0, p0, Landroidx/fragment/app/a;->k:Z

    if-nez v0, :cond_5

    return-void

    .line 258
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_24
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_68

    .line 262
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 263
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_65

    .line 264
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v3, Landroidx/fragment/app/Fragment;->q:I

    add-int/2addr v4, p1

    iput v4, v3, Landroidx/fragment/app/Fragment;->q:I

    .line 265
    sget-boolean v3, Landroidx/fragment/app/g;->c:Z

    if-eqz v3, :cond_65

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->q:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_68
    return-void
.end method

.method final a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 5

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 180
    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iput-object p0, p2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_da

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    if-eqz v0, :cond_46

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Landroidx/fragment/app/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :cond_46
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroidx/fragment/app/a;->f:I

    if-eqz v0, :cond_6d

    .line 74
    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroidx/fragment/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :cond_6d
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    if-nez v0, :cond_75

    iget v0, p0, Landroidx/fragment/app/a;->h:I

    if-eqz v0, :cond_94

    .line 80
    :cond_75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 82
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroidx/fragment/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    :cond_94
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    .line 86
    :cond_9c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_b7
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    .line 92
    :cond_bf
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    :cond_da
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a2

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f1
    if-ge v1, v0, :cond_1a2

    .line 103
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 105
    iget v3, v2, Landroidx/fragment/app/i$a;->a:I

    packed-switch v3, :pswitch_data_1a4

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroidx/fragment/app/i$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_131

    :pswitch_111
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_131

    :pswitch_114
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_131

    :pswitch_117
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_131

    :pswitch_11a
    const-string v3, "ATTACH"

    goto :goto_131

    :pswitch_11d
    const-string v3, "DETACH"

    goto :goto_131

    :pswitch_120
    const-string v3, "SHOW"

    goto :goto_131

    :pswitch_123
    const-string v3, "HIDE"

    goto :goto_131

    :pswitch_126
    const-string v3, "REMOVE"

    goto :goto_131

    :pswitch_129
    const-string v3, "REPLACE"

    goto :goto_131

    :pswitch_12c
    const-string v3, "ADD"

    goto :goto_131

    :pswitch_12f
    const-string v3, "NULL"

    .line 119
    :goto_131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 120
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 121
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_19e

    .line 123
    iget v3, v2, Landroidx/fragment/app/i$a;->c:I

    if-nez v3, :cond_158

    iget v3, v2, Landroidx/fragment/app/i$a;->d:I

    if-eqz v3, :cond_177

    .line 124
    :cond_158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Landroidx/fragment/app/i$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 126
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v3, v2, Landroidx/fragment/app/i$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    :cond_177
    iget v3, v2, Landroidx/fragment/app/i$a;->e:I

    if-nez v3, :cond_17f

    iget v3, v2, Landroidx/fragment/app/i$a;->f:I

    if-eqz v3, :cond_19e

    .line 130
    :cond_17f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v3, v2, Landroidx/fragment/app/i$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 132
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget v2, v2, Landroidx/fragment/app/i$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f1

    :cond_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
    .end packed-switch
.end method

.method final a(Z)V
    .registers 8

    .line 451
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_a5

    .line 452
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 453
    iget-object v3, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_21

    .line 455
    iget v4, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v4}, Landroidx/fragment/app/g;->c(I)I

    move-result v4

    iget v5, p0, Landroidx/fragment/app/a;->j:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->a(II)V

    .line 458
    :cond_21
    iget v4, v2, Landroidx/fragment/app/i$a;->a:I

    if-eq v4, v1, :cond_87

    packed-switch v4, :pswitch_data_b6

    .line 493
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown cmd: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Landroidx/fragment/app/i$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :pswitch_3e
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget-object v5, v2, Landroidx/fragment/app/i$a;->g:Landroidx/lifecycle/e$b;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V

    goto :goto_91

    .line 487
    :pswitch_46
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/g;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 484
    :pswitch_4c
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/g;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 480
    :pswitch_53
    iget v4, v2, Landroidx/fragment/app/i$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 481
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/g;->g(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 476
    :pswitch_5e
    iget v4, v2, Landroidx/fragment/app/i$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 477
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/g;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 472
    :pswitch_69
    iget v4, v2, Landroidx/fragment/app/i$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 473
    invoke-static {v3}, Landroidx/fragment/app/g;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 468
    :pswitch_72
    iget v4, v2, Landroidx/fragment/app/i$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 469
    invoke-static {v3}, Landroidx/fragment/app/g;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_91

    .line 464
    :pswitch_7b
    iget v4, v2, Landroidx/fragment/app/i$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 465
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_91

    .line 460
    :cond_87
    iget v4, v2, Landroidx/fragment/app/i$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 461
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/g;->d(Landroidx/fragment/app/Fragment;)V

    .line 495
    :goto_91
    iget-boolean v4, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v4, :cond_a1

    iget v2, v2, Landroidx/fragment/app/i$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a1

    if-eqz v3, :cond_a1

    .line 496
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;)V

    :cond_a1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 499
    :cond_a5
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_b4

    if-eqz p1, :cond_b4

    .line 500
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget p0, p0, Landroidx/fragment/app/g;->p:I

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/g;->a(IZ)V

    :cond_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x3
        :pswitch_7b
        :pswitch_72
        :pswitch_69
        :pswitch_5e
        :pswitch_53
        :pswitch_4c
        :pswitch_46
        :pswitch_3e
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;II)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    return v0

    .line 360
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_d
    if-ge v2, v1, :cond_57

    .line 363
    iget-object v4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/i$a;

    .line 364
    iget-object v5, v4, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_20

    iget-object v4, v4, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->w:I

    goto :goto_21

    :cond_20
    move v4, v0

    :goto_21
    if-eqz v4, :cond_54

    if-eq v4, v3, :cond_54

    move v3, p2

    :goto_26
    if-ge v3, p3, :cond_53

    .line 368
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    .line 369
    iget-object v6, v5, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_35
    if-ge v7, v6, :cond_50

    .line 371
    iget-object v8, v5, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/i$a;

    .line 372
    iget-object v9, v8, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_48

    iget-object v8, v8, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->w:I

    goto :goto_49

    :cond_48
    move v8, v0

    :goto_49
    if-ne v8, v4, :cond_4d

    const/4 p0, 0x1

    return p0

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_53
    move v3, v4

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_57
    return v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 332
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "Run: "

    .line 333
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean p1, p0, Landroidx/fragment/app/a;->k:Z

    if-eqz p1, :cond_31

    .line 339
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    .line 3191
    iget-object p2, p1, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    if-nez p2, :cond_2c

    .line 3192
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    .line 3194
    :cond_2c
    iget-object p1, p1, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Landroidx/fragment/app/a;->b(Z)I

    move-result p0

    return p0
.end method

.method final b(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_35

    .line 608
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 609
    iget v3, v2, Landroidx/fragment/app/i$a;->a:I

    if-eq v3, v1, :cond_2d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    packed-switch v3, :pswitch_data_36

    goto :goto_32

    .line 625
    :pswitch_1d
    iget-object v3, v2, Landroidx/fragment/app/i$a;->g:Landroidx/lifecycle/e$b;

    iput-object v3, v2, Landroidx/fragment/app/i$a;->h:Landroidx/lifecycle/e$b;

    goto :goto_32

    .line 619
    :pswitch_22
    iget-object p2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_32

    :pswitch_25
    const/4 p2, 0x0

    goto :goto_32

    .line 616
    :cond_27
    :pswitch_27
    iget-object v2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 612
    :cond_2d
    :pswitch_2d
    iget-object v2, v2, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_35
    return-object p2

    :pswitch_data_36
    .packed-switch 0x6
        :pswitch_27
        :pswitch_2d
        :pswitch_25
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method public final b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i;
    .registers 4

    .line 219
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    if-ne v0, v1, :cond_b

    goto :goto_28

    .line 220
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroidx/fragment/app/i;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i;

    move-result-object p0

    return-object p0
.end method

.method final b(I)Z
    .registers 7

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 347
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/i$a;

    .line 348
    iget-object v4, v3, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1b

    iget-object v3, v3, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->w:I

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    if-eqz v3, :cond_22

    if-ne v3, p1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    return v1
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x1

    .line 287
    invoke-direct {p0, v0}, Landroidx/fragment/app/a;->b(Z)I

    move-result p0

    return p0
.end method

.method final d()V
    .registers 9

    .line 389
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_a0

    .line 391
    iget-object v4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/i$a;

    .line 392
    iget-object v5, v4, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1e

    .line 394
    iget v6, p0, Landroidx/fragment/app/a;->i:I

    iget v7, p0, Landroidx/fragment/app/a;->j:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->a(II)V

    .line 396
    :cond_1e
    iget v6, v4, Landroidx/fragment/app/i$a;->a:I

    if-eq v6, v3, :cond_83

    packed-switch v6, :pswitch_data_ae

    .line 431
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cmd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroidx/fragment/app/i$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :pswitch_3b
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget-object v7, v4, Landroidx/fragment/app/i$a;->h:Landroidx/lifecycle/e$b;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V

    goto :goto_8d

    .line 425
    :pswitch_43
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/g;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 422
    :pswitch_4a
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/g;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 418
    :pswitch_50
    iget v6, v4, Landroidx/fragment/app/i$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 419
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/g;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 414
    :pswitch_5b
    iget v6, v4, Landroidx/fragment/app/i$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 415
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/g;->g(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 410
    :pswitch_66
    iget v6, v4, Landroidx/fragment/app/i$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 411
    invoke-static {v5}, Landroidx/fragment/app/g;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 406
    :pswitch_6f
    iget v6, v4, Landroidx/fragment/app/i$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 407
    invoke-static {v5}, Landroidx/fragment/app/g;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 402
    :pswitch_78
    iget v6, v4, Landroidx/fragment/app/i$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 403
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/g;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_8d

    .line 398
    :cond_83
    iget v6, v4, Landroidx/fragment/app/i$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 399
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 433
    :goto_8d
    iget-boolean v6, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v6, :cond_9c

    iget v4, v4, Landroidx/fragment/app/i$a;->a:I

    if-eq v4, v3, :cond_9c

    if-eqz v5, :cond_9c

    .line 434
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;)V

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 437
    :cond_a0
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_ad

    .line 439
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget p0, p0, Landroidx/fragment/app/g;->p:I

    invoke-virtual {v0, p0, v3}, Landroidx/fragment/app/g;->a(IZ)V

    :cond_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x3
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5b
        :pswitch_50
        :pswitch_4a
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method

.method final setOnStartPostponedListener(Landroidx/fragment/app/Fragment$c;)V
    .registers 5

    const/4 v0, 0x0

    .line 643
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 644
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/i$a;

    .line 645
    invoke-static {v1}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/i$a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 646
    iget-object v1, v1, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$c;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string p0, "}"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
