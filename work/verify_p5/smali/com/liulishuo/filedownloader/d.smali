.class public final Lcom/liulishuo/filedownloader/d;
.super Ljava/lang/Object;
.source "DownloadTaskHunter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a$c;
.implements Lcom/liulishuo/filedownloader/y;
.implements Lcom/liulishuo/filedownloader/y$a;
.implements Lcom/liulishuo/filedownloader/y$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/u;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/liulishuo/filedownloader/d$a;

.field private volatile d:B

.field private e:Ljava/lang/Throwable;

.field private final f:Lcom/liulishuo/filedownloader/t$b;

.field private final g:Lcom/liulishuo/filedownloader/t$a;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/d$a;Ljava/lang/Object;)V
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 322
    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v1, 0x0

    .line 323
    iput-object v1, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    .line 338
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/d;->n:Z

    .line 341
    iput-object p2, p0, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    .line 342
    iput-object p1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    .line 343
    new-instance p2, Lcom/liulishuo/filedownloader/b;

    invoke-direct {p2}, Lcom/liulishuo/filedownloader/b;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    .line 345
    iput-object p2, p0, Lcom/liulishuo/filedownloader/d;->g:Lcom/liulishuo/filedownloader/t$a;

    .line 346
    new-instance p2, Lcom/liulishuo/filedownloader/k;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/liulishuo/filedownloader/k;-><init>(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/a$c;)V

    iput-object p2, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    return-void
.end method

