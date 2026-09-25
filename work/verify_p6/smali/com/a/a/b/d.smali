.class public final Lcom/a/a/b/d;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/a/a/s;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/a/a/b/d;


# instance fields
.field public b:D

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    sput-object v0, Lcom/a/a/b/d;->a:Lcom/a/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 54
    iput-wide v0, p0, Lcom/a/a/b/d;->b:D

    const/16 v0, 0x88

    .line 55
    iput v0, p0, Lcom/a/a/b/d;->c:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/a/a/b/d;->d:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/d;->f:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/d;->g:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/a/a/b/d;
    .locals 1

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/b/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private a(Lcom/a/a/a/d;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 243
    invoke-interface {p1}, Lcom/a/a/a/d;->a()D

    move-result-wide v0

    .line 244
    iget-wide p0, p0, Lcom/a/a/b/d;->b:D

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/a/a/a/e;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 253
    invoke-interface {p1}, Lcom/a/a/a/e;->a()D

    move-result-wide v0

    .line 254
    iget-wide p0, p0, Lcom/a/a/b/d;->b:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/a/a/b/d;->d(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/e;",
            "Lcom/a/a/c/a<",
            "TT;>;)",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 1094
    iget-object v0, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 113
    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0, v2}, Lcom/a/a/b/d;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v2

    :goto_1
    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p0, v1}, Lcom/a/a/b/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    new-instance v0, Lcom/a/a/b/d$1;

    move-object v4, v0

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/a/a/b/d$1;-><init>(Lcom/a/a/b/d;ZZLcom/a/a/e;Lcom/a/a/c/a;)V

    return-object v0
.end method

.method public final a(Lcom/a/a/a/d;Lcom/a/a/a/e;)Z
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/a/a/b/d;->a(Lcom/a/a/a/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/a/a/b/d;->a(Lcom/a/a/a/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    iget-wide v0, p0, Lcom/a/a/b/d;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/a/a/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    const-class v2, Lcom/a/a/a/e;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/e;

    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/d;->a(Lcom/a/a/a/d;Lcom/a/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    iget-boolean p0, p0, Lcom/a/a/b/d;->d:Z

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/a/a/b/d;->c(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 202
    :cond_1
    invoke-static {p1}, Lcom/a/a/b/d;->b(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/a/a/b/d;->f:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/a/a/b/d;->g:Ljava/util/List;

    .line 216
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/a;

    .line 217
    invoke-interface {p1}, Lcom/a/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/a/a/b/d;->a()Lcom/a/a/b/d;

    move-result-object p0

    return-object p0
.end method
