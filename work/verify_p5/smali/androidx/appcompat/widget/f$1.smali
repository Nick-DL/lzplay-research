.class final Landroidx/appcompat/widget/f$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private final f:[I


# direct methods
.method constructor <init>()V
    .locals 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 63
    new-array v1, v0, [I

    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, Landroidx/appcompat/widget/f$1;->a:[I

    const/4 v1, 0x7

    .line 74
    new-array v2, v1, [I

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v6, v2, v3

    sget v6, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v6, v2, v4

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v6, v2, v5

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v6, v2, v0

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v7, 0x4

    aput v6, v2, v7

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v8, 0x5

    aput v6, v2, v8

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    const/4 v9, 0x6

    aput v6, v2, v9

    iput-object v2, p0, Landroidx/appcompat/widget/f$1;->b:[I

    const/16 v2, 0xa

    .line 88
    new-array v2, v2, [I

    sget v6, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v6, v2, v3

    sget v6, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v6, v2, v4

    sget v6, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v6, v2, v5

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v6, v2, v0

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v6, v2, v7

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v6, v2, v8

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v6, v2, v9

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v6, v2, v1

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v6, 0x8

    aput v1, v2, v6

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v6, 0x9

    aput v1, v2, v6

    iput-object v2, p0, Landroidx/appcompat/widget/f$1;->c:[I

    .line 106
    new-array v1, v0, [I

    sget v2, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v2, v1, v4

    sget v2, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v2, v1, v5

    iput-object v1, p0, Landroidx/appcompat/widget/f$1;->d:[I

    .line 116
    new-array v1, v5, [I

    sget v2, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v2, v1, v4

    iput-object v1, p0, Landroidx/appcompat/widget/f$1;->e:[I

    .line 126
    new-array v1, v7, [I

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v2, v1, v4

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    aput v2, v1, v5

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    aput v2, v1, v0

    iput-object v1, p0, Landroidx/appcompat/widget/f$1;->f:[I

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 244
    invoke-static {p0}, Landroidx/appcompat/widget/q;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 247
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    :cond_1
    invoke-static {p1, p2}, Landroidx/appcompat/widget/f;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static a([II)Z
    .locals 4

    .line 291
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    .line 152
    new-array v1, v0, [[I

    .line 153
    new-array v0, v0, [I

    .line 156
    sget v2, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p0, v2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result v2

    .line 158
    sget v3, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p0, v3}, Landroidx/appcompat/widget/aa;->c(Landroid/content/Context;I)I

    move-result p0

    .line 162
    sget-object v3, Landroidx/appcompat/widget/aa;->a:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p0, v0, v4

    .line 166
    sget-object p0, Landroidx/appcompat/widget/aa;->d:[I

    const/4 v3, 0x1

    aput-object p0, v1, v3

    .line 167
    invoke-static {v2, p1}, Landroidx/core/graphics/a;->a(II)I

    move-result p0

    aput p0, v0, v3

    .line 170
    sget-object p0, Landroidx/appcompat/widget/aa;->b:[I

    const/4 v3, 0x2

    aput-object p0, v1, v3

    .line 171
    invoke-static {v2, p1}, Landroidx/core/graphics/a;->a(II)I

    move-result p0

    aput p0, v0, v3

    .line 175
    sget-object p0, Landroidx/appcompat/widget/aa;->h:[I

    const/4 v2, 0x3

    aput-object p0, v1, v2

    aput p1, v0, v2

    .line 179
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 303
    sget v0, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v0, :cond_0

    .line 304
    sget p0, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 305
    :cond_0
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_1

    .line 306
    sget p0, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 307
    :cond_1
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p0, 0x3

    .line 1183
    new-array p2, p0, [[I

    .line 1184
    new-array p0, p0, [I

    .line 1187
    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1190
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1195
    sget-object v4, Landroidx/appcompat/widget/aa;->a:[I

    aput-object v4, p2, v1

    .line 1196
    aget-object v4, p2, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, p0, v1

    .line 1199
    sget-object v1, Landroidx/appcompat/widget/aa;->e:[I

    aput-object v1, p2, v3

    .line 1200
    sget v1, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v3

    .line 1204
    sget-object p1, Landroidx/appcompat/widget/aa;->h:[I

    aput-object p1, p2, v2

    .line 1205
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p0, v2

    goto :goto_0

    .line 1211
    :cond_2
    sget-object v0, Landroidx/appcompat/widget/aa;->a:[I

    aput-object v0, p2, v1

    .line 1212
    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aa;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v1

    .line 1216
    sget-object v0, Landroidx/appcompat/widget/aa;->e:[I

    aput-object v0, p2, v3

    .line 1217
    sget v0, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, p0, v3

    .line 1221
    sget-object v0, Landroidx/appcompat/widget/aa;->h:[I

    aput-object v0, p2, v2

    .line 1222
    sget v0, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v2

    .line 1226
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    .line 309
    :cond_3
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_4

    .line 2134
    sget p0, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 2135
    invoke-static {p1, p0}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p0

    .line 2134
    invoke-static {p1, p0}, Landroidx/appcompat/widget/f$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 311
    :cond_4
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_5

    .line 2141
    invoke-static {p1, v1}, Landroidx/appcompat/widget/f$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 313
    :cond_5
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_6

    .line 2146
    sget p0, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 2147
    invoke-static {p1, p0}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p0

    .line 2146
    invoke-static {p1, p0}, Landroidx/appcompat/widget/f$1;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 315
    :cond_6
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_c

    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_7

    goto :goto_1

    .line 318
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/f$1;->b:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 319
    sget p0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/aa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 320
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/f$1;->e:[I

    invoke-static {v0, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    sget p0, Landroidx/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 322
    :cond_9
    iget-object p0, p0, Landroidx/appcompat/widget/f$1;->f:[I

    invoke-static {p0, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 323
    sget p0, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 324
    :cond_a
    sget p0, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, p0, :cond_b

    .line 325
    sget p0, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_c
    :goto_1
    sget p0, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, p0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 383
    sget p0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, p0, :cond_0

    .line 384
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(Landroidx/appcompat/widget/w;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 232
    sget p0, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p3, p0, :cond_0

    .line 233
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 234
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x1

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 236
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-direct {p0, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 254
    sget p0, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    const/4 v0, 0x1

    const v1, 0x102000d

    const v2, 0x102000f

    const/high16 v3, 0x1020000

    if-ne p2, p0, :cond_0

    .line 255
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 257
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 258
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p2

    .line 259
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 256
    invoke-static {p0, p2, v3}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 262
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p2

    .line 263
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 260
    invoke-static {p0, p2, v2}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 266
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p1

    .line 267
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 264
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v0

    .line 269
    :cond_0
    sget p0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, p0, :cond_2

    sget p0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, p0, :cond_2

    sget p0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 272
    :cond_2
    :goto_0
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 274
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 275
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->c(Landroid/content/Context;I)I

    move-result p2

    .line 276
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 273
    invoke-static {p0, p2, v3}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 279
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p2

    .line 280
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 277
    invoke-static {p0, p2, v2}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 283
    invoke-static {p1, p2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p1

    .line 284
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 281
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/f$1;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v0
.end method

.method public final b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 333
    invoke-static {}, Landroidx/appcompat/widget/f;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 338
    iget-object v1, p0, Landroidx/appcompat/widget/f$1;->a:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 339
    sget v2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    :goto_0
    move p2, v3

    :goto_1
    move p0, v5

    goto :goto_2

    .line 341
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/f$1;->c:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    sget v2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    goto :goto_0

    .line 344
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/f$1;->d:[I

    invoke-static {p0, p2}, Landroidx/appcompat/widget/f$1;->a([II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 347
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 348
    :cond_2
    sget p0, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p2, p0, :cond_3

    const v2, 0x1010030

    const p0, 0x42233333    # 40.8f

    .line 351
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move p2, p0

    goto :goto_1

    .line 352
    :cond_3
    sget p0, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p2, p0, :cond_4

    goto :goto_0

    :cond_4
    move p2, v3

    move p0, v4

    move v2, p0

    :goto_2
    if-eqz p0, :cond_7

    .line 358
    invoke-static {p3}, Landroidx/appcompat/widget/q;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 359
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 362
    :cond_5
    invoke-static {p1, v2}, Landroidx/appcompat/widget/aa;->a(Landroid/content/Context;I)I

    move-result p0

    .line 363
    invoke-static {p0, v0}, Landroidx/appcompat/widget/f;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v3, :cond_6

    .line 366
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v5

    :cond_7
    return v4
.end method
