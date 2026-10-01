.class public final Landroidx/core/content/a/f;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/a/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;
    .registers 6

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/content/a/f;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;
    .registers 15

    .line 379
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8a

    .line 384
    iget-object p2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "res/"

    .line 385
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-eqz p5, :cond_19

    .line 388
    invoke-virtual {p5, v1, v2}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_19
    return-object v2

    .line 393
    :cond_1a
    invoke-static {p1, p3, p4}, Landroidx/core/graphics/c;->a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eqz p5, :cond_25

    .line 397
    invoke-virtual {p5, v0, v2}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_25
    return-object v0

    .line 403
    :cond_26
    :try_start_26
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 404
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 406
    invoke-static {v0, p1}, Landroidx/core/content/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/a/c$a;

    move-result-object v4

    if-nez v4, :cond_49

    const-string p0, "ResourcesCompat"

    const-string p1, "Failed to find font-family tag"

    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_48

    .line 410
    invoke-virtual {p5, v1, v2}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_48
    return-object v2

    :cond_49
    move-object v3, p0

    move-object v5, p1

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 415
    invoke-static/range {v3 .. v8}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroidx/core/content/a/c$a;Landroid/content/res/Resources;IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 418
    :cond_53
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p5, :cond_62

    if-eqz p0, :cond_5f

    .line 422
    invoke-virtual {p5, p0, v2}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_62

    .line 424
    :cond_5f
    invoke-virtual {p5, v1, v2}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V
    :try_end_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_62} :catch_74
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_62} :catch_63

    :cond_62
    :goto_62
    return-object p0

    :catch_63
    move-exception p0

    const-string p1, "ResourcesCompat"

    const-string p3, "Failed to read xml resource "

    .line 432
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :catch_74
    move-exception p0

    const-string p1, "ResourcesCompat"

    const-string p3, "Failed to parse xml resource "

    .line 430
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    if-eqz p5, :cond_89

    .line 435
    invoke-virtual {p5, v1, v2}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_89
    return-object v2

    .line 380
    :cond_8a
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Resource \""

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" ("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a Font: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;
    .registers 11

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    .line 360
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    .line 361
    invoke-static/range {v0 .. v5}, Landroidx/core/content/a/f;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_33

    if-eqz p4, :cond_16

    goto :goto_33

    .line 364
    :cond_16
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Font resource ID #0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be retrieved."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-object p0
.end method
