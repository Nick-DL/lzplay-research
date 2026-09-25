.class public Lcom/liulishuo/filedownloader/h/f;
.super Ljava/lang/Object;
.source "FileDownloadUtils.java"


# static fields
.field private static a:I = 0x10000

.field private static b:J = 0x7d0L

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "attachment;\\s*filename\\*\\s*=\\s*\"*([^\"]*)\'\\S*\'([^\"]*)\"*"

    .line 400
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/h/f;->f:Ljava/util/regex/Pattern;

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"*([^\"\\n]*)\"*"

    .line 403
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/h/f;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 5052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->a()Lcom/liulishuo/filedownloader/h/c$d;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-interface {v0, p0, p1, v1}, Lcom/liulishuo/filedownloader/h/c$d;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 6052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->a()Lcom/liulishuo/filedownloader/h/c$d;

    move-result-object v0

    .line 216
    invoke-interface {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/h/c$d;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/liulishuo/filedownloader/a/b;)J
    .locals 6

    .line 8583
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->c(Lcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->k(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-wide/16 v4, -0x1

    if-gez p0, :cond_0

    .line 568
    const-class p0, Lcom/liulishuo/filedownloader/h/f;

    const-string v0, "don\'t get instance length fromContent-Range header"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v4

    :cond_0
    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    .line 575
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object p0

    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/h/e;->h:Z

    if-eqz p0, :cond_1

    move-wide v0, v4

    :cond_1
    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lcom/liulishuo/filedownloader/h/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/liulishuo/filedownloader/h/f;->c:Ljava/lang/String;

    return-object v0

    .line 3051
    :cond_0
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4051
    :cond_1
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "Etag"

    .line 543
    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 545
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_0

    .line 546
    const-class v0, Lcom/liulishuo/filedownloader/h/f;

    const-string v1, "etag find %s for task(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 540
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "connection is null when findEtag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/liulishuo/filedownloader/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Disposition"

    .line 652
    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 651
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 654
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9158
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "../"

    .line 656
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-object p0

    .line 657
    :cond_1
    new-instance p1, Lcom/liulishuo/filedownloader/e/e;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "The filename [%s] from the response is not allowable, because it contains \'../\', which can raise the directory traversal vulnerability"

    invoke-static {p0, v0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/liulishuo/filedownloader/e/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 4158
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {v0, p0}, Lcom/liulishuo/filedownloader/h/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    return-object v0

    .line 471
    :cond_1
    invoke-static {p0, p2}, Lcom/liulishuo/filedownloader/h/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 356
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 1

    .line 1051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sput p0, Lcom/liulishuo/filedownloader/h/f;->a:I

    return-void

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-step\'."

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(J)V
    .locals 1

    .line 2051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 105
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sput-wide p0, Lcom/liulishuo/filedownloader/h/f;->b:J

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-time\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 10708
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_0

    .line 10709
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string v2, "can\'t continue %d model == null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, v2, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 10714
    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10715
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_2

    .line 10716
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string v2, "can\'t continue %d temp path == null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 10717
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, v2, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1

    .line 10722
    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 732
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_6

    .line 733
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string p2, "can\'t continue %d path = null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {p1, p2, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 738
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    .line 740
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p2, :cond_5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 751
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 11155
    iget-object p2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 11199
    iget p2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    if-gt p2, v1, :cond_2

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-nez p2, :cond_2

    .line 756
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_6

    .line 757
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string p2, "can\'t continue %d the downloaded-record is zero."

    new-array v1, v1, [Ljava/lang/Object;

    .line 759
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    .line 757
    invoke-static {p1, p2, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 12159
    :cond_2
    iget-wide p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_4

    const-wide/16 v8, -0x1

    cmp-long v8, p1, v8

    if-eqz v8, :cond_3

    cmp-long v8, v2, p1

    if-gtz v8, :cond_4

    cmp-long v8, v6, p1

    if-ltz v8, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 770
    :cond_4
    :goto_0
    sget-boolean v8, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v8, :cond_6

    .line 771
    const-class v8, Lcom/liulishuo/filedownloader/h/f;

    const-string v9, "can\'t continue %d dirty data fileLength[%d] sofar[%d] total[%d]"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 773
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v10, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v10, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v10, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v10, v5

    .line 771
    invoke-static {v8, v9, v10}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 743
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_6

    .line 744
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string v2, "can\'t continue %d file not suit, exists[%B], directory[%B]"

    new-array v5, v5, [Ljava/lang/Object;

    .line 746
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v4

    .line 744
    invoke-static {p1, v2, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return v0
.end method

.method public static a(JJ)Z
    .locals 2

    .line 13117
    sget v0, Lcom/liulishuo/filedownloader/h/f;->a:I

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    .line 13121
    sget-wide p0, Lcom/liulishuo/filedownloader/h/f;->b:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 280
    sget-object v0, Lcom/liulishuo/filedownloader/h/f;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 281
    sget-object p0, Lcom/liulishuo/filedownloader/h/f;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 286
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/h/e;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v2, "activity"

    .line 293
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_2

    .line 296
    const-class p0, Lcom/liulishuo/filedownloader/h/f;

    const-string v0, "fail to get the activity manager!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 301
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 303
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 311
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 312
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_4

    .line 313
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v0, ":filedownloader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 320
    :cond_5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 321
    sput-object p0, Lcom/liulishuo/filedownloader/h/f;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 304
    :cond_6
    :goto_1
    const-class p0, Lcom/liulishuo/filedownloader/h/f;

    const-string v0, "The running app process info list from ActivityManager is null or empty, maybe current App is not running."

    new-array v2, v1, [Ljava/lang/Object;

    .line 305
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static b(Lcom/liulishuo/filedownloader/a/b;)J
    .locals 4

    .line 625
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->c(Lcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->n(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 6394
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "filedownloader"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".old_file_converted"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 183
    sput-object p0, Lcom/liulishuo/filedownloader/h/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 12804
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12805
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12807
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 4

    .line 7051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 513
    const-class v0, Lcom/liulishuo/filedownloader/h/f;

    const-string v3, "failed to get connectivity manager!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 518
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public static b(ILcom/liulishuo/filedownloader/a/b;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xce

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Accept-Ranges"

    .line 557
    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bytes"

    .line 558
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(ILcom/liulishuo/filedownloader/a/b;)J
    .locals 5

    const-string v0, "Content-Length"

    .line 592
    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->m(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "Transfer-Encoding"

    .line 593
    invoke-interface {p1, v2}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-gez v2, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "chunked"

    .line 597
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_3

    .line 600
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object p1

    iget-boolean p1, p1, Lcom/liulishuo/filedownloader/h/e;->c:Z

    if-eqz p1, :cond_1

    .line 604
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_3

    .line 605
    const-class p1, Lcom/liulishuo/filedownloader/h/f;

    const-string v2, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk"

    new-array v0, v0, [Ljava/lang/Object;

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    .line 606
    invoke-static {p1, v2, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 611
    :cond_1
    new-instance p0, Lcom/liulishuo/filedownloader/e/a;

    const-string p1, "can\'t know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties"

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-wide v3, v0

    :cond_3
    :goto_1
    return-wide v3
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    const-string v0, "FileDownloader/%s"

    const/4 v1, 0x1

    .line 828
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1.7.6"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Range"

    .line 587
    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s.temp"

    const/4 v1, 0x1

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v1, p0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t generate real path, the directory is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t generate real path, the file name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6

    .line 861
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_4

    .line 13832
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    .line 13833
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 13837
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "power"

    .line 13840
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_3

    .line 13842
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_0

    .line 13843
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 13845
    :cond_0
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13848
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 13849
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 13851
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    move p0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 222
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, UTF-8 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, MD5 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e(Ljava/lang/String;)J
    .locals 5

    .line 344
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 345
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 484
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_0

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 487
    :goto_0
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v6, :cond_4

    sub-int/2addr v0, v2

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v0, v5, :cond_2

    goto :goto_2

    .line 494
    :cond_2
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 495
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_3

    add-int/2addr v3, v2

    .line 496
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "FileDownloader-"

    .line 504
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .line 8051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 525
    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/g/a;
    .locals 5

    .line 669
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 680
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v2

    const-string p0, "found invalid internal destination path[%s], & path is directory[%B]"

    .line 684
    invoke-static {p0, v4}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 689
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-array v1, v2, [Ljava/lang/Object;

    .line 691
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "create new file error  %s"

    .line 690
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10052
    :cond_3
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p0

    .line 10070
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->e()Lcom/liulishuo/filedownloader/h/c$e;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/h/c$e;->a(Ljava/io/File;)Lcom/liulishuo/filedownloader/g/a;

    move-result-object p0

    return-object p0

    .line 670
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "found invalid internal destination path, empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 814
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static k(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "/"

    .line 408
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 409
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    .line 411
    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    .line 413
    :catch_0
    const-class v2, Lcom/liulishuo/filedownloader/h/f;

    const-string v4, "parse instance length failed with %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-static {v2, v4, v3}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-wide v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 435
    :cond_0
    :try_start_0
    sget-object v1, Lcom/liulishuo/filedownloader/h/f;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 437
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    .line 438
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_1
    sget-object v1, Lcom/liulishuo/filedownloader/h/f;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private static m(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 532
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method private static n(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_2

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "bytes (\\d+)-(\\d+)/\\d+"

    .line 635
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 636
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 638
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 639
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v2

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    return-wide v4

    :catch_0
    move-exception p0

    .line 643
    const-class v2, Lcom/liulishuo/filedownloader/h/f;

    const-string v3, "parse content length from content range error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, v3, v4}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method
