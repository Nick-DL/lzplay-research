.class final Lcom/x/plus/pro/update/c$2;
.super Lcom/liulishuo/filedownloader/m;
.source "UpdateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/update/c$a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/x/plus/pro/update/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/update/c;Lcom/x/plus/pro/update/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 817
    iput-object p1, p0, Lcom/x/plus/pro/update/c$2;->e:Lcom/x/plus/pro/update/c;

    iput-object p2, p0, Lcom/x/plus/pro/update/c$2;->a:Lcom/x/plus/pro/update/c$a;

    iput-object p3, p0, Lcom/x/plus/pro/update/c$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/x/plus/pro/update/c$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/x/plus/pro/update/c$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/a;)V
    .registers 4

    .line 856
    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;)V

    .line 860
    iget-object p1, p0, Lcom/x/plus/pro/update/c$2;->a:Lcom/x/plus/pro/update/c$a;

    if-eqz p1, :cond_c

    .line 861
    iget-object p1, p0, Lcom/x/plus/pro/update/c$2;->a:Lcom/x/plus/pro/update/c$a;

    invoke-interface {p1}, Lcom/x/plus/pro/update/c$a;->a()V

    .line 863
    :cond_c
    iget-object p1, p0, Lcom/x/plus/pro/update/c$2;->e:Lcom/x/plus/pro/update/c;

    iget-object v0, p0, Lcom/x/plus/pro/update/c$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/x/plus/pro/update/c$2;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/x/plus/pro/update/c;->b(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 878
    iget-object p1, p0, Lcom/x/plus/pro/update/c$2;->e:Lcom/x/plus/pro/update/c;

    iget-object v0, p0, Lcom/x/plus/pro/update/c$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/x/plus/pro/update/c$2;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/x/plus/pro/update/c$2;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/x/plus/pro/update/c;->a(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 881
    :cond_24
    iget-object p0, p0, Lcom/x/plus/pro/update/c$2;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/a;II)V
    .registers 4

    .line 826
    invoke-super {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;II)V

    mul-int/lit8 p2, p2, 0x64

    .line 830
    div-int/2addr p2, p3

    .line 831
    iget-object p1, p0, Lcom/x/plus/pro/update/c$2;->a:Lcom/x/plus/pro/update/c$a;

    if-eqz p1, :cond_f

    .line 832
    iget-object p0, p0, Lcom/x/plus/pro/update/c$2;->a:Lcom/x/plus/pro/update/c$a;

    invoke-interface {p0, p2}, Lcom/x/plus/pro/update/c$a;->a(I)V

    :cond_f
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V
    .registers 3

    .line 838
    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/liulishuo/filedownloader/a;II)V
    .registers 4

    .line 851
    invoke-super {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/m;->b(Lcom/liulishuo/filedownloader/a;II)V

    return-void
.end method
