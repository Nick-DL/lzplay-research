.class public final Lcom/liulishuo/filedownloader/g/b$a;
.super Ljava/lang/Object;
.source "FileDownloadRandomAccessFile.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/h/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcom/liulishuo/filedownloader/g/a;
    .registers 2

    .line 74
    new-instance p0, Lcom/liulishuo/filedownloader/g/b;

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/g/b;-><init>(Ljava/io/File;)V

    return-object p0
.end method
