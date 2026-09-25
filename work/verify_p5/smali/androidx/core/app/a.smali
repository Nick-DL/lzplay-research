.class public final Landroidx/core/app/a;
.super Landroidx/core/content/a;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/a$a;
    }
.end annotation


# static fields
.field private static a:Landroidx/core/app/a$a;


# direct methods
.method public static a()Landroidx/core/app/a$a;
    .locals 1

    .line 169
    sget-object v0, Landroidx/core/app/a;->a:Landroidx/core/app/a$a;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    .line 580
    :cond_0
    invoke-static {p0}, Landroidx/core/app/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    return-void
.end method
