.class public final Lcom/liulishuo/filedownloader/c/b$a;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(JJJJ)Lcom/liulishuo/filedownloader/c/b;
    .registers 19

    .line 120
    new-instance v10, Lcom/liulishuo/filedownloader/c/b;

    const/4 v9, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJB)V

    return-object v10
.end method
