.class public abstract Landroidx/lifecycle/LiveData$a;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final c:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TT;>;)V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 393
    iput p1, p0, Landroidx/lifecycle/LiveData$a;->e:I

    .line 396
    iput-object p2, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/n;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .registers 6

    .line 409
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 414
    :cond_5
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    .line 415
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget p1, p1, Landroidx/lifecycle/LiveData;->d:I

    const/4 v0, 0x1

    if-nez p1, :cond_10

    move p1, v0

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 416
    :goto_11
    iget-object v1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget v2, v1, Landroidx/lifecycle/LiveData;->d:I

    iget-boolean v3, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    add-int/2addr v2, v0

    iput v2, v1, Landroidx/lifecycle/LiveData;->d:I

    if-eqz p1, :cond_29

    .line 417
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz p1, :cond_29

    .line 418
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()V

    .line 420
    :cond_29
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget p1, p1, Landroidx/lifecycle/LiveData;->d:I

    if-nez p1, :cond_38

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-nez p1, :cond_38

    .line 421
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->b()V

    .line 423
    :cond_38
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz p1, :cond_41

    .line 424
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$a;)V

    :cond_41
    return-void
.end method

.method abstract a()Z
.end method

.method public a(Landroidx/lifecycle/h;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method b()V
    .registers 1

    return-void
.end method
