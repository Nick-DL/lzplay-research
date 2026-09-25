.class Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BaseRoundCornerProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 491
    new-instance v0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState$1;

    invoke-direct {v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 459
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->a:F

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->b:F

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->c:F

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->d:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->e:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->f:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->g:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->h:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 476
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 478
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 479
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 481
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget p2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-boolean p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->i:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
