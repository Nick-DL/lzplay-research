.class final Lcom/x/plus/pro/update/e$a;
.super Ljava/lang/Object;
.source "UpdateInstance.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/update/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 159
    check-cast p1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 160
    check-cast p2, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 1114
    iget p0, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->i:I

    .line 2114
    iget p1, p2, Lcom/x/plus/pro/beans/ApkBaseInfo;->i:I

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
