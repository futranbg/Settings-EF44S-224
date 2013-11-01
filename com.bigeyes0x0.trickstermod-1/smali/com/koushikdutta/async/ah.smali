.class public Lcom/koushikdutta/async/ah;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# static fields
.field static c:Ljava/util/PriorityQueue;

.field static d:I

.field static e:I

.field public static final f:Ljava/nio/ByteBuffer;

.field static final synthetic g:Z

.field private static final i:Ljava/lang/Object;


# instance fields
.field a:Lcom/koushikdutta/async/a;

.field b:Ljava/nio/ByteOrder;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12
    const-class v0, Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    .line 352
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/koushikdutta/async/ai;

    invoke-direct {v3}, Lcom/koushikdutta/async/ai;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ah;->c:Ljava/util/PriorityQueue;

    .line 361
    sput v1, Lcom/koushikdutta/async/ah;->d:I

    .line 362
    sput v1, Lcom/koushikdutta/async/ah;->e:I

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/ah;->i:Ljava/lang/Object;

    .line 467
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    move v0, v1

    .line 12
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/koushikdutta/async/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    .line 15
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ah;->b:Ljava/nio/ByteOrder;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 26
    return-void
.end method

.method public static b(I)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    sget v0, Lcom/koushikdutta/async/ah;->e:I

    if-gt p0, v0, :cond_7

    .line 414
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 415
    :cond_0
    invoke-static {}, Lcom/koushikdutta/async/ah;->q()Ljava/util/PriorityQueue;

    move-result-object v5

    .line 416
    if-eqz v5, :cond_7

    .line 417
    sget-object v6, Lcom/koushikdutta/async/ah;->i:Ljava/lang/Object;

    monitor-enter v6

    .line 418
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 419
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 421
    const/4 v1, 0x0

    sput v1, Lcom/koushikdutta/async/ah;->e:I

    .line 422
    :cond_2
    sget v1, Lcom/koushikdutta/async/ah;->d:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v1, v4

    sput v1, Lcom/koushikdutta/async/ah;->d:I

    .line 423
    sget-boolean v1, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-eqz v1, :cond_3

    move v4, v2

    :goto_0
    sget v1, Lcom/koushikdutta/async/ah;->d:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v4, v3

    .line 423
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 424
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, p0, :cond_1

    .line 426
    monitor-exit v6

    .line 436
    :goto_2
    return-object v0

    .line 430
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :cond_7
    const/16 v0, 0x2000

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2
.end method

