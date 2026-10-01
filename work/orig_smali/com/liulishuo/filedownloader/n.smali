.class public final Lcom/liulishuo/filedownloader/n;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/n$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/liulishuo/filedownloader/v;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/h/e;->d:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/liulishuo/filedownloader/o;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/o;-><init>()V

    goto :goto_16

    :cond_11
    new-instance v0, Lcom/liulishuo/filedownloader/p;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/p;-><init>()V

    :goto_16
    iput-object v0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/v;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/v;->a(Z)V

    return-void
.end method

.method public final a()Z
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/v;->a()Z

    move-result p0

    return p0
.end method

.method public final a(I)Z
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/v;->a(I)Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .registers 20

    move-object v0, p0

    .line 68
    iget-object v0, v0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/liulishuo/filedownloader/v;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    return v0
.end method

.method public final b(I)B
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/v;->b(I)B

    move-result p0

    return p0
.end method

.method public final b()Z
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/v;->b()Z

    move-result p0

    return p0
.end method
