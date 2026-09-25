.class final Lcom/a/a/b/a/i$1;
.super Lcom/a/a/b/a/i$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lcom/a/a/r;

.field final synthetic d:Lcom/a/a/e;

.field final synthetic e:Lcom/a/a/c/a;

.field final synthetic f:Z

.field final synthetic g:Lcom/a/a/b/a/i;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/a/a/r;Lcom/a/a/e;Lcom/a/a/c/a;Z)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/a/a/b/a/i$1;->g:Lcom/a/a/b/a/i;

    iput-object p5, p0, Lcom/a/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/a/a/b/a/i$1;->b:Z

    iput-object p7, p0, Lcom/a/a/b/a/i$1;->c:Lcom/a/a/r;

    iput-object p8, p0, Lcom/a/a/b/a/i$1;->d:Lcom/a/a/e;

    iput-object p9, p0, Lcom/a/a/b/a/i$1;->e:Lcom/a/a/c/a;

    iput-boolean p10, p0, Lcom/a/a/b/a/i$1;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/a/a/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/a/a/b/a/i$1;->c:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 132
    iget-boolean v0, p0, Lcom/a/a/b/a/i$1;->f:Z

    if-nez v0, :cond_1

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/a/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/a/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 125
    iget-boolean v0, p0, Lcom/a/a/b/a/i$1;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/a/a/b/a/i$1;->c:Lcom/a/a/r;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/a/a/b/a/m;

    iget-object v1, p0, Lcom/a/a/b/a/i$1;->d:Lcom/a/a/e;

    iget-object v2, p0, Lcom/a/a/b/a/i$1;->c:Lcom/a/a/r;

    iget-object p0, p0, Lcom/a/a/b/a/i$1;->e:Lcom/a/a/c/a;

    .line 1101
    iget-object p0, p0, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 126
    invoke-direct {v0, v1, v2, p0}, Lcom/a/a/b/a/m;-><init>(Lcom/a/a/e;Lcom/a/a/r;Ljava/lang/reflect/Type;)V

    move-object p0, v0

    .line 127
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/a/a/b/a/i$1;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/a/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
