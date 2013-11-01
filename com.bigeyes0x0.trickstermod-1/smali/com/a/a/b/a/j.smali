.class final Lcom/a/a/b/a/j;
.super Lcom/a/a/ad;
.source "MapTypeAdapterFactory.java"


# instance fields
.field final synthetic a:Lcom/a/a/b/a/i;

.field private final b:Lcom/a/a/ad;

.field private final c:Lcom/a/a/ad;

.field private final d:Lcom/a/a/b/ad;


# direct methods
.method public constructor <init>(Lcom/a/a/b/a/i;Lcom/a/a/j;Ljava/lang/reflect/Type;Lcom/a/a/ad;Ljava/lang/reflect/Type;Lcom/a/a/ad;Lcom/a/a/b/ad;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/a/a/b/a/j;->a:Lcom/a/a/b/a/i;

    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 153
    new-instance v0, Lcom/a/a/b/a/u;

    invoke-direct {v0, p2, p4, p3}, Lcom/a/a/b/a/u;-><init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/j;->b:Lcom/a/a/ad;

    .line 155
    new-instance v0, Lcom/a/a/b/a/u;

    invoke-direct {v0, p2, p6, p5}, Lcom/a/a/b/a/u;-><init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/j;->c:Lcom/a/a/ad;

    .line 157
    iput-object p7, p0, Lcom/a/a/b/a/j;->d:Lcom/a/a/b/ad;

    .line 158
    return-void
.end method

.method private a(Lcom/a/a/t;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/a/a/t;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {p1}, Lcom/a/a/t;->j()Lcom/a/a/y;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/a/a/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/a/a/y;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/a/a/y;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/a/a/y;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v0}, Lcom/a/a/y;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v0}, Lcom/a/a/y;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/a/a/t;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const-string v0, "null"

    goto :goto_0

    .line 260
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/j;->a(Lcom/a/a/d/a;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 199
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 243
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/j;->a:Lcom/a/a/b/a/i;

    invoke-static {v0}, Lcom/a/a/b/a/i;->a(Lcom/a/a/b/a/i;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()Lcom/a/a/d/a;

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 208
    iget-object v2, p0, Lcom/a/a/b/a/j;->c:Lcom/a/a/ad;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Lcom/a/a/d/a;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    iget-object v6, p0, Lcom/a/a/b/a/j;->b:Lcom/a/a/ad;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/a/a/ad;->a(Ljava/lang/Object;)Lcom/a/a/t;

    move-result-object v6

    .line 220
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v6}, Lcom/a/a/t;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/a/a/t;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    .line 223
    goto :goto_2

    :cond_4
    move v0, v2

    .line 222
    goto :goto_3

    .line 225
    :cond_5
    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()Lcom/a/a/d/a;

    .line 227
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 228
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()Lcom/a/a/d/a;

    .line 229
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/t;

    invoke-static {v0, p1}, Lcom/a/a/b/af;->a(Lcom/a/a/t;Lcom/a/a/d/a;)V

    .line 230
    iget-object v0, p0, Lcom/a/a/b/a/j;->c:Lcom/a/a/ad;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()Lcom/a/a/d/a;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 233
    :cond_6
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()Lcom/a/a/d/a;

    goto/16 :goto_0

    .line 235
    :cond_7
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()Lcom/a/a/d/a;

    .line 236
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 237
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/t;

    .line 238
    invoke-direct {p0, v0}, Lcom/a/a/b/a/j;->a(Lcom/a/a/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 239
    iget-object v0, p0, Lcom/a/a/b/a/j;->c:Lcom/a/a/ad;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 241
    :cond_8
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Lcom/a/a/d/a;

    goto/16 :goto_0
.end method
