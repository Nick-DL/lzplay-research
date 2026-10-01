.class final Landroidx/appcompat/app/f;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field static a:Ljava/lang/reflect/Field;

.field static b:Z

.field static c:Ljava/lang/reflect/Field;

.field static d:Z

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Ljava/lang/Object;)V
    .registers 5

    .line 166
    sget-boolean v0, Landroidx/appcompat/app/f;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    :try_start_5
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 168
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/f;->e:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not find ThemedResourceCache class"

    .line 170
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_16
    sput-boolean v1, Landroidx/appcompat/app/f;->f:Z

    .line 175
    :cond_18
    sget-object v0, Landroidx/appcompat/app/f;->e:Ljava/lang/Class;

    if-nez v0, :cond_1d

    return-void

    .line 180
    :cond_1d
    sget-boolean v0, Landroidx/appcompat/app/f;->h:Z

    if-nez v0, :cond_39

    .line 182
    :try_start_21
    sget-object v0, Landroidx/appcompat/app/f;->e:Ljava/lang/Class;

    const-string v2, "mUnthemedEntries"

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 184
    sput-object v0, Landroidx/appcompat/app/f;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 186
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :goto_37
    sput-boolean v1, Landroidx/appcompat/app/f;->h:Z

    .line 191
    :cond_39
    sget-object v0, Landroidx/appcompat/app/f;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    const/4 v0, 0x0

    .line 198
    :try_start_3f
    sget-object v1, Landroidx/appcompat/app/f;->g:Ljava/lang/reflect/Field;

    .line 199
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_47} :catch_48

    goto :goto_51

    :catch_48
    move-exception p0

    const-string v1, "ResourcesFlusher"

    const-string v2, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 201
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_51
    if-eqz p0, :cond_56

    .line 205
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    :cond_56
    return-void
.end method
