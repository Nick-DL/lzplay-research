.class final Lcom/x/plus/pro/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/SettingActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/SettingActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/x/plus/pro/SettingActivity$2;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity$2;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/SettingActivity;->finish()V

    return-void
.end method