.method private e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    .line 131
    iput-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 132
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->m()Z

    move-result v2

    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/d;->k:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 144
    :pswitch_1
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 179
    :pswitch_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 180
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    .line 181
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/d;->j:I

    .line 183
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/t$b;->a()V

    .line 186
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 167
    :pswitch_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 168
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/filedownloader/t$b;->c(J)V

    .line 171
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 147
    :pswitch_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/liulishuo/filedownloader/d;->i:J

    .line 148
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/d;->l:Z

    .line 149
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/d;->m:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->r()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "already has mFilename[%s], but assign mFilename[%s] again"

    .line 154
    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->r()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    .line 154
    invoke-static {p0, v5, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/d$a;->c(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/filedownloader/t$b;->a(J)V

    .line 164
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 136
    :pswitch_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 137
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    .line 140
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 189
    :pswitch_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    .line 190
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 8038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    .line 193
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    return-void

    :pswitch_7
    return-void

    .line 202
    :pswitch_8
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/d;->n:Z

    .line 204
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 205
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    .line 9038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    .line 208
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    return-void

    .line 212
    :pswitch_9
    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/t$b;->a()V

    .line 10038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/liulishuo/filedownloader/h;->a(I)I

    move-result v1

    if-gt v1, v4, :cond_2

    .line 218
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->q()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v5

    .line 220
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 219
    invoke-virtual {v5, v6}, Lcom/liulishuo/filedownloader/h;->a(I)I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    add-int/2addr v1, v5

    if-gt v1, v4, :cond_4

    .line 11043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v1

    .line 231
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/liulishuo/filedownloader/n;->b(I)B

    move-result v1

    const-string v5, "warn, but no mListener to receive, switch to pending %d %d"

    .line 232
    new-array v2, v2, [Ljava/lang/Object;

    .line 233
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    .line 232
    invoke-static {p0, v5, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    .line 240
    iput-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 241
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    .line 242
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 244
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/filedownloader/t$b;->a(J)V

    .line 246
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;

    .line 248
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;->l()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    .line 247
    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 12038
    :cond_4
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    .line 257
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private n()I
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 3

    const/4 v0, -0x1

    .line 121
    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 122
    iput-object p1, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    .line 123
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v0

    .line 7480
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/d;->h:J

    .line 123
    invoke-static {v0, v1, v2, p1}, Lcom/liulishuo/filedownloader/message/d;->a(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 4

    .line 270
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "filedownloader:lifecycle:start %s by %d "

    const/4 v1, 0x2

    .line 271
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 12440
    iget-byte v3, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 272
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->g:Lcom/liulishuo/filedownloader/t$a;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/t$a;->a(I)V

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 7

    .line 1440
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 45
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v4

    goto :goto_3

    :cond_1
    if-gez v0, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    if-lez v0, :cond_4

    if-gt v0, v5, :cond_4

    const/16 v6, 0xa

    if-lt v1, v6, :cond_4

    const/16 v6, 0xb

    if-gt v1, v6, :cond_4

    goto :goto_0

    :cond_4
    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_1
    move v0, v3

    goto :goto_3

    :pswitch_2
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    if-eq v1, v3, :cond_0

    if-eq v1, v5, :cond_0

    goto :goto_2

    :pswitch_4
    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_5
    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_3

    goto :goto_2

    :pswitch_6
    if-eqz v1, :cond_0

    goto :goto_2

    :goto_3
    if-nez v0, :cond_6

    .line 46
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    .line 47
    new-array v0, v2, [Ljava/lang/Object;

    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 48
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3440
    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 48
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v4

    .line 53
    :cond_6
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 5

    .line 291
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "filedownloader:lifecycle:over %s by %d "

    const/4 v2, 0x2

    .line 292
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 13440
    iget-byte v3, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 293
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 292
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/t$b;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v2, v3}, Lcom/liulishuo/filedownloader/t$b;->b(J)V

    .line 297
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->U()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    .line 300
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->U()Ljava/util/ArrayList;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/s;->e()Lcom/liulishuo/filedownloader/w;

    move-result-object v0

    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/w;->b(Lcom/liulishuo/filedownloader/a$a;)V

    return-void
.end method

.method public final b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 9

    .line 4440
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 60
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_2

    if-lez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    .line 63
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "High concurrent cause, callback pending, but has already be paused %d"

    .line 70
    new-array v0, v4, [Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 70
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v4

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v1, :cond_8

    :cond_3
    if-gez v0, :cond_4

    move v8, v4

    goto :goto_1

    :cond_4
    move v8, v3

    :goto_1
    if-nez v8, :cond_8

    if-ne v1, v2, :cond_6

    :cond_5
    :goto_2
    :pswitch_0
    move v0, v4

    goto :goto_4

    :cond_6
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    goto :goto_2

    :cond_7
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_3

    :pswitch_2
    if-eq v1, v4, :cond_5

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    const/16 v0, 0xb

    if-eq v1, v0, :cond_5

    goto :goto_3

    :pswitch_4
    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_5

    goto :goto_3

    :pswitch_5
    const/4 v0, -0x3

    if-eq v1, v0, :cond_5

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_5

    goto :goto_3

    :pswitch_6
    const/4 v0, 0x6

    if-eq v1, v0, :cond_5

    goto :goto_3

    :pswitch_7
    const/16 v0, 0xa

    if-eq v1, v0, :cond_5

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    if-nez v0, :cond_a

    .line 77
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    .line 78
    new-array v0, v7, [Ljava/lang/Object;

    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 79
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    .line 6440
    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 79
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 78
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v3

    .line 85
    :cond_a
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/liulishuo/filedownloader/u;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/u;

    return-object p0
.end method

.method public final c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 7278
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->y()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->y()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return v3
.end method

.method public final d()V
    .locals 8

    .line 351
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v1, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    .line 353
    new-array v2, v2, [Ljava/lang/Object;

    .line 355
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 353
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0xa

    .line 359
    iput-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    .line 369
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    const/4 v6, 0x4

    .line 370
    new-array v6, v6, [Ljava/lang/Object;

    .line 372
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->t()Lcom/liulishuo/filedownloader/i;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->B()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    .line 370
    invoke-static {p0, v5, v6}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13527
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v1

    .line 13528
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    .line 13530
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 13531
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    .line 13532
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "save Path is null to %s"

    .line 13533
    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p0, v2, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13538
    :cond_2
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13539
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 13541
    :cond_3
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 13547
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13550
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13551
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 13552
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 13556
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    .line 13553
    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    move v0, v3

    goto :goto_2

    .line 13543
    :cond_6
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v5, "the provided mPath[%s] is invalid, can\'t find its directory"

    new-array v6, v3, [Ljava/lang/Object;

    .line 13545
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    .line 13544
    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 14038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 382
    invoke-virtual {v2, v0}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$a;)V

    .line 15038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 383
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    .line 15044
    invoke-static {}, Lcom/liulishuo/filedownloader/q$a;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/q;->a(Lcom/liulishuo/filedownloader/y$b;)V

    .line 390
    :cond_7
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "the task[%d] has been into the launch pool."

    .line 391
    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 360
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    .line 7440
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final e()Z
    .locals 7

    .line 15440
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 398
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "High concurrent cause, Already is over, can\'t pause again, %d %d"

    const/4 v3, 0x2

    .line 405
    new-array v3, v3, [Ljava/lang/Object;

    .line 16440
    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 406
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 405
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, -0x2

    .line 410
    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    .line 412
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    .line 17044
    invoke-static {}, Lcom/liulishuo/filedownloader/q$a;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v4

    .line 415
    invoke-virtual {v4, p0}, Lcom/liulishuo/filedownloader/q;->b(Lcom/liulishuo/filedownloader/y$b;)V

    .line 416
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "the task[%d] has been expired from the launch pool."

    .line 417
    new-array v5, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {}, Lcom/liulishuo/filedownloader/s;->b()Z

    move-result v4

    if-nez v4, :cond_4

    .line 421
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "request pause the task[%d] to the download service, but the download service isn\'t connected yet."

    .line 422
    new-array v5, v2, [Ljava/lang/Object;

    .line 423
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 422
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 18043
    :cond_4
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object p0

    .line 426
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/n;->a(I)Z

    .line 19038
    :cond_5
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object p0

    .line 430
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$a;)V

    .line 20038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object p0

    .line 431
    invoke-static {v3}, Lcom/liulishuo/filedownloader/message/d;->a(Lcom/liulishuo/filedownloader/a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    .line 433
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/s;->e()Lcom/liulishuo/filedownloader/w;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/w;->b(Lcom/liulishuo/filedownloader/a$a;)V

    return v2
.end method

.method public final f()B
    .locals 0

    .line 440
    iget-byte p0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    return p0
.end method

.method public final g()J
    .locals 2

    .line 480
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 485
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    return-wide v0
.end method

.method public final i()Ljava/lang/Throwable;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final j()I
    .locals 0

    .line 495
    iget p0, p0, Lcom/liulishuo/filedownloader/d;->j:I

    return p0
.end method

.method public final k()Z
    .locals 0

    .line 515
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/d;->k:Z

    return p0
.end method

.method public final l()V
    .locals 5

    .line 520
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "free the task %d, when the status is %d"

    const/4 v2, 0x2

    .line 521
    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :cond_0
    iput-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    return-void
.end method

.method public final m()V
    .locals 18

    move-object/from16 v1, p0

    .line 568
    iget-byte v0, v1, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_0

    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    .line 569
    new-array v2, v2, [Ljava/lang/Object;

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    .line 569
    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 575
    :cond_0
    iget-object v0, v1, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->T()Lcom/liulishuo/filedownloader/a$a;

    move-result-object v6

    .line 576
    invoke-interface {v6}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 578
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v7

    .line 579
    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/s;->e()Lcom/liulishuo/filedownloader/w;

    move-result-object v7

    .line 582
    :try_start_0
    invoke-interface {v7, v6}, Lcom/liulishuo/filedownloader/w;->c(Lcom/liulishuo/filedownloader/a$a;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    .line 586
    :cond_1
    iget-object v8, v1, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :try_start_1
    iget-byte v9, v1, Lcom/liulishuo/filedownloader/d;->d:B

    if-eq v9, v3, :cond_2

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    .line 588
    new-array v2, v2, [Ljava/lang/Object;

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-byte v3, v1, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    .line 588
    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    monitor-exit v8

    return-void

    :cond_2
    const/16 v2, 0xb

    .line 595
    iput-byte v2, v1, Lcom/liulishuo/filedownloader/d;->d:B

    .line 596
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21038
    :try_start_2
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 598
    invoke-virtual {v2, v6}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$a;)V

    .line 600
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->s()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->z()Z

    move-result v8

    .line 599
    invoke-static {v2, v3, v8, v5}, Lcom/liulishuo/filedownloader/h/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 21043
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v8

    .line 608
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->m()Ljava/lang/String;

    move-result-object v9

    .line 609
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->p()Ljava/lang/String;

    move-result-object v10

    .line 610
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->q()Z

    move-result v11

    .line 611
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->n()I

    move-result v12

    .line 612
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->o()I

    move-result v13

    .line 613
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->C()I

    move-result v14

    .line 614
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->z()Z

    move-result v15

    iget-object v2, v1, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    .line 615
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/d$a;->S()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    move-result-object v16

    .line 616
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->G()Z

    move-result v17

    .line 607
    invoke-virtual/range {v8 .. v17}, Lcom/liulishuo/filedownloader/n;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    .line 618
    iget-byte v2, v1, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    const-string v2, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    .line 619
    new-array v3, v5, [Ljava/lang/Object;

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 619
    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 22043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/n;->a(I)Z

    :cond_4
    return-void

    :cond_5
    if-nez v0, :cond_7

    .line 631
    invoke-interface {v7, v6}, Lcom/liulishuo/filedownloader/w;->c(Lcom/liulishuo/filedownloader/a$a;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 632
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    .line 23038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 637
    invoke-virtual {v2, v6}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 638
    invoke-interface {v7, v6}, Lcom/liulishuo/filedownloader/w;->b(Lcom/liulishuo/filedownloader/a$a;)V

    .line 24038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 639
    invoke-virtual {v2, v6}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$a;)V

    .line 25038
    :cond_6
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 642
    invoke-virtual {v2, v6, v0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    return-void

    .line 649
    :cond_7
    invoke-interface {v7, v6}, Lcom/liulishuo/filedownloader/w;->b(Lcom/liulishuo/filedownloader/a$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 596
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 655
    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    return-void
.end method
