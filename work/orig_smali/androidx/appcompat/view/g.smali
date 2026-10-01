.class public final Landroidx/appcompat/view/g;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/g$b;,
        Landroidx/appcompat/view/g$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final c:[Ljava/lang/Object;

.field final d:[Ljava/lang/Object;

.field e:Landroid/content/Context;

.field f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    sput-object v0, Landroidx/appcompat/view/g;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 101
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/g;->d:[Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 231
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p0

    .line 234
    :cond_5
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_10

    .line 235
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_10
    return-object p0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 12

    .line 145
    new-instance v0, Landroidx/appcompat/view/g$b;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/view/g$b;-><init>(Landroidx/appcompat/view/g;Landroid/view/Menu;)V

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v1, :cond_2e

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "menu"

    .line 156
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_34

    .line 162
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Expecting menu, got "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v2, :cond_9

    :goto_34
    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, p3

    move-object v6, v1

    move p3, v3

    move v5, p3

    :goto_3a
    if-nez p3, :cond_c7

    packed-switch v4, :pswitch_data_c8

    goto/16 :goto_c1

    .line 193
    :pswitch_41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_51

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    move-object v6, v1

    move v5, v3

    goto/16 :goto_c1

    :cond_51
    const-string v7, "group"

    .line 197
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/view/g$b;->a()V

    goto/16 :goto_c1

    :cond_5e
    const-string v7, "item"

    .line 199
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 1543
    iget-boolean v4, v0, Landroidx/appcompat/view/g$b;->a:Z

    if-nez v4, :cond_c1

    .line 203
    iget-object v4, v0, Landroidx/appcompat/view/g$b;->b:Landroidx/core/e/b;

    if-eqz v4, :cond_7a

    iget-object v4, v0, Landroidx/appcompat/view/g$b;->b:Landroidx/core/e/b;

    .line 204
    invoke-virtual {v4}, Landroidx/core/e/b;->c()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/view/g$b;->c()Landroid/view/SubMenu;

    goto :goto_c1

    .line 207
    :cond_7a
    invoke-virtual {v0}, Landroidx/appcompat/view/g$b;->b()V

    goto :goto_c1

    :cond_7e
    const-string v7, "menu"

    .line 210
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    move p3, v2

    goto :goto_c1

    :pswitch_88
    if-nez v5, :cond_c1

    .line 175
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "group"

    .line 176
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 177
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/g$b;->a(Landroid/util/AttributeSet;)V

    goto :goto_c1

    :cond_9a
    const-string v7, "item"

    .line 178
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 179
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/g$b;->b(Landroid/util/AttributeSet;)V

    goto :goto_c1

    :cond_a6
    const-string v7, "menu"

    .line 180
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/view/g$b;->c()Landroid/view/SubMenu;

    move-result-object v4

    .line 185
    invoke-direct {p0, p1, p2, v4}, Landroidx/appcompat/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_c1

    :cond_b6
    move v5, v2

    move-object v6, v4

    goto :goto_c1

    .line 216
    :pswitch_b9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected end of document"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_c1
    :goto_c1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto/16 :goto_3a

    :cond_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_88
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .registers 5

    .line 119
    instance-of v0, p2, Landroidx/core/a/a/a;

    if-nez v0, :cond_8

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 126
    :try_start_9
    iget-object v1, p0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_35
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_2c
    .catchall {:try_start_9 .. :try_end_13} :catchall_2a

    .line 127
    :try_start_13
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 129
    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_24
    .catchall {:try_start_13 .. :try_end_1a} :catchall_21

    if-eqz p1, :cond_20

    .line 135
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    move-object v0, p1

    goto :goto_3e

    :catch_24
    move-exception p0

    move-object v0, p1

    goto :goto_2d

    :catch_27
    move-exception p0

    move-object v0, p1

    goto :goto_36

    :catchall_2a
    move-exception p0

    goto :goto_3e

    :catch_2c
    move-exception p0

    .line 133
    :goto_2d
    :try_start_2d
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Error inflating menu XML"

    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_35
    move-exception p0

    .line 131
    :goto_36
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Error inflating menu XML"

    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_2a

    :goto_3e
    if-eqz v0, :cond_43

    .line 135
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 136
    :cond_43
    throw p0
.end method