.method private c(I)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 193
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 198
    :cond_1
    if-nez v0, :cond_2

    .line 199
    sget-object v3, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;

    .line 265
    :goto_1
    return-object v3

    .line 202
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/koushikdutta/async/ah;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_1

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    move v1, v4

    move-object v3, v5

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 213
    if-lt v2, p1, :cond_5

    .line 223
    :cond_4
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 225
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    add-int/2addr v1, v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v0, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 227
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 230
    :goto_3
    if-ge v4, p1, :cond_9

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 232
    if-eq v0, v3, :cond_8

    .line 233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v1, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v4

    .line 235
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    move v0, v1

    :goto_4
    move v4, v0

    .line 240
    goto :goto_3

    .line 216
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-lt v7, p1, :cond_7

    move v1, v2

    move-object v3, v0

    .line 220
    :cond_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 238
    :cond_8
    add-int v0, v4, v5

    goto :goto_4

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 245
    :cond_a
    invoke-static {p1}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 247
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object v0, v5

    .line 250
    :cond_b
    :goto_5
    if-ge v4, p1, :cond_c

    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 252
    sub-int v3, p1, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 253
    invoke-virtual {v0, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 254
    add-int/2addr v4, v3

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_b

    .line 256
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    move-object v0, v5

    .line 257
    goto :goto_5

    .line 262
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_d

    .line 263
    iget-object v2, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/a;->a(Ljava/lang/Object;)V

    .line 264
    :cond_d
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/a;->a(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static c(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x2000

    if-lt v0, v3, :cond_0

    .line 378
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/high16 v3, 0x4

    if-gt v0, v3, :cond_0

    .line 381
    invoke-static {}, Lcom/koushikdutta/async/ah;->q()Ljava/util/PriorityQueue;

    move-result-object v3

    .line 382
    if-eqz v3, :cond_0

    .line 385
    sget-object v4, Lcom/koushikdutta/async/ah;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 386
    :goto_1
    :try_start_0
    sget v0, Lcom/koushikdutta/async/ah;->d:I

    if-le v0, v6, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 388
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 389
    sget v5, Lcom/koushikdutta/async/ah;->d:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, v5, v0

    sput v0, Lcom/koushikdutta/async/ah;->d:I

    goto :goto_1

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 392
    :cond_2
    :try_start_1
    sget v0, Lcom/koushikdutta/async/ah;->d:I

    if-le v0, v6, :cond_3

    .line 394
    monitor-exit v4

    goto :goto_0

    .line 397
    :cond_3
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/koushikdutta/async/ah;->d(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 400
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 401
    sget v0, Lcom/koushikdutta/async/ah;->d:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v0, v5

    sput v0, Lcom/koushikdutta/async/ah;->d:I

    .line 403
    invoke-virtual {v3, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 404
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_7

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    :goto_2
    sget v0, Lcom/koushikdutta/async/ah;->d:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    xor-int/2addr v0, v3

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    .line 406
    :cond_7
    sget v0, Lcom/koushikdutta/async/ah;->e:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/koushikdutta/async/ah;->e:I

    .line 407
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-ltz v0, :cond_0

    .line 295
    iget v0, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 296
    :cond_0
    return-void
.end method

.method private static d(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .parameter

    .prologue
    .line 365
    sget-object v0, Lcom/koushikdutta/async/ah;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 366
    if-ne v0, p0, :cond_0

    .line 367
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static q()Ljava/util/PriorityQueue;
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/koushikdutta/async/ah;->c:Ljava/util/PriorityQueue;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/koushikdutta/async/ah;
    .locals 2
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    .line 177
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;I)V

    .line 178
    iget-object v1, p0, Lcom/koushikdutta/async/ah;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ah;
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/ah;->b:Ljava/nio/ByteOrder;

    .line 22
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;I)V

    .line 173
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 138
    :goto_0
    if-ge v1, p2, :cond_5

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 142
    if-nez v3, :cond_1

    .line 143
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 147
    :cond_1
    add-int v4, v1, v3

    if-le v4, p2, :cond_4

    .line 148
    sub-int v1, p2, v1

    .line 150
    invoke-static {v1}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 154
    iget-object v2, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/a;->a(Ljava/lang/Object;)V

    .line 155
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_2
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_3
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-eq v0, p2, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_4
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 165
    add-int v0, v1, v3

    move v1, v0

    .line 166
    goto :goto_0

    .line 168
    :cond_5
    iget v0, p0, Lcom/koushikdutta/async/ah;->h:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 169
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 276
    invoke-static {p1}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->d(I)V

    .line 280
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/a;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->k()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/ah;->a([BII)V

    .line 110
    return-void
.end method

.method public a([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, p3

    .line 117
    :goto_0
    if-lez v1, :cond_3

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 120
    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 121
    sub-int v2, v1, v3

    .line 122
    add-int/2addr p2, v3

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 125
    sget-boolean v3, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v3, :cond_1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    :cond_2
    move v1, v2

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    iget v0, p0, Lcom/koushikdutta/async/ah;->h:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 131
    return-void
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 40
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public a()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/a;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 60
    iget-object v1, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/a;->clear()V

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 62
    return-object v0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 286
    invoke-static {p1}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->d(I)V

    .line 290
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/koushikdutta/async/ah;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/koushikdutta/async/ah;->h:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 80
    iget v1, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 81
    return v0
.end method

.method public f()C
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    .line 86
    iget v1, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 87
    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 92
    iget v1, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 93
    return v0
.end method

.method public h()B
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 98
    iget v1, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 99
    return v0
.end method

.method public i()J
    .locals 3

    .prologue
    .line 103
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 104
    iget v2, p0, Lcom/koushikdutta/async/ah;->h:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 105
    return-wide v0
.end method

.method public j()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;

    .line 185
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p0}, Lcom/koushikdutta/async/ah;->m()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ah;->c(I)Ljava/nio/ByteBuffer;

    .line 271
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 299
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 302
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/ah;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 304
    return-void
.end method

.method public m()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 308
    iget v1, p0, Lcom/koushikdutta/async/ah;->h:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 309
    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 7

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 324
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 6

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/ah;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 333
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ah;->h:I

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
