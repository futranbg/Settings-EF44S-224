.class public final Lcom/a/a/j;
.super Ljava/lang/Object;
.source "Gson.java"


# instance fields
.field final a:Lcom/a/a/s;

.field final b:Lcom/a/a/z;

.field private final c:Ljava/lang/ThreadLocal;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/List;

.field private final f:Lcom/a/a/b/f;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/a/a/b/s;->a:Lcom/a/a/b/s;

    sget-object v2, Lcom/a/a/c;->a:Lcom/a/a/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/a/a/aa;->a:Lcom/a/a/aa;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/a/a/j;-><init>(Lcom/a/a/b/s;Lcom/a/a/i;Ljava/util/Map;ZZZZZZLcom/a/a/aa;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/a/a/b/s;Lcom/a/a/i;Ljava/util/Map;ZZZZZZLcom/a/a/aa;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/a/a/j;->c:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->d:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0, p0}, Lcom/a/a/k;-><init>(Lcom/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/s;

    .line 130
    new-instance v0, Lcom/a/a/l;

    invoke-direct {v0, p0}, Lcom/a/a/l;-><init>(Lcom/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/j;->b:Lcom/a/a/z;

    .line 186
    new-instance v0, Lcom/a/a/b/f;

    invoke-direct {v0, p3}, Lcom/a/a/b/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/b/f;

    .line 187
    iput-boolean p4, p0, Lcom/a/a/j;->g:Z

    .line 188
    iput-boolean p6, p0, Lcom/a/a/j;->i:Z

    .line 189
    iput-boolean p7, p0, Lcom/a/a/j;->h:Z

    .line 190
    iput-boolean p8, p0, Lcom/a/a/j;->j:Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    sget-object v1, Lcom/a/a/b/a/v;->Q:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v1, Lcom/a/a/b/a/k;->a:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v1, Lcom/a/a/b/a/v;->x:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v1, Lcom/a/a/b/a/v;->m:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/a/a/b/a/v;->g:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/a/a/b/a/v;->i:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/a/a/b/a/v;->k:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/a/a/j;->a(Lcom/a/a/aa;)Lcom/a/a/ad;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/v;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ad;)Lcom/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/a/a/j;->a(Z)Lcom/a/a/ad;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/v;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ad;)Lcom/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/a/a/j;->b(Z)Lcom/a/a/ad;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/a/b/a/v;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/ad;)Lcom/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Lcom/a/a/b/a/v;->r:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/a/a/b/a/v;->t:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/a/a/b/a/v;->z:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/a/a/b/a/v;->B:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/a/a/b/a/v;->v:Lcom/a/a/ad;

    invoke-static {v1, v2}, Lcom/a/a/b/a/v;->a(Ljava/lang/Class;Lcom/a/a/ad;)Lcom/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/a/a/b/a/v;->w:Lcom/a/a/ad;

    invoke-static {v1, v2}, Lcom/a/a/b/a/v;->a(Ljava/lang/Class;Lcom/a/a/ad;)Lcom/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/a/a/b/a/v;->D:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/a/a/b/a/v;->F:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/a/a/b/a/v;->J:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/a/a/b/a/v;->O:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/a/a/b/a/v;->H:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/a/a/b/a/v;->d:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/a/a/b/a/e;->a:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/a/a/b/a/v;->M:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/a/a/b/a/s;->a:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/a/a/b/a/q;->a:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/a/a/b/a/v;->K:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/a/a/b/a/a;->a:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/a/a/b/a/v;->R:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/a/a/b/a/v;->b:Lcom/a/a/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/a/a/b/a/c;

    iget-object v2, p0, Lcom/a/a/j;->f:Lcom/a/a/b/f;

    invoke-direct {v1, v2}, Lcom/a/a/b/a/c;-><init>(Lcom/a/a/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/a/a/b/a/i;

    iget-object v2, p0, Lcom/a/a/j;->f:Lcom/a/a/b/f;

    invoke-direct {v1, v2, p5}, Lcom/a/a/b/a/i;-><init>(Lcom/a/a/b/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/a/a/b/a/m;

    iget-object v2, p0, Lcom/a/a/j;->f:Lcom/a/a/b/f;

    invoke-direct {v1, v2, p2, p1}, Lcom/a/a/b/a/m;-><init>(Lcom/a/a/b/f;Lcom/a/a/i;Lcom/a/a/b/s;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->e:Ljava/util/List;

    .line 244
    return-void
.end method

.method private a(Lcom/a/a/aa;)Lcom/a/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/a/a/aa;->a:Lcom/a/a/aa;

    if-ne p1, v0, :cond_0

    .line 304
    sget-object v0, Lcom/a/a/b/a/v;->n:Lcom/a/a/ad;

    .line 306
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p0}, Lcom/a/a/o;-><init>(Lcom/a/a/j;)V

    goto :goto_0
.end method

.method private a(Z)Lcom/a/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    sget-object v0, Lcom/a/a/b/a/v;->p:Lcom/a/a/ad;

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/m;-><init>(Lcom/a/a/j;)V

    goto :goto_0
.end method

.method private a(D)V
    .locals 3
    .parameter

    .prologue
    .line 295
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/a/a/j;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/a/a/j;->a(D)V

    return-void
.end method

.method private b(Z)Lcom/a/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    sget-object v0, Lcom/a/a/b/a/v;->o:Lcom/a/a/ad;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/n;

    invoke-direct {v0, p0}, Lcom/a/a/n;-><init>(Lcom/a/a/j;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/ae;Lcom/a/a/c/a;)Lcom/a/a/ad;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/a/a/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ae;

    .line 423
    if-nez v1, :cond_1

    .line 424
    if-ne v0, p1, :cond_0

    .line 425
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/a/a/ae;->a(Lcom/a/a/j;Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    return-object v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/c/a;)Lcom/a/a/ad;
    .locals 5
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/a/a/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ad;

    .line 333
    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/a/a/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    const/4 v1, 0x0

    .line 339
    if-nez v0, :cond_5

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/a/a/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 346
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/p;

    .line 347
    if-nez v0, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lcom/a/a/p;

    invoke-direct {v3}, Lcom/a/a/p;-><init>()V

    .line 353
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/a/a/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ae;

    .line 356
    invoke-interface {v0, p0, p1}, Lcom/a/a/ae;->a(Lcom/a/a/j;Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v3, v0}, Lcom/a/a/p;->a(Lcom/a/a/ad;)V

    .line 359
    iget-object v3, p0, Lcom/a/a/j;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/a/a/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 363
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/a/a/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lcom/a/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 445
    invoke-static {p1}, Lcom/a/a/c/a;->b(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/j;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->f:Lcom/a/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
