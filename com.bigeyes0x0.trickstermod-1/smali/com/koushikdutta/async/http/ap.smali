.class final Lcom/koushikdutta/async/http/ap;
.super Ljava/net/CacheRequest;
.source "ResponseCacheMiddleware.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

.field private final b:Lcom/koushikdutta/async/http/c/e;

.field private c:Ljava/io/OutputStream;

.field private d:Z

.field private e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/c/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/koushikdutta/async/http/ap;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 672
    iput-object p2, p0, Lcom/koushikdutta/async/http/ap;->b:Lcom/koushikdutta/async/http/c/e;

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/c/e;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ap;->c:Ljava/io/OutputStream;

    .line 674
    new-instance v0, Lcom/koushikdutta/async/http/aq;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ap;->c:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/koushikdutta/async/http/aq;-><init>(Lcom/koushikdutta/async/http/ap;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/c/e;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ap;->e:Ljava/io/OutputStream;

    .line 694
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ap;)Z
    .locals 1
    .parameter

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ap;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ap;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/ap;->d:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 697
    iget-object v1, p0, Lcom/koushikdutta/async/http/ap;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ap;->d:Z

    if-eqz v0, :cond_0

    .line 699
    monitor-exit v1

    .line 713
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ap;->d:Z

    .line 702
    iget-object v0, p0, Lcom/koushikdutta/async/http/ap;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    iget v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->e:I

    .line 703
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/ap;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/ap;->b:Lcom/koushikdutta/async/http/c/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/e;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 707
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/koushikdutta/async/http/ap;->e:Ljava/io/OutputStream;

    return-object v0
.end method
