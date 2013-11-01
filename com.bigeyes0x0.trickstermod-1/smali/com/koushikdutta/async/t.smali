.class Lcom/koushikdutta/async/t;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/y;

.field final synthetic b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/b;Ljava/net/InetSocketAddress;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/n;

    iput-object p2, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    iput-object p3, p0, Lcom/koushikdutta/async/t;->b:Lcom/koushikdutta/async/a/b;

    iput-object p4, p0, Lcom/koushikdutta/async/t;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    invoke-virtual {v0}, Lcom/koushikdutta/async/y;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    iget-object v1, p0, Lcom/koushikdutta/async/t;->b:Lcom/koushikdutta/async/a/b;

    iput-object v1, v0, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/a/b;

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/y;->a:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 345
    iget-object v0, p0, Lcom/koushikdutta/async/t;->d:Lcom/koushikdutta/async/n;

    invoke-static {v0}, Lcom/koushikdutta/async/n;->a(Lcom/koushikdutta/async/n;)Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 346
    iget-object v0, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/koushikdutta/async/t;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    :goto_1
    if-eqz v2, :cond_1

    .line 351
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 353
    :cond_1
    if-eqz v1, :cond_2

    .line 354
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 358
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/koushikdutta/async/t;->a:Lcom/koushikdutta/async/y;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/y;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 356
    :catch_1
    move-exception v1

    goto :goto_2

    .line 349
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
