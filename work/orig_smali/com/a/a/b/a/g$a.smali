.class final Lcom/a/a/b/a/g$a;
.super Lcom/a/a/r;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/r<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/a/g;

.field private final b:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/b/a/g;Lcom/a/a/e;Ljava/lang/reflect/Type;Lcom/a/a/r;Ljava/lang/reflect/Type;Lcom/a/a/r;Lcom/a/a/b/i;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/e;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/r<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/r<",
            "TV;>;",
            "Lcom/a/a/b/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/a/a/b/a/g$a;->a:Lcom/a/a/b/a/g;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 153
    new-instance p1, Lcom/a/a/b/a/m;

    invoke-direct {p1, p2, p4, p3}, Lcom/a/a/b/a/m;-><init>(Lcom/a/a/e;Lcom/a/a/r;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/a/a/b/a/g$a;->b:Lcom/a/a/r;

    .line 155
    new-instance p1, Lcom/a/a/b/a/m;

    invoke-direct {p1, p2, p6, p5}, Lcom/a/a/b/a/m;-><init>(Lcom/a/a/e;Lcom/a/a/r;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    .line 157
    iput-object p7, p0, Lcom/a/a/b/a/g$a;->d:Lcom/a/a/b/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 5

    .line 1161
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 1162
    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    .line 1163
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 1167
    :cond_d
    iget-object v1, p0, Lcom/a/a/b/a/g$a;->d:Lcom/a/a/b/i;

    invoke-interface {v1}, Lcom/a/a/b/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1169
    sget-object v2, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    if-ne v0, v2, :cond_4f

    .line 1170
    invoke-virtual {p1}, Lcom/a/a/d/a;->a()V

    .line 1171
    :goto_1c
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1172
    invoke-virtual {p1}, Lcom/a/a/d/a;->a()V

    .line 1173
    iget-object v0, p0, Lcom/a/a/b/a/g$a;->b:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 1174
    iget-object v2, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    invoke-virtual {v2, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 1175
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 1179
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()V

    goto :goto_1c

    .line 1177
    :cond_3b
    new-instance p0, Lcom/a/a/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duplicate key: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/a/a/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1181
    :cond_4b
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()V

    goto :goto_83

    .line 1183
    :cond_4f
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()V

    .line 1184
    :goto_52
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1185
    sget-object v0, Lcom/a/a/b/f;->a:Lcom/a/a/b/f;

    invoke-virtual {v0, p1}, Lcom/a/a/b/f;->a(Lcom/a/a/d/a;)V

    .line 1186
    iget-object v0, p0, Lcom/a/a/b/a/g$a;->b:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    iget-object v2, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    invoke-virtual {v2, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 1188
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_70

    goto :goto_52

    .line 1190
    :cond_70
    new-instance p0, Lcom/a/a/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duplicate key: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/a/a/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1193
    :cond_80
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()V

    :goto_83
    return-object v1
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 10

    .line 145
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_8

    .line 1200
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 1204
    :cond_8
    iget-object v0, p0, Lcom/a/a/b/a/g$a;->a:Lcom/a/a/b/a/g;

    iget-boolean v0, v0, Lcom/a/a/b/a/g;->a:Z

    if-nez v0, :cond_3e

    .line 1205
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    .line 1206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    .line 1208
    iget-object v1, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_19

    .line 1210
    :cond_3a
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void

    .line 1215
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1217
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_5a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1219
    iget-object v5, p0, Lcom/a/a/b/a/g$a;->b:Lcom/a/a/r;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/a/a/r;->a(Ljava/lang/Object;)Lcom/a/a/i;

    move-result-object v5

    .line 1220
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    instance-of v4, v5, Lcom/a/a/g;

    if-nez v4, :cond_85

    .line 2056
    instance-of v4, v5, Lcom/a/a/l;

    if-eqz v4, :cond_83

    goto :goto_85

    :cond_83
    move v4, v2

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v4, 0x1

    :goto_86
    or-int/2addr v3, v4

    goto :goto_5a

    :cond_88
    if-eqz v3, :cond_b2

    .line 1226
    invoke-virtual {p1}, Lcom/a/a/d/c;->a()Lcom/a/a/d/c;

    .line 1227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_91
    if-ge v2, p2, :cond_ae

    .line 1228
    invoke-virtual {p1}, Lcom/a/a/d/c;->a()Lcom/a/a/d/c;

    .line 1229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/i;

    invoke-static {v3, p1}, Lcom/a/a/b/k;->a(Lcom/a/a/i;Lcom/a/a/d/c;)V

    .line 1230
    iget-object v3, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    .line 1231
    invoke-virtual {p1}, Lcom/a/a/d/c;->b()Lcom/a/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 1233
    :cond_ae
    invoke-virtual {p1}, Lcom/a/a/d/c;->b()Lcom/a/a/d/c;

    return-void

    .line 1235
    :cond_b2
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    .line 1236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_b9
    if-ge v2, p2, :cond_113

    .line 1237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/i;

    .line 3065
    instance-of v4, v3, Lcom/a/a/n;

    if-eqz v4, :cond_f8

    .line 2247
    invoke-virtual {v3}, Lcom/a/a/i;->g()Lcom/a/a/n;

    move-result-object v3

    .line 3150
    iget-object v4, v3, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_d8

    .line 2249
    invoke-virtual {v3}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_fe

    .line 4116
    :cond_d8
    iget-object v4, v3, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_e7

    .line 2251
    invoke-virtual {v3}, Lcom/a/a/n;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_fe

    .line 4170
    :cond_e7
    iget-object v4, v3, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_f2

    .line 2253
    invoke-virtual {v3}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_fe

    .line 2255
    :cond_f2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5075
    :cond_f8
    instance-of v3, v3, Lcom/a/a/k;

    if-eqz v3, :cond_10d

    const-string v3, "null"

    .line 1238
    :goto_fe
    invoke-virtual {p1, v3}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    .line 1239
    iget-object v3, p0, Lcom/a/a/b/a/g$a;->c:Lcom/a/a/r;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 2260
    :cond_10d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1241
    :cond_113
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void
.end method
