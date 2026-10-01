.class public final Landroidx/core/content/a/c$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/core/b/a;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/core/b/a;II)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/core/content/a/c$d;->a:Landroidx/core/b/a;

    .line 84
    iput p2, p0, Landroidx/core/content/a/c$d;->c:I

    .line 85
    iput p3, p0, Landroidx/core/content/a/c$d;->b:I

    return-void
.end method
