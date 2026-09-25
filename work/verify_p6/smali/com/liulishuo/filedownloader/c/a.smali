.class public final Lcom/liulishuo/filedownloader/c/a;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/a$a;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field d:Lcom/liulishuo/filedownloader/c/b;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/c/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcom/liulishuo/filedownloader/c/a;->a:I

    .line 54
    iput-object p3, p0, Lcom/liulishuo/filedownloader/c/a;->b:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/liulishuo/filedownloader/c/a;->g:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/liulishuo/filedownloader/c/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 57
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/c/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;B)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/c/a;-><init>(Lcom/liulishuo/filedownloader/c/b;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/liulishuo/filedownloader/a/b;
    .locals 9

    .line 1052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/c/c;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 2095
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 1111
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "%d add outside header: %s"

    .line 1112
    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/liulishuo/filedownloader/c/a;->a:I

    .line 1113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    .line 1112
    invoke-static {p0, v5, v6}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1121
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1122
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1123
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 1125
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1126
    invoke-interface {v0, v6, v7}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2140
    :cond_2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "If-Match"

    .line 2141
    iget-object v5, p0, Lcom/liulishuo/filedownloader/c/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    :cond_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    .line 3075
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/b;->e:Z

    if-nez v5, :cond_6

    .line 3077
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/b;->f:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v5

    iget-boolean v5, v5, Lcom/liulishuo/filedownloader/h/e;->h:Z

    if-eqz v5, :cond_4

    const-string v5, "HEAD"

    .line 3078
    invoke-interface {v0, v5}, Lcom/liulishuo/filedownloader/a/b;->b(Ljava/lang/String;)Z

    .line 3082
    :cond_4
    iget-wide v5, v1, Lcom/liulishuo/filedownloader/c/b;->c:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    const-string v5, "bytes=%d-"

    .line 3083
    new-array v6, v3, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/b;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v5, "bytes=%d-%d"

    .line 3085
    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/b;->b:J

    .line 3086
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/b;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v5, "Range"

    .line 3088
    invoke-interface {v0, v5, v1}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    :cond_6
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 4095
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->a:Ljava/util/HashMap;

    const-string v5, "User-Agent"

    .line 3147
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "User-Agent"

    .line 3148
    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/liulishuo/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_8
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->b()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->e:Ljava/util/Map;

    .line 89
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "<---- %s request header %s"

    .line 90
    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/liulishuo/filedownloader/c/a;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/liulishuo/filedownloader/c/a;->e:Ljava/util/Map;

    aput-object v6, v5, v3

    invoke-static {p0, v1, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_9
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->d()V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/a;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;

    invoke-static {v1, v0, v5}, Lcom/liulishuo/filedownloader/a/d;->a(Ljava/util/Map;Lcom/liulishuo/filedownloader/a/b;Ljava/util/List;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v0

    .line 97
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_a

    const-string v1, "----> %s response header %s"

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/liulishuo/filedownloader/c/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 99
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-object v0
.end method
