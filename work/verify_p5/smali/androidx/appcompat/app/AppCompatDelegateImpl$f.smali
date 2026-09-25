.class final Landroidx/appcompat/app/AppCompatDelegateImpl$f;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$e;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field private final c:Landroidx/appcompat/app/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/i;)V
    .locals 0

    .line 3002
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3003
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Landroidx/appcompat/app/i;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 25

    move-object/from16 v0, p0

    .line 3009
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Landroidx/appcompat/app/i;

    .line 3080
    iget-object v1, v0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/i$a;

    .line 3144
    iget-object v2, v0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/i$a;

    iget-wide v2, v2, Landroidx/appcompat/app/i$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3084
    iget-boolean v3, v1, Landroidx/appcompat/app/i$a;->a:Z

    goto/16 :goto_8

    .line 4110
    :cond_1
    iget-object v2, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v5}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    const-string v2, "network"

    .line 4113
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/i;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 4116
    :goto_1
    iget-object v6, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "gps"

    .line 4119
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/i;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 4124
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    :goto_2
    move-object v2, v5

    :cond_5
    if-eqz v2, :cond_c

    .line 4148
    iget-object v0, v0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/i$a;

    .line 4149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5031
    sget-object v5, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/h;

    if-nez v5, :cond_6

    .line 5032
    new-instance v5, Landroidx/appcompat/app/h;

    invoke-direct {v5}, Landroidx/appcompat/app/h;-><init>()V

    sput-object v5, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/h;

    .line 5034
    :cond_6
    sget-object v10, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/h;

    const-wide/32 v21, 0x5265c00

    sub-long v15, v12, v21

    .line 4154
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object v14, v10

    .line 4153
    invoke-virtual/range {v14 .. v20}, Landroidx/appcompat/app/h;->a(JDD)V

    .line 4155
    iget-wide v14, v10, Landroidx/appcompat/app/h;->b:J

    .line 4158
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object v5, v10

    move-wide v6, v12

    move-object v3, v10

    move-wide/from16 v10, v16

    invoke-virtual/range {v5 .. v11}, Landroidx/appcompat/app/h;->a(JDD)V

    .line 4159
    iget v5, v3, Landroidx/appcompat/app/h;->d:I

    if-ne v5, v4, :cond_7

    move v5, v4

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 4160
    :goto_3
    iget-wide v6, v3, Landroidx/appcompat/app/h;->c:J

    .line 4161
    iget-wide v8, v3, Landroidx/appcompat/app/h;->b:J

    add-long v10, v12, v21

    .line 4165
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-wide/from16 v23, v14

    move-object v14, v3

    move-wide v15, v10

    .line 4164
    invoke-virtual/range {v14 .. v20}, Landroidx/appcompat/app/h;->a(JDD)V

    .line 4166
    iget-wide v2, v3, Landroidx/appcompat/app/h;->c:J

    const-wide/16 v10, -0x1

    cmp-long v14, v6, v10

    if-eqz v14, :cond_b

    cmp-long v10, v8, v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    cmp-long v10, v12, v8

    const-wide/16 v14, 0x0

    if-lez v10, :cond_9

    add-long/2addr v14, v2

    goto :goto_4

    :cond_9
    cmp-long v10, v12, v6

    if-lez v10, :cond_a

    add-long/2addr v14, v8

    goto :goto_4

    :cond_a
    add-long/2addr v14, v6

    :goto_4
    const-wide/32 v10, 0xea60

    add-long/2addr v14, v10

    goto :goto_6

    :cond_b
    :goto_5
    const-wide/32 v10, 0x2932e00

    add-long v14, v12, v10

    .line 4186
    :goto_6
    iput-boolean v5, v0, Landroidx/appcompat/app/i$a;->a:Z

    move-wide/from16 v10, v23

    .line 4187
    iput-wide v10, v0, Landroidx/appcompat/app/i$a;->b:J

    .line 4188
    iput-wide v6, v0, Landroidx/appcompat/app/i$a;->c:J

    .line 4189
    iput-wide v8, v0, Landroidx/appcompat/app/i$a;->d:J

    .line 4190
    iput-wide v2, v0, Landroidx/appcompat/app/i$a;->e:J

    .line 4191
    iput-wide v14, v0, Landroidx/appcompat/app/i$a;->f:J

    .line 3091
    iget-boolean v3, v1, Landroidx/appcompat/app/i$a;->a:Z

    goto :goto_8

    :cond_c
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 3094
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 3101
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    const/16 v1, 0x16

    if-lt v0, v1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v3, v4

    :goto_8
    if-eqz v3, :cond_f

    const/4 v0, 0x2

    return v0

    :cond_f
    return v4
.end method

.method public final b()V
    .locals 1

    .line 3014
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x1

    .line 5159
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    return-void
.end method

.method final c()Landroid/content/IntentFilter;
    .locals 1

    .line 3019
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 3020
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 3021
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 3022
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method
