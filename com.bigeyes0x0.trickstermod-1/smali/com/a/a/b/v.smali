.class public final Lcom/a/a/b/v;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic f:Z

.field private static final g:Ljava/util/Comparator;


# instance fields
.field a:Ljava/util/Comparator;

.field b:Lcom/a/a/b/ac;

.field c:I

.field d:I

.field final e:Lcom/a/a/b/ac;

.field private h:Lcom/a/a/b/x;

.field private i:Lcom/a/a/b/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/a/a/b/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/b/v;->f:Z

    .line 40
    new-instance v0, Lcom/a/a/b/w;

    invoke-direct {v0}, Lcom/a/a/b/w;-><init>()V

    sput-object v0, Lcom/a/a/b/v;->g:Ljava/util/Comparator;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/a/a/b/v;->g:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/a/a/b/v;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    iput v0, p0, Lcom/a/a/b/v;->c:I

    .line 49
    iput v0, p0, Lcom/a/a/b/v;->d:I

    .line 52
    new-instance v0, Lcom/a/a/b/ac;

    invoke-direct {v0}, Lcom/a/a/b/ac;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    .line 72
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/a/a/b/v;->a:Ljava/util/Comparator;

    .line 75
    return-void

    .line 72
    :cond_0
    sget-object p1, Lcom/a/a/b/v;->g:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private a(Lcom/a/a/b/ac;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 375
    iget-object v3, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 376
    iget-object v4, v3, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 377
    iget-object v5, v3, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 380
    iput-object v4, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 381
    if-eqz v4, :cond_0

    .line 382
    iput-object p1, v4, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 388
    iput-object p1, v3, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 389
    iput-object v3, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 392
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/a/a/b/ac;->h:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/a/a/b/ac;->h:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/ac;->h:I

    .line 394
    iget v0, p1, Lcom/a/a/b/ac;->h:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/a/a/b/ac;->h:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/ac;->h:I

    .line 396
    return-void

    :cond_2
    move v2, v1

    .line 392
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iput-object v0, p2, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 291
    :cond_0
    if-eqz v0, :cond_3

    .line 292
    iget-object v1, v0, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    if-ne v1, p1, :cond_1

    .line 293
    iput-object p2, v0, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_1
    sget-boolean v1, Lcom/a/a/b/v;->f:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_2
    iput-object p2, v0, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    goto :goto_0

    .line 299
    :cond_3
    iput-object p2, p0, Lcom/a/a/b/v;->b:Lcom/a/a/b/ac;

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/a/a/b/ac;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v3, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 403
    iget-object v0, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 404
    iget-object v4, v3, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 405
    iget-object v5, v3, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 408
    iput-object v5, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 409
    if-eqz v5, :cond_0

    .line 410
    iput-object p1, v5, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 416
    iput-object p1, v3, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 417
    iput-object v3, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 420
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/a/a/b/ac;->h:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/a/a/b/ac;->h:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/ac;->h:I

    .line 422
    iget v0, p1, Lcom/a/a/b/ac;->h:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/a/a/b/ac;->h:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/ac;->h:I

    .line 424
    return-void

    :cond_2
    move v2, v1

    .line 420
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/a/a/b/ac;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 311
    :goto_0
    if-eqz p1, :cond_1

    .line 312
    iget-object v3, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 313
    iget-object v4, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 314
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/a/a/b/ac;->h:I

    move v2, v0

    .line 315
    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/a/a/b/ac;->h:I

    .line 317
    :goto_2
    sub-int v5, v2, v0

    .line 318
    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 319
    iget-object v3, v4, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 320
    iget-object v0, v4, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 321
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/a/a/b/ac;->h:I

    move v2, v0

    .line 322
    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/a/a/b/ac;->h:I

    .line 324
    :goto_4
    sub-int/2addr v0, v2

    .line 325
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;)V

    .line 332
    :goto_5
    if-eqz p2, :cond_a

    .line 368
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v2, v1

    .line 314
    goto :goto_1

    :cond_3
    move v0, v1

    .line 315
    goto :goto_2

    :cond_4
    move v2, v1

    .line 321
    goto :goto_3

    :cond_5
    move v0, v1

    .line 322
    goto :goto_4

    .line 328
    :cond_6
    sget-boolean v2, Lcom/a/a/b/v;->f:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 329
    :cond_7
    invoke-direct {p0, v4}, Lcom/a/a/b/v;->b(Lcom/a/a/b/ac;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;)V

    goto :goto_5

    .line 336
    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    .line 337
    iget-object v4, v3, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 338
    iget-object v0, v3, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 339
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/a/a/b/ac;->h:I

    move v2, v0

    .line 340
    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/a/a/b/ac;->h:I

    .line 342
    :goto_8
    sub-int/2addr v0, v2

    .line 343
    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 344
    :cond_9
    invoke-direct {p0, p1}, Lcom/a/a/b/v;->b(Lcom/a/a/b/ac;)V

    .line 350
    :goto_9
    if-nez p2, :cond_1

    .line 311
    :cond_a
    iget-object p1, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    goto :goto_0

    :cond_b
    move v2, v1

    .line 339
    goto :goto_7

    :cond_c
    move v0, v1

    .line 340
    goto :goto_8

    .line 346
    :cond_d
    sget-boolean v2, Lcom/a/a/b/v;->f:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_e
    invoke-direct {p0, v3}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/a/a/b/v;->b(Lcom/a/a/b/ac;)V

    goto :goto_9

    .line 354
    :cond_f
    if-nez v5, :cond_10

    .line 355
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/a/a/b/ac;->h:I

    .line 356
    if-eqz p2, :cond_a

    goto :goto_6

    .line 361
    :cond_10
    sget-boolean v3, Lcom/a/a/b/v;->f:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/ac;->h:I

    .line 363
    if-nez p2, :cond_a

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/a/a/b/ac;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/a/a/b/v;->a(Ljava/lang/Object;Z)Lcom/a/a/b/ac;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;Z)Lcom/a/a/b/ac;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v5, p0, Lcom/a/a/b/v;->a:Ljava/util/Comparator;

    .line 123
    iget-object v2, p0, Lcom/a/a/b/v;->b:Lcom/a/a/b/ac;

    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz v2, :cond_9

    .line 129
    sget-object v0, Lcom/a/a/b/v;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 134
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v2, Lcom/a/a/b/ac;->f:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 139
    :goto_1
    if-nez v3, :cond_3

    move-object v1, v2

    .line 180
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    .line 129
    goto :goto_0

    .line 134
    :cond_2
    iget-object v3, v2, Lcom/a/a/b/ac;->f:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    .line 144
    :cond_3
    if-gez v3, :cond_4

    iget-object v4, v2, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 145
    :goto_3
    if-nez v4, :cond_5

    move v6, v3

    move-object v3, v2

    move v2, v6

    .line 154
    :goto_4
    if-eqz p2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    .line 161
    if-nez v3, :cond_7

    .line 163
    sget-object v0, Lcom/a/a/b/v;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    .line 164
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_4
    iget-object v4, v2, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    goto :goto_3

    :cond_5
    move-object v2, v4

    .line 150
    goto :goto_0

    .line 166
    :cond_6
    new-instance v0, Lcom/a/a/b/ac;

    iget-object v2, v1, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/a/a/b/ac;-><init>(Lcom/a/a/b/ac;Ljava/lang/Object;Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 167
    iput-object v0, p0, Lcom/a/a/b/v;->b:Lcom/a/a/b/ac;

    .line 177
    :goto_5
    iget v1, p0, Lcom/a/a/b/v;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/v;->c:I

    .line 178
    iget v1, p0, Lcom/a/a/b/v;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/v;->d:I

    move-object v1, v0

    .line 180
    goto :goto_2

    .line 169
    :cond_7
    new-instance v0, Lcom/a/a/b/ac;

    iget-object v4, v1, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    invoke-direct {v0, v3, p1, v1, v4}, Lcom/a/a/b/ac;-><init>(Lcom/a/a/b/ac;Ljava/lang/Object;Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 170
    if-gez v2, :cond_8

    .line 171
    iput-object v0, v3, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 175
    :goto_6
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/a/a/b/v;->b(Lcom/a/a/b/ac;Z)V

    goto :goto_5

    .line 173
    :cond_8
    iput-object v0, v3, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    goto :goto_6

    :cond_9
    move-object v3, v2

    move v2, v0

    goto :goto_4
.end method

.method a(Ljava/util/Map$Entry;)Lcom/a/a/b/ac;
    .locals 3
    .parameter

    .prologue
    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/v;->a(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/a/a/b/ac;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/a/a/b/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 204
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    .line 203
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/a/a/b/ac;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p1, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    iget-object v1, p1, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    iput-object v1, v0, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    .line 220
    iget-object v0, p1, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    iget-object v1, p1, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    iput-object v1, v0, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    .line 223
    :cond_0
    iget-object v0, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 224
    iget-object v1, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 225
    iget-object v3, p1, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 226
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 237
    iget v3, v0, Lcom/a/a/b/ac;->h:I

    iget v4, v1, Lcom/a/a/b/ac;->h:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/a/a/b/ac;->b()Lcom/a/a/b/ac;

    move-result-object v0

    .line 238
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Z)V

    .line 241
    iget-object v3, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 242
    if-eqz v3, :cond_6

    .line 243
    iget v1, v3, Lcom/a/a/b/ac;->h:I

    .line 244
    iput-object v3, v0, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 245
    iput-object v0, v3, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 246
    iput-object v5, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 250
    :goto_1
    iget-object v3, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 251
    if-eqz v3, :cond_1

    .line 252
    iget v2, v3, Lcom/a/a/b/ac;->h:I

    .line 253
    iput-object v3, v0, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 254
    iput-object v0, v3, Lcom/a/a/b/ac;->a:Lcom/a/a/b/ac;

    .line 255
    iput-object v5, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    .line 258
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/a/a/b/ac;->h:I

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 274
    :goto_2
    return-void

    .line 237
    :cond_2
    invoke-virtual {v1}, Lcom/a/a/b/ac;->a()Lcom/a/a/b/ac;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_3
    if-eqz v0, :cond_4

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 263
    iput-object v5, p1, Lcom/a/a/b/ac;->b:Lcom/a/a/b/ac;

    .line 271
    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/a/a/b/v;->b(Lcom/a/a/b/ac;Z)V

    .line 272
    iget v0, p0, Lcom/a/a/b/v;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/v;->c:I

    .line 273
    iget v0, p0, Lcom/a/a/b/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/v;->d:I

    goto :goto_2

    .line 264
    :cond_4
    if-eqz v1, :cond_5

    .line 265
    invoke-direct {p0, p1, v1}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    .line 266
    iput-object v5, p1, Lcom/a/a/b/ac;->c:Lcom/a/a/b/ac;

    goto :goto_3

    .line 268
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Lcom/a/a/b/ac;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method b(Ljava/lang/Object;)Lcom/a/a/b/ac;
    .locals 2
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/a/a/b/v;->a(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Z)V

    .line 281
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/v;->b:Lcom/a/a/b/ac;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/v;->c:I

    .line 103
    iget v0, p0, Lcom/a/a/b/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/v;->d:I

    .line 106
    iget-object v0, p0, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    .line 107
    iput-object v0, v0, Lcom/a/a/b/ac;->e:Lcom/a/a/b/ac;

    iput-object v0, v0, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/a/a/b/v;->a(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/a/a/b/v;->h:Lcom/a/a/b/x;

    .line 431
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/x;

    invoke-direct {v0, p0}, Lcom/a/a/b/x;-><init>(Lcom/a/a/b/v;)V

    iput-object v0, p0, Lcom/a/a/b/v;->h:Lcom/a/a/b/x;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/a/a/b/v;->a(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/a/b/ac;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/a/a/b/v;->i:Lcom/a/a/b/z;

    .line 436
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/z;

    invoke-direct {v0, p0}, Lcom/a/a/b/z;-><init>(Lcom/a/a/b/v;)V

    iput-object v0, p0, Lcom/a/a/b/v;->i:Lcom/a/a/b/z;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/v;->a(Ljava/lang/Object;Z)Lcom/a/a/b/ac;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lcom/a/a/b/ac;->g:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Lcom/a/a/b/ac;->g:Ljava/lang/Object;

    .line 97
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/a/a/b/v;->b(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/a/b/ac;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/a/a/b/v;->c:I

    return v0
.end method
