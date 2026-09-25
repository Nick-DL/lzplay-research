.class final Landroidx/core/app/f;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/f;->a:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroidx/core/app/d$a;)Landroid/os/Bundle;
    .locals 3

    .line 4181
    iget v0, p1, Landroidx/core/app/d$a;->g:I

    .line 4185
    iget-object v1, p1, Landroidx/core/app/d$a;->h:Ljava/lang/CharSequence;

    .line 4189
    iget-object v2, p1, Landroidx/core/app/d$a;->i:Landroid/app/PendingIntent;

    .line 140
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    new-instance p0, Landroid/os/Bundle;

    .line 4196
    iget-object v0, p1, Landroidx/core/app/d$a;->a:Landroid/os/Bundle;

    .line 141
    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4213
    iget-object v0, p1, Landroidx/core/app/d$a;->b:[Landroidx/core/app/g;

    if-eqz v0, :cond_0

    const-string v0, "android.support.remoteInputs"

    .line 5213
    iget-object v1, p1, Landroidx/core/app/d$a;->b:[Landroidx/core/app/g;

    .line 144
    invoke-static {v1}, Landroidx/core/app/f;->a([Landroidx/core/app/g;)[Landroid/os/Bundle;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5238
    :cond_0
    iget-object v0, p1, Landroidx/core/app/d$a;->c:[Landroidx/core/app/g;

    if-eqz v0, :cond_1

    const-string v0, "android.support.dataRemoteInputs"

    .line 6238
    iget-object v1, p1, Landroidx/core/app/d$a;->c:[Landroidx/core/app/g;

    .line 148
    invoke-static {v1}, Landroidx/core/app/f;->a([Landroidx/core/app/g;)[Landroid/os/Bundle;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    const-string v0, "android.support.allowGeneratedReplies"

    .line 7204
    iget-boolean p1, p1, Landroidx/core/app/d$a;->d:Z

    .line 150
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 6

    .line 89
    sget-object v0, Landroidx/core/app/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v1, Landroidx/core/app/f;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 94
    :try_start_1
    sget-object v3, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 95
    const-class v3, Landroid/app/Notification;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 96
    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    .line 97
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sput-boolean v1, Landroidx/core/app/f;->c:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 101
    :cond_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    sput-object v3, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    .line 104
    :cond_2
    sget-object v3, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 106
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 107
    sget-object v4, Landroidx/core/app/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :cond_3
    :try_start_4
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 113
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    .line 111
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_0
    sput-boolean v1, Landroidx/core/app/f;->c:Z

    .line 116
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method static a(Landroidx/core/app/d$a;)Landroid/os/Bundle;
    .locals 4

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "icon"

    .line 8181
    iget v2, p0, Landroidx/core/app/d$a;->g:I

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 8185
    iget-object v2, p0, Landroidx/core/app/d$a;->h:Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "actionIntent"

    .line 8189
    iget-object v2, p0, Landroidx/core/app/d$a;->i:Landroid/app/PendingIntent;

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8196
    iget-object v1, p0, Landroidx/core/app/d$a;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Landroid/os/Bundle;

    .line 9196
    iget-object v2, p0, Landroidx/core/app/d$a;->a:Landroid/os/Bundle;

    .line 254
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 256
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "android.support.allowGeneratedReplies"

    .line 9204
    iget-boolean v3, p0, Landroidx/core/app/d$a;->d:Z

    .line 258
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "remoteInputs"

    .line 9213
    iget-object v2, p0, Landroidx/core/app/d$a;->b:[Landroidx/core/app/g;

    .line 261
    invoke-static {v2}, Landroidx/core/app/f;->a([Landroidx/core/app/g;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v1, "showsUserInterface"

    .line 9246
    iget-boolean v2, p0, Landroidx/core/app/d$a;->e:Z

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "semanticAction"

    .line 10224
    iget p0, p0, Landroidx/core/app/d$a;->f:I

    .line 263
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 73
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 78
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a([Landroidx/core/app/g;)[Landroid/os/Bundle;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 318
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 319
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 320
    aget-object v2, p0, v1

    .line 10285
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "resultKey"

    .line 11092
    iget-object v5, v2, Landroidx/core/app/g;->a:Ljava/lang/String;

    .line 10286
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "label"

    .line 11099
    iget-object v5, v2, Landroidx/core/app/g;->b:Ljava/lang/CharSequence;

    .line 10287
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "choices"

    .line 11106
    iget-object v5, v2, Landroidx/core/app/g;->c:[Ljava/lang/CharSequence;

    .line 10288
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v4, "allowFreeFormInput"

    .line 11132
    iget-boolean v5, v2, Landroidx/core/app/g;->d:Z

    .line 10289
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "extras"

    .line 11139
    iget-object v5, v2, Landroidx/core/app/g;->e:Landroid/os/Bundle;

    .line 10290
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12110
    iget-object v2, v2, Landroidx/core/app/g;->f:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 10293
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10294
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 10295
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10296
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "allowedDataTypes"

    .line 10298
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 320
    :cond_2
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
