.class public Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.super Lcom/koushikdutta/async/http/ax;
.source "ResponseCacheMiddleware.java"


# instance fields
.field a:J

.field b:Ljava/io/File;

.field c:Z

.field d:I

.field e:I

.field private f:Lcom/koushikdutta/async/http/c/b;

.field private g:Lcom/koushikdutta/async/http/a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ax;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->c:Z

    .line 63
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/http/a;Ljava/io/File;J)Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 69
    instance-of v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response cache already added to http client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;-><init>()V

    .line 73
    iput-wide p2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a:J

    .line 74
    iput-object p0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->g:Lcom/koushikdutta/async/http/a;

    .line 75
    iput-object p1, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->b:Ljava/io/File;

    .line 76
    invoke-direct {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a()V

    .line 77
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/g;)V

    .line 78
    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/http/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->g:Lcom/koushikdutta/async/http/a;

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/h;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->b(Lcom/koushikdutta/async/http/c/h;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 104
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 106
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->b:Ljava/io/File;

    const v1, 0x31191

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;IIJ)Lcom/koushikdutta/async/http/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->f:Lcom/koushikdutta/async/http/c/b;

    .line 83
    return-void
.end method

.method private static b(Lcom/koushikdutta/async/http/c/h;)Ljava/io/InputStream;
    .locals 2
    .parameter

    .prologue
    .line 917
    new-instance v0, Lcom/koushikdutta/async/http/am;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/c/h;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/http/am;-><init>(Ljava/io/InputStream;Lcom/koushikdutta/async/http/c/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/h;)Lcom/koushikdutta/async/b/a;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->f:Lcom/koushikdutta/async/http/c/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    move-object v0, v1

    .line 383
    :goto_0
    return-object v0

    .line 289
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->f:Lcom/koushikdutta/async/http/c/b;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/lang/String;)Lcom/koushikdutta/async/http/c/h;

    move-result-object v2

    .line 294
    if-nez v2, :cond_2

    .line 295
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    move-object v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_2
    new-instance v3, Lcom/koushikdutta/async/http/at;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/c/h;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/koushikdutta/async/http/at;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    iget-object v4, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/m;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/koushikdutta/async/http/at;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    .line 308
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/h;->close()V

    move-object v0, v1

    .line 309
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    move-object v0, v1

    .line 302
    goto :goto_0

    .line 312
    :cond_3
    invoke-static {v3}, Lcom/koushikdutta/async/http/at;->a(Lcom/koushikdutta/async/http/at;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/koushikdutta/async/http/av;

    invoke-direct {v0, v3, v2}, Lcom/koushikdutta/async/http/av;-><init>(Lcom/koushikdutta/async/http/at;Lcom/koushikdutta/async/http/c/h;)V

    .line 317
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 318
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 325
    if-eqz v4, :cond_4

    if-nez v5, :cond_6

    .line 327
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    :goto_2
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    .line 332
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/h;->close()V

    move-object v0, v1

    .line 333
    goto :goto_0

    .line 312
    :cond_5
    new-instance v0, Lcom/koushikdutta/async/http/au;

    invoke-direct {v0, v3, v2}, Lcom/koushikdutta/async/http/au;-><init>(Lcom/koushikdutta/async/http/at;Lcom/koushikdutta/async/http/c/h;)V

    goto :goto_1

    .line 320
    :catch_1
    move-exception v0

    .line 321
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    .line 322
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/h;->close()V

    move-object v0, v1

    .line 323
    goto/16 :goto_0

    .line 336
    :cond_6
    invoke-static {v4}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/util/Map;)Lcom/koushikdutta/async/http/c/p;

    move-result-object v4

    .line 337
    new-instance v6, Lcom/koushikdutta/async/http/c/t;

    iget-object v7, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/koushikdutta/async/http/c/t;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/koushikdutta/async/http/c/t;->a(JJ)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 341
    iget-object v9, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/koushikdutta/async/http/c/t;->a(JLcom/koushikdutta/async/http/c/r;)Lcom/koushikdutta/async/http/c/v;

    move-result-object v7

    .line 342
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/koushikdutta/async/http/c/h;->b(I)J

    move-result-wide v8

    .line 344
    sget-object v10, Lcom/koushikdutta/async/http/c/v;->a:Lcom/koushikdutta/async/http/c/v;

    if-ne v7, v10, :cond_8

    .line 345
    iget-object v1, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v2, "Response retrieved from cache"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;)V

    .line 346
    invoke-static {v3}, Lcom/koushikdutta/async/http/at;->a(Lcom/koushikdutta/async/http/at;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/koushikdutta/async/http/ar;

    check-cast v0, Lcom/koushikdutta/async/http/av;

    invoke-direct {v1, p0, v0, v8, v9}, Lcom/koushikdutta/async/http/ar;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Ljava/net/CacheResponse;J)V

    move-object v0, v1

    .line 347
    :goto_3
    const-string v1, "Content-Encoding"

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 348
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 349
    const-string v1, "Content-Length"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, v0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/c/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 352
    iget-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->g:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/al;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/al;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/http/as;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 359
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->i:I

    .line 360
    new-instance v0, Lcom/koushikdutta/async/b/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/h;-><init>()V

    goto/16 :goto_0

    .line 346
    :cond_7
    new-instance v1, Lcom/koushikdutta/async/http/as;

    check-cast v0, Lcom/koushikdutta/async/http/au;

    invoke-direct {v1, p0, v0, v8, v9}, Lcom/koushikdutta/async/http/as;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Ljava/net/CacheResponse;J)V

    move-object v0, v1

    goto :goto_3

    .line 362
    :cond_8
    sget-object v3, Lcom/koushikdutta/async/http/c/v;->b:Lcom/koushikdutta/async/http/c/v;

    if-ne v7, v3, :cond_9

    .line 363
    iget-object v3, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v4, "Response may be served from conditional cache"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;)V

    .line 364
    new-instance v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;-><init>()V

    .line 365
    iput-object v2, v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->a:Lcom/koushikdutta/async/http/c/h;

    .line 366
    iput-wide v8, v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->c:J

    .line 367
    iput-object v6, v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/c/t;

    .line 368
    iput-object v0, v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->b:Ljava/net/CacheResponse;

    .line 369
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->a:Landroid/os/Bundle;

    const-string v2, "cache-data"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v0, v1

    .line 371
    goto/16 :goto_0

    .line 374
    :cond_9
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v3, "Response can not be served from cache"

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 377
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    :goto_4
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    .line 382
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/h;->close()V

    move-object v0, v1

    .line 383
    goto/16 :goto_0

    .line 329
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 379
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public a(Lcom/koushikdutta/async/http/i;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 560
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->h:Lcom/koushikdutta/async/ac;

    const-class v1, Lcom/koushikdutta/async/http/as;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ac;Ljava/lang/Class;)Lcom/koushikdutta/async/ac;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/as;

    .line 561
    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "X-Served-From"

    const-string v2, "cache"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->a:Landroid/os/Bundle;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    .line 567
    if-eqz v0, :cond_3

    .line 568
    iget-object v1, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/c/t;

    iget-object v2, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/c/t;->a(Lcom/koushikdutta/async/http/c/t;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    const-string v2, "Serving response from conditional cache"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;)V

    .line 570
    iget-object v1, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/c/t;

    iget-object v2, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/c/t;->b(Lcom/koushikdutta/async/http/c/t;)Lcom/koushikdutta/async/http/c/t;

    move-result-object v1

    iput-object v1, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    .line 571
    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v1

    iget-object v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->d:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    .line 573
    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v1

    const-string v2, "X-Served-From"

    const-string v3, "conditional-cache"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->h:I

    .line 576
    new-instance v1, Lcom/koushikdutta/async/http/an;

    iget-wide v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->c:J

    invoke-direct {v1, v2, v3}, Lcom/koushikdutta/async/http/an;-><init>(J)V

    .line 577
    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->b:Ljava/net/CacheResponse;

    iput-object v0, v1, Lcom/koushikdutta/async/http/an;->g:Ljava/net/CacheResponse;

    .line 578
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->e:Lcom/koushikdutta/async/ak;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/an;->a(Lcom/koushikdutta/async/ak;)V

    .line 579
    iput-object v1, p1, Lcom/koushikdutta/async/http/i;->e:Lcom/koushikdutta/async/ak;

    .line 580
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/an;->b()V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->a:Landroid/os/Bundle;

    const-string v2, "cache-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 586
    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->a:Lcom/koushikdutta/async/http/c/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/h;->close()V

    .line 589
    :cond_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->c:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/t;->a(Lcom/koushikdutta/async/http/c/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 598
    :cond_4
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    .line 599
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Response is not cacheable"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 604
    iget-object v1, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/util/Set;)Lcom/koushikdutta/async/http/c/p;

    move-result-object v1

    .line 605
    new-instance v2, Lcom/koushikdutta/async/http/at;

    iget-object v3, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v3

    iget-object v4, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    iget-object v5, p1, Lcom/koushikdutta/async/http/i;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/koushikdutta/async/http/at;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/c/t;)V

    .line 607
    new-instance v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;

    invoke-direct {v1, v6}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;-><init>(Lcom/koushikdutta/async/http/al;)V

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->f:Lcom/koushikdutta/async/http/c/b;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/c/b;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/at;->a(Lcom/koushikdutta/async/http/c/e;)V

    .line 617
    new-instance v2, Lcom/koushikdutta/async/http/ap;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/ap;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/c/e;)V

    iput-object v2, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    .line 618
    iget-object v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ap;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->e:Lcom/koushikdutta/async/ak;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->a(Lcom/koushikdutta/async/ak;)V

    .line 622
    iput-object v1, p1, Lcom/koushikdutta/async/http/i;->e:Lcom/koushikdutta/async/ak;

    .line 624
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->a:Landroid/os/Bundle;

    const-string v2, "body-cacher"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 625
    iget-object v0, p1, Lcom/koushikdutta/async/http/i;->b:Lcom/koushikdutta/async/http/m;

    const-string v2, "Caching response"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 626
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 630
    iget-object v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    if-eqz v0, :cond_6

    .line 631
    iget-object v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ap;->abort()V

    .line 632
    :cond_6
    iput-object v6, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->f:Lcom/koushikdutta/async/http/ap;

    .line 633
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->j:I

    goto/16 :goto_0
