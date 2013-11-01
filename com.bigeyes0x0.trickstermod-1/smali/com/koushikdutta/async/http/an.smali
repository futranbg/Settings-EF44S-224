.class Lcom/koushikdutta/async/http/an;
.super Lcom/koushikdutta/async/at;
.source "ResponseCacheMiddleware.java"


# static fields
.field static final synthetic l:Z


# instance fields
.field f:J

.field g:Ljava/net/CacheResponse;

.field h:Z

.field i:Lcom/koushikdutta/async/ah;

.field j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 464
    const-class v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/an;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/an;->h:Z

    .line 501
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    .line 467
    iput-wide p1, p0, Lcom/koushikdutta/async/http/an;->f:J

    .line 468
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 473
    iget-object v0, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 475
    iget-object v0, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/koushikdutta/async/http/an;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/an;->h:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    iput-boolean v6, p0, Lcom/koushikdutta/async/http/an;->k:Z

    .line 497
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/an;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 482
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/an;->h:Z

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/an;->h:Z

    .line 485
    iget-wide v0, p0, Lcom/koushikdutta/async/http/an;->f:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 486
    sget-boolean v1, Lcom/koushikdutta/async/http/an;->l:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 487
    :cond_3
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/an;->g:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 488
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    iget-wide v4, p0, Lcom/koushikdutta/async/http/an;->f:J

    long-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 489
    iget-object v2, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 490
    iget-object v0, p0, Lcom/koushikdutta/async/http/an;->i:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 491
    sget-boolean v0, Lcom/koushikdutta/async/http/an;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/an;->k:Z

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/an;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/an;->k:Z

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 529
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/an;->g:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    invoke-super {p0, p1}, Lcom/koushikdutta/async/at;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/an;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/ao;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/ao;-><init>(Lcom/koushikdutta/async/http/an;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/an;->j:Z

    return v0
.end method
