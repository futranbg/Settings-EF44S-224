.class Lcom/koushikdutta/async/u;
.super Lcom/koushikdutta/async/b/k;
.source "AsyncServer.java"


# instance fields
.field final synthetic a:Ljava/net/InetSocketAddress;

.field final synthetic b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/koushikdutta/async/u;->c:Lcom/koushikdutta/async/n;

    iput-object p2, p0, Lcom/koushikdutta/async/u;->a:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/koushikdutta/async/u;->b:Lcom/koushikdutta/async/a/b;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/u;->a(Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a(Ljava/net/InetAddress;)V
    .locals 4
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/koushikdutta/async/u;->c:Lcom/koushikdutta/async/n;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/u;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/u;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/koushikdutta/async/u;->b:Lcom/koushikdutta/async/a/b;

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/n;->a(Lcom/koushikdutta/async/n;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/u;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    .line 374
    return-void
.end method
