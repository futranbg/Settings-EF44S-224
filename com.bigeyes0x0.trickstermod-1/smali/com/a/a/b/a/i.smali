.class public final Lcom/a/a/b/a/i;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/a/a/ae;


# instance fields
.field private final a:Lcom/a/a/b/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/a/a/b/f;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/a/a/b/a/i;->a:Lcom/a/a/b/f;

    .line 112
    iput-boolean p2, p0, Lcom/a/a/b/a/i;->b:Z

    .line 113
    return-void
.end method

.method private a(Lcom/a/a/j;Ljava/lang/reflect/Type;)Lcom/a/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/a/a/b/a/v;->f:Lcom/a/a/ad;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/b/a/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/a/a/b/a/i;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/a/a/j;Lcom/a/a/c/a;)Lcom/a/a/ad;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/a/i;->a(Lcom/a/a/j;Ljava/lang/reflect/Type;)Lcom/a/a/ad;

    move-result-object v4

    .line 126
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v6

    .line 127
    iget-object v0, p0, Lcom/a/a/b/a/i;->a:Lcom/a/a/b/f;

    invoke-virtual {v0, p2}, Lcom/a/a/b/f;->a(Lcom/a/a/c/a;)Lcom/a/a/b/ad;

    move-result-object v7

    .line 131
    new-instance v0, Lcom/a/a/b/a/j;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/a/a/b/a/j;-><init>(Lcom/a/a/b/a/i;Lcom/a/a/j;Ljava/lang/reflect/Type;Lcom/a/a/ad;Ljava/lang/reflect/Type;Lcom/a/a/ad;Lcom/a/a/b/ad;)V

    goto :goto_0
.end method
