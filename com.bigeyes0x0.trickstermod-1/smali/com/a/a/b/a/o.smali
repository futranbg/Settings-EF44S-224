.class public final Lcom/a/a/b/a/o;
.super Lcom/a/a/ad;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field private final a:Lcom/a/a/b/ad;

.field private final b:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/a/a/b/ad;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/a/a/b/a/o;->a:Lcom/a/a/b/ad;

    .line 153
    iput-object p2, p0, Lcom/a/a/b/a/o;->b:Ljava/util/Map;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/ad;Ljava/util/Map;Lcom/a/a/b/a/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a/o;-><init>(Lcom/a/a/b/ad;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()Lcom/a/a/d/a;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/a/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/p;

    .line 193
    iget-boolean v2, v0, Lcom/a/a/b/a/p;->h:Z

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, v0, Lcom/a/a/b/a/p;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/a/p;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Lcom/a/a/d/a;

    goto :goto_0
.end method
