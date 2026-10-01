.class public final Landroidx/core/app/e;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroidx/core/app/d$b;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroidx/core/app/d$b;)V
    .registers 11

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/e;->e:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    .line 63
    iput-object p1, p0, Landroidx/core/app/e;->b:Landroidx/core/app/d$b;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    .line 65
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->a:Landroid/content/Context;

    iget-object v3, p1, Landroidx/core/app/d$b;->I:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    goto :goto_2e

    .line 67
    :cond_25
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    .line 69
    :goto_2e
    iget-object v0, p1, Landroidx/core/app/d$b;->N:Landroid/app/Notification;

    .line 70
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroidx/core/app/d$b;->h:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 74
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 75
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_68

    move v3, v4

    goto :goto_69

    :cond_68
    move v3, v5

    .line 76
    :goto_69
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_75

    move v3, v4

    goto :goto_76

    :cond_75
    move v3, v5

    .line 77
    :goto_76
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-eqz v3, :cond_83

    move v3, v4

    goto :goto_84

    :cond_83
    move v3, v5

    .line 78
    :goto_84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->d:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->e:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->j:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->f:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->g:Landroid/app/PendingIntent;

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b6

    move v7, v4

    goto :goto_b7

    :cond_b6
    move v7, v5

    .line 85
    :goto_b7
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->i:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/d$b;->k:I

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/d$b;->r:I

    iget v7, p1, Landroidx/core/app/d$b;->s:I

    iget-boolean v8, p1, Landroidx/core/app/d$b;->t:Z

    .line 89
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_df

    .line 91
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 93
    :cond_df
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v2, v6, :cond_15d

    .line 94
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v6, p1, Landroidx/core/app/d$b;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v6, p1, Landroidx/core/app/d$b;->n:Z

    .line 95
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, p1, Landroidx/core/app/d$b;->l:I

    .line 96
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 98
    iget-object v2, p1, Landroidx/core/app/d$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fe
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/d$a;

    .line 99
    invoke-direct {p0, v6}, Landroidx/core/app/e;->a(Landroidx/core/app/d$a;)V

    goto :goto_fe

    .line 102
    :cond_10e
    iget-object v2, p1, Landroidx/core/app/d$b;->B:Landroid/os/Bundle;

    if-eqz v2, :cond_119

    .line 103
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    iget-object v6, p1, Landroidx/core/app/d$b;->B:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 105
    :cond_119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_155

    .line 106
    iget-boolean v2, p1, Landroidx/core/app/d$b;->x:Z

    if-eqz v2, :cond_128

    .line 107
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :cond_128
    iget-object v2, p1, Landroidx/core/app/d$b;->u:Ljava/lang/String;

    if-eqz v2, :cond_148

    .line 110
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v6, "android.support.groupKey"

    iget-object v8, p1, Landroidx/core/app/d$b;->u:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean v2, p1, Landroidx/core/app/d$b;->v:Z

    if-eqz v2, :cond_141

    .line 112
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v6, "android.support.isGroupSummary"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_148

    .line 114
    :cond_141
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v6, "android.support.useSideChannel"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    :cond_148
    :goto_148
    iget-object v2, p1, Landroidx/core/app/d$b;->w:Ljava/lang/String;

    if-eqz v2, :cond_155

    .line 119
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v4, "android.support.sortKey"

    iget-object v6, p1, Landroidx/core/app/d$b;->w:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_155
    iget-object v2, p1, Landroidx/core/app/d$b;->F:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    .line 124
    iget-object v2, p1, Landroidx/core/app/d$b;->G:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    .line 126
    :cond_15d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_191

    .line 127
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/d$b;->m:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_191

    .line 130
    iget-object v2, p1, Landroidx/core/app/d$b;->O:Ljava/util/ArrayList;

    if-eqz v2, :cond_191

    iget-object v2, p1, Landroidx/core/app/d$b;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_191

    .line 131
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v4, "android.people"

    iget-object v6, p1, Landroidx/core/app/d$b;->O:Ljava/util/ArrayList;

    iget-object v8, p1, Landroidx/core/app/d$b;->O:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    :cond_191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1b2

    .line 137
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/d$b;->x:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroidx/core/app/d$b;->u:Ljava/lang/String;

    .line 138
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v4, p1, Landroidx/core/app/d$b;->v:Z

    .line 139
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroidx/core/app/d$b;->w:Ljava/lang/String;

    .line 140
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 142
    iget v2, p1, Landroidx/core/app/d$b;->M:I

    iput v2, p0, Landroidx/core/app/e;->g:I

    .line 144
    :cond_1b2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_245

    .line 145
    iget-object v2, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/d$b;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/d$b;->C:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/d$b;->D:I

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/d$b;->E:Landroid/app/Notification;

    .line 148
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 149
    invoke-virtual {v2, v3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 151
    iget-object v0, p1, Landroidx/core/app/d$b;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1dd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    iget-object v3, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_1dd

    .line 154
    :cond_1ef
    iget-object v0, p1, Landroidx/core/app/d$b;->H:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/e;->h:Landroid/widget/RemoteViews;

    .line 156
    iget-object v0, p1, Landroidx/core/app/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_245

    .line 160
    invoke-virtual {p1}, Landroidx/core/app/d$b;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_20c

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    :cond_20c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    .line 165
    :goto_212
    iget-object v4, p1, Landroidx/core/app/d$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_230

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Landroidx/core/app/d$b;->c:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/d$a;

    .line 168
    invoke-static {v6}, Landroidx/core/app/f;->a(Landroidx/core/app/d$a;)Landroid/os/Bundle;

    move-result-object v6

    .line 166
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_212

    :cond_230
    const-string v3, "invisible_actions"

    .line 171
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p1}, Landroidx/core/app/d$b;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    iget-object v2, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    :cond_245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_279

    .line 180
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->B:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroidx/core/app/d$b;->q:[Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 182
    iget-object v0, p1, Landroidx/core/app/d$b;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_263

    .line 183
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->F:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 185
    :cond_263
    iget-object v0, p1, Landroidx/core/app/d$b;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_26e

    .line 186
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->G:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 188
    :cond_26e
    iget-object v0, p1, Landroidx/core/app/d$b;->H:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_279

    .line 189
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/d$b;->H:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 192
    :cond_279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2bb

    .line 193
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/d$b;->J:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/d$b;->K:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/core/app/d$b;->L:J

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/d$b;->M:I

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 197
    iget-boolean v0, p1, Landroidx/core/app/d$b;->z:Z

    if-eqz v0, :cond_2a1

    .line 198
    iget-object v0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/d$b;->y:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 201
    :cond_2a1
    iget-object p1, p1, Landroidx/core/app/d$b;->I:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2bb

    .line 202
    iget-object p0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_2bb
    return-void
.end method

.method private static a(Landroid/app/Notification;)V
    .registers 2

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 419
    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    .line 420
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 421
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private a(Landroidx/core/app/d$a;)V
    .registers 7

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_70

    .line 256
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 4181
    iget v1, p1, Landroidx/core/app/d$a;->g:I

    .line 4185
    iget-object v2, p1, Landroidx/core/app/d$a;->h:Ljava/lang/CharSequence;

    .line 4189
    iget-object v3, p1, Landroidx/core/app/d$a;->i:Landroid/app/PendingIntent;

    .line 257
    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4213
    iget-object v1, p1, Landroidx/core/app/d$a;->b:[Landroidx/core/app/g;

    if-eqz v1, :cond_27

    .line 5213
    iget-object v1, p1, Landroidx/core/app/d$a;->b:[Landroidx/core/app/g;

    .line 259
    invoke-static {v1}, Landroidx/core/app/g;->a([Landroidx/core/app/g;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    .line 261
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 6196
    :cond_27
    iget-object v1, p1, Landroidx/core/app/d$a;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_33

    .line 266
    new-instance v1, Landroid/os/Bundle;

    .line 7196
    iget-object v2, p1, Landroidx/core/app/d$a;->a:Landroid/os/Bundle;

    .line 266
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_38

    .line 268
    :cond_33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_38
    const-string v2, "android.support.allowGeneratedReplies"

    .line 7204
    iget-boolean v3, p1, Landroidx/core/app/d$a;->d:Z

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4a

    .line 8204
    iget-boolean v2, p1, Landroidx/core/app/d$a;->d:Z

    .line 273
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_4a
    const-string v2, "android.support.action.semanticAction"

    .line 8224
    iget v3, p1, Landroidx/core/app/d$a;->f:I

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_5c

    .line 9224
    iget v2, p1, Landroidx/core/app/d$a;->f:I

    .line 279
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_5c
    const-string v2, "android.support.action.showsUserInterface"

    .line 9246
    iget-boolean p1, p1, Landroidx/core/app/d$a;->e:Z

    .line 282
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 285
    iget-object p0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void

    .line 286
    :cond_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_81

    .line 287
    iget-object v0, p0, Landroidx/core/app/e;->e:Ljava/util/List;

    iget-object p0, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    .line 288
    invoke-static {p0, p1}, Landroidx/core/app/f;->a(Landroid/app/Notification$Builder;Landroidx/core/app/d$a;)Landroid/os/Bundle;

    move-result-object p0

    .line 287
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .registers 9

    .line 216
    iget-object v0, p0, Landroidx/core/app/e;->b:Landroidx/core/app/d$b;

    iget-object v0, v0, Landroidx/core/app/d$b;->o:Landroidx/core/app/d$c;

    .line 3293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_14

    .line 3294
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto/16 :goto_187

    .line 3295
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v1, v3, :cond_4e

    .line 3296
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3298
    iget v3, p0, Landroidx/core/app/e;->g:I

    if-eqz v3, :cond_187

    .line 3300
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_39

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v5, :cond_39

    .line 3303
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    .line 3306
    :cond_39
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_187

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_187

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v4, :cond_187

    .line 3309
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    goto/16 :goto_187

    .line 3314
    :cond_4e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_a5

    .line 3315
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3316
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3317
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_69

    .line 3318
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3320
    :cond_69
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_71

    .line 3321
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3323
    :cond_71
    iget-object v3, p0, Landroidx/core/app/e;->h:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_79

    .line 3324
    iget-object v3, p0, Landroidx/core/app/e;->h:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3327
    :cond_79
    iget v3, p0, Landroidx/core/app/e;->g:I

    if-eqz v3, :cond_187

    .line 3329
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_90

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_90

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v5, :cond_90

    .line 3332
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    .line 3335
    :cond_90
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_187

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_187

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v4, :cond_187

    .line 3338
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    goto/16 :goto_187

    .line 3342
    :cond_a5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v1, v3, :cond_f4

    .line 3343
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3344
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3345
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_c0

    .line 3346
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3348
    :cond_c0
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_c8

    .line 3349
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3352
    :cond_c8
    iget v3, p0, Landroidx/core/app/e;->g:I

    if-eqz v3, :cond_187

    .line 3354
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_df

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_df

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v5, :cond_df

    .line 3357
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    .line 3360
    :cond_df
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_187

    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_187

    iget v3, p0, Landroidx/core/app/e;->g:I

    if-ne v3, v4, :cond_187

    .line 3363
    invoke-static {v1}, Landroidx/core/app/e;->a(Landroid/app/Notification;)V

    goto/16 :goto_187

    .line 3368
    :cond_f4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_127

    .line 3369
    iget-object v1, p0, Landroidx/core/app/e;->e:Ljava/util/List;

    .line 3370
    invoke-static {v1}, Landroidx/core/app/f;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 3373
    iget-object v3, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 3376
    :cond_109
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 3377
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3378
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_11e

    .line 3379
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3381
    :cond_11e
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_187

    .line 3382
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_187

    .line 3385
    :cond_127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_181

    .line 3386
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 3389
    invoke-static {v1}, Landroidx/core/app/d;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 3390
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3391
    iget-object v5, p0, Landroidx/core/app/e;->f:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_146
    :goto_146
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3392
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_146

    .line 3393
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_146

    .line 3396
    :cond_15c
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3397
    iget-object v3, p0, Landroidx/core/app/e;->e:Ljava/util/List;

    .line 3398
    invoke-static {v3}, Landroidx/core/app/f;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_170

    .line 3401
    invoke-static {v1}, Landroidx/core/app/d;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 3404
    :cond_170
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_178

    .line 3405
    iget-object v3, p0, Landroidx/core/app/e;->c:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3407
    :cond_178
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_187

    .line 3408
    iget-object v3, p0, Landroidx/core/app/e;->d:Landroid/widget/RemoteViews;

    iput-object v3, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_187

    .line 3413
    :cond_181
    iget-object v1, p0, Landroidx/core/app/e;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 227
    :cond_187
    :goto_187
    iget-object v3, p0, Landroidx/core/app/e;->b:Landroidx/core/app/d$b;

    iget-object v3, v3, Landroidx/core/app/d$b;->F:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_193

    .line 228
    iget-object p0, p0, Landroidx/core/app/e;->b:Landroidx/core/app/d$b;

    iget-object p0, p0, Landroidx/core/app/d$b;->F:Landroid/widget/RemoteViews;

    iput-object p0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    :cond_193
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_1a0

    if-eqz v0, :cond_1a0

    .line 245
    invoke-static {v1}, Landroidx/core/app/d;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    :cond_1a0
    return-object v1
.end method
