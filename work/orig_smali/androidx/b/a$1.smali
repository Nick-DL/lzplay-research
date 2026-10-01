.class final Landroidx/b/a$1;
.super Landroidx/b/f;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/b/a;->a()Landroidx/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/b/f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/b/a;


# direct methods
.method constructor <init>(Landroidx/b/a;)V
    .registers 2

    .line 76
    iput-object p1, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-direct {p0}, Landroidx/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 1

    .line 79
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    iget p0, p0, Landroidx/b/a;->h:I

    return p0
.end method

.method protected final a(Ljava/lang/Object;)I
    .registers 2

    .line 89
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0, p1}, Landroidx/b/a;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected final a(II)Ljava/lang/Object;
    .registers 3

    .line 84
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    iget-object p0, p0, Landroidx/b/a;->g:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 109
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0, p1, p2}, Landroidx/b/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final a(I)V
    .registers 2

    .line 114
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0, p1}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .registers 2

    .line 94
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0, p1}, Landroidx/b/a;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected final b()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    return-object p0
.end method

.method protected final c()V
    .registers 1

    .line 119
    iget-object p0, p0, Landroidx/b/a$1;->a:Landroidx/b/a;

    invoke-virtual {p0}, Landroidx/b/a;->clear()V

    return-void
.end method
