.class Lcom/koushikdutta/async/y;
.super Lcom/koushikdutta/async/b/j;
.source "AsyncServer.java"


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Lcom/koushikdutta/async/n;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/koushikdutta/async/y;->c:Lcom/koushikdutta/async/n;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/y;-><init>(Lcom/koushikdutta/async/n;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/koushikdutta/async/b/j;->a()V

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/y;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/y;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method
