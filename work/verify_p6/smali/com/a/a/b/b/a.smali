.class final Lcom/a/a/b/b/a;
.super Lcom/a/a/b/b/b;
.source "PreJava9ReflectionAccessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/a/a/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    const/4 p0, 0x1

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method
