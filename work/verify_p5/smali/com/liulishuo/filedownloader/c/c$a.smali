.class public final Lcom/liulishuo/filedownloader/c/c$a;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/liulishuo/filedownloader/c/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/c/c;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/c/c$a;->a:Lcom/liulishuo/filedownloader/c/c;

    return-void
.end method

.method public static synthetic a()Lcom/liulishuo/filedownloader/c/c;
    .locals 1

    .line 47
    sget-object v0, Lcom/liulishuo/filedownloader/c/c$a;->a:Lcom/liulishuo/filedownloader/c/c;

    return-object v0
.end method
