.class public final Landroidx/core/app/g;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:Z

.field final e:Landroid/os/Bundle;

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a([Landroidx/core/app/g;)[Landroid/app/RemoteInput;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 505
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_35

    .line 506
    aget-object v2, p0, v1

    .line 1513
    new-instance v3, Landroid/app/RemoteInput$Builder;

    .line 2092
    iget-object v4, v2, Landroidx/core/app/g;->a:Ljava/lang/String;

    .line 1513
    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 2099
    iget-object v4, v2, Landroidx/core/app/g;->b:Ljava/lang/CharSequence;

    .line 1514
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2106
    iget-object v4, v2, Landroidx/core/app/g;->c:[Ljava/lang/CharSequence;

    .line 1515
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2132
    iget-boolean v4, v2, Landroidx/core/app/g;->d:Z

    .line 1516
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2139
    iget-object v2, v2, Landroidx/core/app/g;->e:Landroid/os/Bundle;

    .line 1517
    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    .line 1518
    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    .line 506
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_35
    return-object v0
.end method
