.class final Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;
.super Ljava/lang/Object;
.source "BaseRoundCornerProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;->a:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;->a:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;

    invoke-static {v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V

    .line 168
    iget-object p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;->a:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;

    invoke-static {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V

    return-void
.end method
