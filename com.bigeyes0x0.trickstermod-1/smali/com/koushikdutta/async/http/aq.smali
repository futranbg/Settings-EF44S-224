.class Lcom/koushikdutta/async/http/aq;
.super Ljava/io/FilterOutputStream;
.source "ResponseCacheMiddleware.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

.field final synthetic b:Lcom/koushikdutta/async/http/c/e;

.field final synthetic c:Lcom/koushikdutta/async/http/ap;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ap;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/c/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/koushikdutta/async/http/aq;->c:Lcom/koushikdutta/async/http/ap;

    iput-object p3, p0, Lcom/koushikdutta/async/http/aq;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    iput-object p4, p0, Lcom/koushikdutta/async/http/aq;->b:Lcom/koushikdutta/async/http/c/e;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->c:Lcom/koushikdutta/async/http/ap;

    iget-object v1, v0, Lcom/koushikdutta/async/http/ap;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->c:Lcom/koushikdutta/async/http/ap;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ap;->a(Lcom/koushikdutta/async/http/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    monitor-exit v1

    .line 685
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->c:Lcom/koushikdutta/async/http/ap;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/ap;->a(Lcom/koushikdutta/async/http/ap;Z)Z

    .line 681
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->c:Lcom/koushikdutta/async/http/ap;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ap;->a:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    iget v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->d:I

    .line 682
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 684
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->b:Lcom/koushikdutta/async/http/c/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/e;->a()V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lcom/koushikdutta/async/http/aq;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 692
    return-void
.end method
