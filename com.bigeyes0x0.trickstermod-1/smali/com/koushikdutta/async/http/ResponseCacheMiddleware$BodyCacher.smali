.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;
.super Lcom/koushikdutta/async/at;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field f:Lcom/koushikdutta/async/http/ap;

.field g:Lcom/koushikdutta/async/ah;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/al;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ap;->abort()V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    .line 442
    :cond_0
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 403
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    .line 410
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ap;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 412
    if-eqz v1, :cond_3

    .line 413
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->n()I

    move-result v2

    .line 414
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 415
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->m()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 416
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 417
    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/at;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 431
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    .line 433
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;)V

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->a()V

    goto :goto_2
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/koushikdutta/async/at;->a(Ljava/lang/Exception;)V

    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->a()V

    .line 396
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ap;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    return-void
.end method
