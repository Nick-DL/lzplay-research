.class public final Lcom/a/a/b/a/k;
.super Lcom/a/a/r;
.source "TimeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/a/a/s;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/a/a/b/a/k$1;

    invoke-direct {v0}, Lcom/a/a/b/a/k$1;-><init>()V

    sput-object v0, Lcom/a/a/b/a/k;->a:Lcom/a/a/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/b/a/k;->b:Ljava/text/DateFormat;

    return-void
.end method

.method private declared-synchronized a(Lcom/a/a/d/c;Ljava/sql/Time;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_b

    .line 64
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/a/a/b/a/k;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-virtual {p1, p2}, Lcom/a/a/d/c;->b(Ljava/lang/String;)Lcom/a/a/d/c;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 65
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/a/a/d/a;)Ljava/sql/Time;
    .registers 5

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_f

    .line 52
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    const/4 p1, 0x0

    .line 53
    monitor-exit p0

    return-object p1

    .line 56
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/a/a/b/a/k;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_24
    .catchall {:try_start_f .. :try_end_22} :catchall_2b

    monitor-exit p0

    return-object v0

    :catch_24
    move-exception p1

    .line 59
    :try_start_25
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p1}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    .line 50
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/a/a/b/a/k;->b(Lcom/a/a/d/a;)Ljava/sql/Time;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 3

    .line 40
    check-cast p2, Ljava/sql/Time;

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a/k;->a(Lcom/a/a/d/c;Ljava/sql/Time;)V

    return-void
.end method
