.class public final Lcom/liulishuo/filedownloader/g/b;
.super Ljava/lang/Object;
.source "FileDownloadRandomAccessFile.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/BufferedOutputStream;

.field private final b:Ljava/io/FileDescriptor;

.field private final c:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    .line 39
    iget-object p1, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/g/b;->b:Ljava/io/FileDescriptor;

    .line 40
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/g/b;->a:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/liulishuo/filedownloader/g/b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 51
    iget-object p0, p0, Lcom/liulishuo/filedownloader/g/b;->b:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final a([BI)V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/liulishuo/filedownloader/g/b;->a:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/liulishuo/filedownloader/g/b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 57
    iget-object p0, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/liulishuo/filedownloader/g/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method
