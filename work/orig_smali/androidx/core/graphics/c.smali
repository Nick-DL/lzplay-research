.class public final Landroidx/core/graphics/c;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field private static final a:Landroidx/core/graphics/h;

.field private static final b:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_e

    .line 47
    new-instance v0, Landroidx/core/graphics/g;

    invoke-direct {v0}, Landroidx/core/graphics/g;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_45

    .line 48
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1c

    .line 49
    new-instance v0, Landroidx/core/graphics/f;

    invoke-direct {v0}, Landroidx/core/graphics/f;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_45

    .line 50
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_30

    .line 51
    invoke-static {}, Landroidx/core/graphics/e;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 52
    new-instance v0, Landroidx/core/graphics/e;

    invoke-direct {v0}, Landroidx/core/graphics/e;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_45

    .line 53
    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3e

    .line 54
    new-instance v0, Landroidx/core/graphics/d;

    invoke-direct {v0}, Landroidx/core/graphics/d;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    goto :goto_45

    .line 56
    :cond_3e
    new-instance v0, Landroidx/core/graphics/h;

    invoke-direct {v0}, Landroidx/core/graphics/h;-><init>()V

    sput-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    .line 63
    :goto_45
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 11

    .line 143
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 146
    invoke-static {p1, p2, p4}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-object p2, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-virtual {p2, p1, p0}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 8

    if-eqz p0, :cond_38

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_33

    .line 2169
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    .line 2211
    invoke-static {p1}, Landroidx/core/graphics/h;->a(Landroid/graphics/Typeface;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_17

    move-object v0, v4

    goto :goto_23

    .line 2215
    :cond_17
    iget-object v0, v0, Landroidx/core/graphics/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/a/c$b;

    :goto_23
    if-nez v0, :cond_26

    goto :goto_30

    .line 2174
    :cond_26
    sget-object v1, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    .line 2175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2174
    invoke-virtual {v1, p0, v0, v2, p2}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v4

    :goto_30
    if-eqz v4, :cond_33

    return-object v4

    .line 202
    :cond_33
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 191
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/content/a/c$a;Landroid/content/res/Resources;IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;
    .registers 13

    .line 105
    instance-of v0, p1, Landroidx/core/content/a/c$d;

    if-eqz v0, :cond_1b

    .line 106
    check-cast p1, Landroidx/core/content/a/c$d;

    .line 1093
    iget v0, p1, Landroidx/core/content/a/c$d;->c:I

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    move v4, v0

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 1097
    :goto_f
    iget v5, p1, Landroidx/core/content/a/c$d;->b:I

    .line 2089
    iget-object v2, p1, Landroidx/core/content/a/c$d;->a:Landroidx/core/b/a;

    move-object v1, p0

    move-object v3, p5

    move v6, p4

    .line 113
    invoke-static/range {v1 .. v6}, Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;Landroidx/core/content/a/f$a;ZII)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_30

    .line 116
    :cond_1b
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    check-cast p1, Landroidx/core/content/a/c$b;

    invoke-virtual {v0, p0, p1, p2, p4}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p5, :cond_30

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    .line 120
    invoke-virtual {p5, p0, p1}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_30

    :cond_2c
    const/4 v0, -0x3

    .line 122
    invoke-virtual {p5, v0, p1}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_30
    :goto_30
    if-eqz p0, :cond_3b

    .line 129
    sget-object p1, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-object p0
.end method

.method public static a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;
    .registers 4

    .line 160
    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/h;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/core/graphics/h;->a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .registers 4

    .line 76
    sget-object v0, Landroidx/core/graphics/c;->b:Landroidx/b/e;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
