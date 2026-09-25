.class public Lcom/liulishuo/filedownloader/message/d;
.super Ljava/lang/Object;
.source "MessageSnapshotTaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/c/f$a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 8

    .line 1111
    iget v1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x4

    if-eq p0, v3, :cond_9

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v3, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    const/4 v4, 0x2

    .line 176
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 179
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v0

    .line 177
    invoke-static {v3, v5}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-class v5, Lcom/liulishuo/filedownloader/message/d;

    const-string v6, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 183
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v4, v0

    .line 181
    invoke-static {v5, v6, v4}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15521
    iget-object p0, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    if-eqz p0, :cond_7

    .line 187
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16521
    iget-object p2, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 187
    invoke-direct {p0, v3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 122
    :pswitch_1
    new-instance p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;-><init>(I)V

    goto/16 :goto_3

    .line 9232
    :pswitch_2
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p0, :cond_0

    .line 156
    new-instance p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;

    .line 10155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 10521
    iget-object v4, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 10525
    iget v5, p2, Lcom/liulishuo/filedownloader/c/f$a;->c:I

    move-object v0, p0

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;-><init>(IJLjava/lang/Throwable;I)V

    goto/16 :goto_3

    .line 160
    :cond_0
    new-instance p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;

    .line 11155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int p1, v2

    .line 11521
    iget-object v0, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 11525
    iget p2, p2, Lcom/liulishuo/filedownloader/c/f$a;->c:I

    .line 162
    invoke-direct {p0, v1, p1, v0, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;-><init>(IILjava/lang/Throwable;I)V

    goto/16 :goto_3

    .line 5232
    :pswitch_3
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p0, :cond_1

    .line 138
    new-instance p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;

    .line 6155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 139
    invoke-direct {p0, v1, p1, p2}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;-><init>(IJ)V

    goto/16 :goto_3

    .line 141
    :cond_1
    new-instance p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;

    .line 7155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    long-to-int p1, p1

    .line 142
    invoke-direct {p0, v1, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;-><init>(II)V

    goto/16 :goto_3

    .line 3187
    :pswitch_4
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    if-eqz p0, :cond_2

    .line 3191
    iget-object p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 3232
    :goto_0
    iget-boolean v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz v0, :cond_3

    .line 127
    new-instance v7, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;

    .line 3509
    iget-boolean v2, p2, Lcom/liulishuo/filedownloader/c/f$a;->a:Z

    .line 4159
    iget-wide v3, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 4167
    iget-object v5, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p0

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    move-object p0, v7

    goto/16 :goto_3

    .line 131
    :cond_3
    new-instance v6, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;

    .line 4509
    iget-boolean v2, p2, Lcom/liulishuo/filedownloader/c/f$a;->a:Z

    .line 5159
    iget-wide v3, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    long-to-int v3, v3

    .line 5167
    iget-object v4, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p0

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    move-object p0, v6

    goto/16 :goto_3

    .line 1232
    :pswitch_5
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p0, :cond_4

    .line 114
    new-instance p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;

    .line 2155
    iget-object p2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 2159
    iget-wide v4, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    move-object v0, p0

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(IJJ)V

    goto :goto_3

    .line 117
    :cond_4
    new-instance p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;

    .line 3155
    iget-object p2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int p2, v2

    .line 3159
    iget-wide v2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    long-to-int p1, v2

    .line 118
    invoke-direct {p0, v1, p2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(III)V

    goto :goto_3

    .line 12232
    :pswitch_6
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p0, :cond_5

    .line 167
    new-instance p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 13155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 13521
    iget-object p1, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 168
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    goto :goto_3

    .line 170
    :cond_5
    new-instance p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 14155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int p1, v2

    .line 14521
    iget-object p2, p2, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 171
    invoke-direct {p0, v1, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    goto :goto_3

    .line 7232
    :pswitch_7
    iget-boolean p0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p0, :cond_6

    .line 147
    new-instance p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    .line 8159
    iget-wide p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 148
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    goto :goto_3

    .line 150
    :cond_6
    new-instance p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    .line 9159
    iget-wide p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    long-to-int p1, p1

    .line 151
    invoke-direct {p0, v1, v2, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    goto :goto_3

    .line 189
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17232
    :goto_1
    iget-boolean p2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    if-eqz p2, :cond_8

    .line 193
    new-instance p2, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    .line 18155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 194
    invoke-direct {p2, v1, v2, v3, p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    :goto_2
    move-object p0, p2

    goto :goto_3

    .line 196
    :cond_8
    new-instance p2, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    .line 19155
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int p1, v2

    .line 197
    invoke-direct {p2, v1, p1, p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    return-object p0

    .line 107
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v0, [Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "please use #catchWarn instead %d"

    invoke-static {p2, p1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_0
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

.method public static a(IJJZ)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 7

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    .line 59
    new-instance p5, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;

    move-object v1, p5

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(IJJ)V

    return-object p5

    .line 61
    :cond_0
    new-instance p5, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;

    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;-><init>(IJJ)V

    return-object p5

    :cond_1
    if-eqz p5, :cond_2

    .line 65
    new-instance p5, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {p5, p0, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;-><init>(III)V

    return-object p5

    .line 68
    :cond_2
    new-instance p5, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {p5, p0, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;-><init>(III)V

    return-object p5
.end method

.method public static a(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 75
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;-><init>(IJLjava/lang/Throwable;)V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;

    long-to-int p1, p1

    invoke-direct {v0, p0, p1, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;-><init>(IILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ILjava/io/File;Z)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 4

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 42
    new-instance p1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;

    invoke-direct {p1, p0, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(IJ)V

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;-><init>(IZJ)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 48
    new-instance p1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;

    long-to-int p2, v0

    invoke-direct {p1, p0, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;-><init>(II)V

    return-object p1

    .line 51
    :cond_2
    new-instance p1, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;

    long-to-int p2, v0

    invoke-direct {p1, p0, v2, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;-><init>(IZI)V

    return-object p1
.end method

.method public static a(Lcom/liulishuo/filedownloader/a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 7

    .line 82
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v2

    .line 84
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->v()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->x()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;-><init>(IJJ)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v1

    .line 87
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->u()I

    move-result v2

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->w()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;-><init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1038
    iget v3, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "take block completed snapshot, must has already be completed. %d %d"

    .line 94
    invoke-static {p0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
