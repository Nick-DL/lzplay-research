.class public final Landroidx/vectordrawable/a/a/d;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 7

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 68
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_b
    const v0, 0x10c000f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_21

    .line 75
    :try_start_11
    new-instance p0, Landroidx/d/a/a/a;

    invoke-direct {p0}, Landroidx/d/a/a/a;-><init>()V

    return-object p0

    :catchall_17
    move-exception p0

    move-object v0, v1

    goto/16 :goto_14e

    :catch_1b
    move-exception p0

    goto/16 :goto_118

    :catch_1e
    move-exception p0

    goto/16 :goto_133

    :cond_21
    const v0, 0x10c000d

    if-ne p1, v0, :cond_2c

    .line 77
    new-instance p0, Landroidx/d/a/a/b;

    invoke-direct {p0}, Landroidx/d/a/a/b;-><init>()V

    return-object p0

    :cond_2c
    const v0, 0x10c000e

    if-ne p1, v0, :cond_37

    .line 79
    new-instance p0, Landroidx/d/a/a/c;

    invoke-direct {p0}, Landroidx/d/a/a/c;-><init>()V

    return-object p0

    .line 81
    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_3f} :catch_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_1b
    .catchall {:try_start_11 .. :try_end_3f} :catchall_17

    .line 82
    :try_start_3f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1109
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1111
    :cond_49
    :goto_49
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_56

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_10a

    :cond_56
    const/4 v4, 0x1

    if-eq v3, v4, :cond_10a

    const/4 v4, 0x2

    if-ne v3, v4, :cond_49

    .line 1118
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1120
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "linearInterpolator"

    .line 1122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1123
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_49

    :cond_72
    const-string v4, "accelerateInterpolator"

    .line 1124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1125
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_7f
    move-object v1, v3

    goto :goto_49

    :cond_81
    const-string v4, "decelerateInterpolator"

    .line 1126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 1127
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_7f

    :cond_8f
    const-string v4, "accelerateDecelerateInterpolator"

    .line 1128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1129
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_49

    :cond_9d
    const-string v4, "cycleInterpolator"

    .line 1130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1131
    new-instance v3, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_7f

    :cond_ab
    const-string v4, "anticipateInterpolator"

    .line 1132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1133
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_7f

    :cond_b9
    const-string v4, "overshootInterpolator"

    .line 1134
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 1135
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_7f

    :cond_c7
    const-string v4, "anticipateOvershootInterpolator"

    .line 1136
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 1137
    new-instance v3, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v3, p0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_7f

    :cond_d5
    const-string v4, "bounceInterpolator"

    .line 1138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1139
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto/16 :goto_49

    :cond_e4
    const-string v4, "pathInterpolator"

    .line 1140
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 1141
    new-instance v3, Landroidx/vectordrawable/a/a/g;

    invoke-direct {v3, p0, v1, v0}, Landroidx/vectordrawable/a/a/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7f

    .line 1143
    :cond_f2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown interpolator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_10a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_10a} :catch_115
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_10a} :catch_112
    .catchall {:try_start_3f .. :try_end_10a} :catchall_110

    :cond_10a
    if-eqz v0, :cond_10f

    .line 95
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10f
    return-object v1

    :catchall_110
    move-exception p0

    goto :goto_14e

    :catch_112
    move-exception p0

    move-object v1, v0

    goto :goto_118

    :catch_115
    move-exception p0

    move-object v1, v0

    goto :goto_133

    .line 90
    :goto_118
    :try_start_118
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load animation resource ID #0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    throw v0

    .line 85
    :goto_133
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load animation resource ID #0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    throw v0
    :try_end_14e
    .catchall {:try_start_118 .. :try_end_14e} :catchall_17

    :goto_14e
    if-eqz v0, :cond_153

    .line 95
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 96
    :cond_153
    throw p0
.end method
