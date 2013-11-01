.class Lcom/koushikdutta/async/http/ad;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# instance fields
.field final synthetic a:Ljava/net/InetAddress;

.field final synthetic b:Lcom/koushikdutta/async/http/ab;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ab;Ljava/net/InetAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iput-object p2, p0, Lcom/koushikdutta/async/http/ad;->a:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->m:Lcom/koushikdutta/async/http/z;

    iget-object v0, v0, Lcom/koushikdutta/async/http/z;->f:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ad;->a:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget v3, v3, Lcom/koushikdutta/async/http/ab;->c:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v2, v2, Lcom/koushikdutta/async/http/ab;->m:Lcom/koushikdutta/async/http/z;

    new-instance v3, Lcom/koushikdutta/async/http/ae;

    invoke-direct {v3, p0, p2}, Lcom/koushikdutta/async/http/ae;-><init>(Lcom/koushikdutta/async/http/ad;Lcom/koushikdutta/async/a/a;)V

    iget-object v4, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v4, v4, Lcom/koushikdutta/async/http/ab;->l:Ljava/net/URI;

    iget-object v5, p0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget v5, v5, Lcom/koushikdutta/async/http/ab;->c:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)Lcom/koushikdutta/async/a/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/n;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    .line 199
    return-void
.end method
