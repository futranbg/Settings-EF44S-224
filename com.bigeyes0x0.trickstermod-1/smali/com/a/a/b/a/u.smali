.class final Lcom/a/a/b/a/u;
.super Lcom/a/a/ad;
.source "TypeAdapterRuntimeTypeWrapper.java"


# instance fields
.field private final a:Lcom/a/a/j;

.field private final b:Lcom/a/a/ad;

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/a/a/b/a/u;->a:Lcom/a/a/j;

    .line 34
    iput-object p2, p0, Lcom/a/a/b/a/u;->b:Lcom/a/a/ad;

    .line 35
    iput-object p3, p0, Lcom/a/a/b/a/u;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/a/a/b/a/u;->b:Lcom/a/a/ad;

    .line 53
    iget-object v1, p0, Lcom/a/a/b/a/u;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/a/a/b/a/u;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/a/a/b/a/u;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/a/a/b/a/u;->a:Lcom/a/a/j;

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/a/a/b/a/o;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/a/a/b/a/u;->b:Lcom/a/a/ad;

    instance-of v1, v1, Lcom/a/a/b/a/o;

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/a/a/b/a/u;->b:Lcom/a/a/ad;

    goto :goto_0
.end method
