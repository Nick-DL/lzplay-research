.class public final Landroidx/core/content/a/b;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public b:I

.field private final c:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/core/content/a/b;->a:Landroid/graphics/Shader;

    .line 63
    iput-object p2, p0, Landroidx/core/content/a/b;->c:Landroid/content/res/ColorStateList;

    .line 64
    iput p3, p0, Landroidx/core/content/a/b;->b:I

    return-void
.end method

.method static a(I)Landroidx/core/content/a/b;
    .registers 3

    .line 76
    new-instance v0, Landroidx/core/content/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Landroidx/core/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/a/b;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1152
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1153
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1155
    :cond_c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_16

    if-ne v5, v6, :cond_c

    :cond_16
    if-ne v5, v7, :cond_180

    .line 1162
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    .line 1163
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x557f730

    const/4 v10, 0x0

    if-eq v8, v9, :cond_37

    const v6, 0x4705f3df

    if-eq v8, v6, :cond_2d

    goto :goto_40

    :cond_2d
    const-string v6, "selector"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    move v6, v10

    goto :goto_41

    :cond_37
    const-string v8, "gradient"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    goto :goto_41

    :cond_40
    :goto_40
    move v6, v7

    :goto_41
    packed-switch v6, :pswitch_data_192

    .line 1171
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    goto/16 :goto_164

    .line 2090
    :pswitch_48
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gradient"

    .line 2091
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_137

    .line 2096
    sget-object v5, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static {v0, v1, v4, v5}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const-string v6, "startX"

    .line 2098
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const/4 v8, 0x0

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    const-string v6, "startY"

    .line 2100
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    const-string v6, "endX"

    .line 2102
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    const-string v6, "endY"

    .line 2104
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    const-string v6, "centerX"

    .line 2106
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    const-string v7, "centerY"

    .line 2108
    sget v9, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    invoke-static {v5, v3, v7, v9, v8}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    const-string v9, "type"

    .line 2110
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_type:I

    invoke-static {v5, v3, v9, v11, v10}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    const-string v11, "startColor"

    .line 2112
    sget v2, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    invoke-static {v5, v3, v11, v2}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string v11, "centerColor"

    .line 2114
    invoke-static {v3, v11}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    const-string v8, "centerColor"

    .line 2115
    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    invoke-static {v5, v3, v8, v10}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v10, "endColor"

    move/from16 v23, v15

    .line 2117
    sget v15, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    invoke-static {v5, v3, v10, v15}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string v15, "tileMode"

    move/from16 v24, v14

    .line 2119
    sget v14, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    move/from16 v25, v13

    const/4 v13, 0x0

    invoke-static {v5, v3, v15, v14, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v14

    const-string v13, "gradientRadius"

    .line 2121
    sget v15, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    move/from16 v26, v12

    const/4 v12, 0x0

    invoke-static {v5, v3, v13, v15, v12}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v19

    .line 2123
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2125
    invoke-static {v0, v3, v4, v1}, Landroidx/core/content/a/d;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_d5

    goto :goto_e2

    :cond_d5
    if-eqz v11, :cond_dd

    .line 2195
    new-instance v0, Landroidx/core/content/a/d$a;

    invoke-direct {v0, v2, v8, v10}, Landroidx/core/content/a/d$a;-><init>(III)V

    goto :goto_e2

    .line 2197
    :cond_dd
    new-instance v0, Landroidx/core/content/a/d$a;

    invoke-direct {v0, v2, v10}, Landroidx/core/content/a/d$a;-><init>(II)V

    :goto_e2
    packed-switch v9, :pswitch_data_19a

    .line 2141
    new-instance v1, Landroid/graphics/LinearGradient;

    goto :goto_117

    .line 2137
    :pswitch_e8
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Landroidx/core/content/a/d$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/a/d$a;->b:[F

    invoke-direct {v1, v6, v7, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_12f

    :pswitch_f2
    const/4 v1, 0x0

    cmpg-float v1, v19, v1

    if-lez v1, :cond_10f

    .line 2134
    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, v0, Landroidx/core/content/a/d$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/a/d$a;->b:[F

    .line 2135
    invoke-static {v14}, Landroidx/core/content/a/d;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v22

    move-object/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_12f

    .line 2131
    :cond_10f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2141
    :goto_117
    iget-object v2, v0, Landroidx/core/content/a/d$a;->a:[I

    iget-object v0, v0, Landroidx/core/content/a/d$a;->b:[F

    .line 2142
    invoke-static {v14}, Landroidx/core/content/a/d;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v18

    move-object v11, v1

    move/from16 v12, v26

    move/from16 v13, v25

    move/from16 v14, v24

    move/from16 v15, v23

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3068
    :goto_12f
    new-instance v0, Landroidx/core/content/a/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/core/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    .line 2092
    :cond_137
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2093
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :pswitch_155
    invoke-static {v0, v3, v4, v1}, Landroidx/core/content/a/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2072
    new-instance v1, Landroidx/core/content/a/b;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Landroidx/core/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    .line 1171
    :goto_164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_180
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_188} :catch_188

    :catch_188
    move-exception v0

    const-string v1, "ComplexColorCompat"

    const-string v2, "Failed to inflate ComplexColor."

    .line 142
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_155
        :pswitch_48
    .end packed-switch

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_e8
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .registers 1

    .line 94
    iget-object p0, p0, Landroidx/core/content/a/b;->a:Landroid/graphics/Shader;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final a([I)Z
    .registers 4

    .line 109
    invoke-virtual {p0}, Landroidx/core/content/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 110
    iget-object v0, p0, Landroidx/core/content/a/b;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/core/content/a/b;->c:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 112
    iget v0, p0, Landroidx/core/content/a/b;->b:I

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x1

    .line 114
    iput p1, p0, Landroidx/core/content/a/b;->b:I

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final b()Z
    .registers 2

    .line 98
    iget-object v0, p0, Landroidx/core/content/a/b;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/core/content/a/b;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object p0, p0, Landroidx/core/content/a/b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Landroidx/core/content/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_d

    iget p0, p0, Landroidx/core/content/a/b;->b:I

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method
