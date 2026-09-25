.class public final Lcom/liulishuo/filedownloader/h/e$a;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    new-instance v0, Lcom/liulishuo/filedownloader/h/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/h/e;-><init>(B)V

    sput-object v0, Lcom/liulishuo/filedownloader/h/e$a;->a:Lcom/liulishuo/filedownloader/h/e;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/h/e;
    .locals 1

    .line 148
    sget-object v0, Lcom/liulishuo/filedownloader/h/e$a;->a:Lcom/liulishuo/filedownloader/h/e;

    return-object v0
.end method
