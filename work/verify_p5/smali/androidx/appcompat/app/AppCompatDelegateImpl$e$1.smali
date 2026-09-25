.class final Landroidx/appcompat/app/AppCompatDelegateImpl$e$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$e;)V
    .locals 0

    .line 2969
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2972
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b()V

    return-void
.end method