.end method

.method public a(Lcom/koushikdutta/async/http/k;)V
    .locals 2
    .parameter

    .prologue
    .line 640
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->a:Landroid/os/Bundle;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    .line 641
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->a:Lcom/koushikdutta/async/http/c/h;

    if-eqz v1, :cond_0

    .line 642
    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->a:Lcom/koushikdutta/async/http/c/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/h;->close()V

    .line 644
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    const-class v1, Lcom/koushikdutta/async/http/as;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ac;Ljava/lang/Class;)Lcom/koushikdutta/async/ac;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/as;

    .line 645
    if-eqz v0, :cond_1

    .line 646
    iget-object v0, v0, Lcom/koushikdutta/async/http/as;->d:Ljava/net/CacheResponse;

    check-cast v0, Lcom/koushikdutta/async/http/aw;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/aw;->a()Lcom/koushikdutta/async/http/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/h;->close()V

    .line 648
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->a:Landroid/os/Bundle;

    const-string v1, "body-cacher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;

    .line 649
    if-eqz v0, :cond_2

    .line 651
    :try_start_0
    iget-object v1, p1, Lcom/koushikdutta/async/http/k;->g:Ljava/lang/Exception;

    if-eqz v1, :cond_3

    .line 652
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->a()V

    .line 659
    :cond_2
    :goto_0
    return-void

    .line 654
    :cond_3
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method
