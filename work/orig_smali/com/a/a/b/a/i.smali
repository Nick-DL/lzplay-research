.class public final Lcom/a/a/b/a/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/i$a;,
        Lcom/a/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/c;

.field private final b:Lcom/a/a/d;

.field private final c:Lcom/a/a/b/d;

.field private final d:Lcom/a/a/b/a/d;

.field private final e:Lcom/a/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/a/a/b/c;Lcom/a/a/d;Lcom/a/a/b/d;Lcom/a/a/b/a/d;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/a/a/b/b/b;->a()Lcom/a/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/i;->e:Lcom/a/a/b/b/b;

    .line 58
    iput-object p1, p0, Lcom/a/a/b/a/i;->a:Lcom/a/a/b/c;

    .line 59
    iput-object p2, p0, Lcom/a/a/b/a/i;->b:Lcom/a/a/d;

    .line 60
    iput-object p3, p0, Lcom/a/a/b/a/i;->c:Lcom/a/a/b/d;

    .line 61
    iput-object p4, p0, Lcom/a/a/b/a/i;->d:Lcom/a/a/b/a/d;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    const-class v0, Lcom/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    if-nez v0, :cond_15

    .line 76
    iget-object p0, p0, Lcom/a/a/b/a/i;->b:Lcom/a/a/d;

    invoke-interface {p0, p1}, Lcom/a/a/d;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 80
    :cond_15
    invoke-interface {v0}, Lcom/a/a/a/c;->a()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-interface {v0}, Lcom/a/a/a/c;->b()[Ljava/lang/String;

    move-result-object p1

    .line 82
    array-length v0, p1

    if-nez v0, :cond_25

    .line 83
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 86
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    array-length p0, p1

    const/4 v1, 0x0

    :goto_32
    if-ge v1, p0, :cond_3c

    aget-object v2, p1, v1

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3c
    return-object v0
.end method

.method private a(Lcom/a/a/e;Lcom/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/e;",
            "Lcom/a/a/c/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 145
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v13

    :cond_10
    move-object/from16 v0, p2

    .line 3101
    iget-object v14, v0, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    move-object/from16 v15, p3

    move-object v10, v0

    .line 151
    :goto_17
    const-class v0, Ljava/lang/Object;

    if-eq v15, v0, :cond_142

    .line 152
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 153
    array-length v8, v9

    const/4 v7, 0x0

    move v6, v7

    :goto_22
    if-ge v6, v8, :cond_127

    aget-object v5, v9, v6

    const/4 v4, 0x1

    .line 154
    invoke-direct {v11, v5, v4}, Lcom/a/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 155
    invoke-direct {v11, v5, v7}, Lcom/a/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v0, :cond_42

    if-eqz v16, :cond_34

    goto :goto_42

    :cond_34
    move/from16 v30, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v22, v9

    move-object/from16 v31, v10

    move-object/from16 v21, v15

    goto/16 :goto_f9

    .line 159
    :cond_42
    :goto_42
    iget-object v1, v11, Lcom/a/a/b/a/i;->e:Lcom/a/a/b/b/b;

    invoke-virtual {v1, v5}, Lcom/a/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 4101
    iget-object v1, v10, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 160
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v15, v2}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 161
    invoke-direct {v11, v5}, Lcom/a/a/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v19, v0

    move v1, v7

    move-object/from16 v0, v18

    :goto_60
    if-ge v1, v2, :cond_ea

    .line 164
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    check-cast v15, Ljava/lang/String;

    if-eqz v1, :cond_70

    move/from16 v19, v7

    :cond_70
    move-object/from16 v22, v9

    .line 167
    invoke-static/range {v17 .. v17}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v9

    .line 5094
    iget-object v4, v9, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 4108
    invoke-static {v4}, Lcom/a/a/b/j;->a(Ljava/lang/reflect/Type;)Z

    move-result v20

    .line 4110
    const-class v4, Lcom/a/a/a/b;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/a/a/a/b;

    if-eqz v4, :cond_8d

    .line 4113
    iget-object v7, v11, Lcom/a/a/b/a/i;->a:Lcom/a/a/b/c;

    invoke-static {v7, v12, v9, v4}, Lcom/a/a/b/a/d;->a(Lcom/a/a/b/c;Lcom/a/a/e;Lcom/a/a/c/a;Lcom/a/a/a/b;)Lcom/a/a/r;

    move-result-object v4

    goto :goto_8f

    :cond_8d
    move-object/from16 v4, v18

    :goto_8f
    if-eqz v4, :cond_93

    const/4 v7, 0x1

    goto :goto_94

    :cond_93
    const/4 v7, 0x0

    :goto_94
    if-nez v4, :cond_9a

    .line 4117
    invoke-virtual {v12, v9}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v4

    :cond_9a
    move-object/from16 v25, v4

    .line 4120
    new-instance v4, Lcom/a/a/b/a/i$1;

    move-object v11, v0

    move-object v0, v4

    move/from16 v26, v1

    move-object/from16 v1, p0

    move/from16 v27, v2

    move-object v2, v15

    move-object/from16 v28, v3

    move/from16 v3, v19

    move-object v12, v4

    const/16 v23, 0x1

    move/from16 v4, v16

    move-object/from16 v29, v5

    move/from16 v30, v6

    move v6, v7

    const/16 v24, 0x0

    move-object/from16 v7, v25

    move/from16 v25, v8

    move-object/from16 v8, p1

    move-object/from16 v31, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/a/a/b/a/i$1;-><init>(Lcom/a/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/a/a/r;Lcom/a/a/e;Lcom/a/a/c/a;Z)V

    .line 168
    invoke-interface {v13, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/i$b;

    if-nez v11, :cond_cd

    goto :goto_ce

    :cond_cd
    move-object v0, v11

    :goto_ce
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v15, v21

    move-object/from16 v9, v22

    move/from16 v4, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v5, v29

    move/from16 v6, v30

    move-object/from16 v10, v31

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto/16 :goto_60

    :cond_ea
    move-object v11, v0

    move/from16 v30, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v22, v9

    move-object/from16 v31, v10

    move-object/from16 v21, v15

    if-nez v11, :cond_10b

    :goto_f9
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v15, v21

    move-object/from16 v9, v22

    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v10, v31

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto/16 :goto_22

    .line 172
    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/a/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_127
    move-object v0, v10

    move-object/from16 v21, v15

    .line 5101
    iget-object v0, v0, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 176
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v0, v2, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v10

    .line 6094
    iget-object v15, v10, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto/16 :goto_17

    :cond_142
    return-object v13
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .registers 10

    .line 65
    iget-object p0, p0, Lcom/a/a/b/a/i;->c:Lcom/a/a/b/d;

    .line 1069
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1210
    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    .line 1211
    invoke-virtual {p0, p2}, Lcom/a/a/b/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    if-nez v0, :cond_b2

    .line 2152
    iget v0, p0, Lcom/a/a/b/d;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_26

    :cond_23
    :goto_23
    move p0, v2

    goto/16 :goto_af

    .line 2156
    :cond_26
    iget-wide v3, p0, Lcom/a/a/b/d;->b:D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_45

    const-class v0, Lcom/a/a/a/d;

    .line 2157
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    const-class v3, Lcom/a/a/a/e;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/a/a/a/e;

    invoke-virtual {p0, v0, v3}, Lcom/a/a/b/d;->a(Lcom/a/a/a/d;Lcom/a/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_23

    .line 2161
    :cond_45
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_23

    .line 2165
    :cond_4c
    iget-boolean v0, p0, Lcom/a/a/b/d;->e:Z

    if-eqz v0, :cond_6a

    .line 2166
    const-class v0, Lcom/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    if-eqz v0, :cond_23

    if-eqz p2, :cond_63

    .line 2167
    invoke-interface {v0}, Lcom/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_69

    :cond_63
    invoke-interface {v0}, Lcom/a/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_6a

    :goto_69
    goto :goto_23

    .line 2172
    :cond_6a
    iget-boolean v0, p0, Lcom/a/a/b/d;->d:Z

    if-nez v0, :cond_79

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto :goto_23

    .line 2176
    :cond_79
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_23

    :cond_84
    if-eqz p2, :cond_89

    .line 2180
    iget-object p0, p0, Lcom/a/a/b/d;->f:Ljava/util/List;

    goto :goto_8b

    :cond_89
    iget-object p0, p0, Lcom/a/a/b/d;->g:Ljava/util/List;

    .line 2181
    :goto_8b
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ae

    .line 2182
    new-instance p2, Lcom/a/a/b;

    invoke-direct {p2, p1}, Lcom/a/a/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 2183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/a;

    .line 2184
    invoke-interface {p1}, Lcom/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_9a

    goto/16 :goto_23

    :cond_ae
    move p0, v1

    :goto_af
    if-nez p0, :cond_b2

    return v2

    :cond_b2
    return v1
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .registers 6
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

    .line 3094
    iget-object v0, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 97
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_c
    iget-object v1, p0, Lcom/a/a/b/a/i;->a:Lcom/a/a/b/c;

    invoke-virtual {v1, p2}, Lcom/a/a/b/c;->a(Lcom/a/a/c/a;)Lcom/a/a/b/i;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/a/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/a/i;->a(Lcom/a/a/e;Lcom/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/a/a/b/a/i$a;-><init>(Lcom/a/a/b/i;Ljava/util/Map;)V

    return-object v2
.end method
