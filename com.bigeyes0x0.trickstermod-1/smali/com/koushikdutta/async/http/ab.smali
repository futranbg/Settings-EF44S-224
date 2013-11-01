.class Lcom/koushikdutta/async/http/ab;
.super Lcom/koushikdutta/async/b/k;
.source "AsyncSocketMiddleware.java"


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/http/h;

.field final synthetic c:I

.field final synthetic l:Ljava/net/URI;

.field final synthetic m:Lcom/koushikdutta/async/http/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/http/h;ILjava/net/URI;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/koushikdutta/async/http/ab;->m:Lcom/koushikdutta/async/http/z;

    iput-object p2, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/h;

    iput p3, p0, Lcom/koushikdutta/async/http/ab;->c:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/ab;->l:Ljava/net/URI;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ab;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .locals 5
    .parameter

    .prologue
    .line 160
    new-instance v1, Lcom/koushikdutta/async/b/b;

    new-instance v0, Lcom/koushikdutta/async/http/ac;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/ac;-><init>(Lcom/koushikdutta/async/http/ab;)V

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 170
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 171
    new-instance v4, Lcom/koushikdutta/async/http/ad;

    invoke-direct {v4, p0, v3}, Lcom/koushikdutta/async/http/ad;-><init>(Lcom/koushikdutta/async/http/ab;Ljava/net/InetAddress;)V

    invoke-virtual {v1, v4}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v1}, Lcom/koushikdutta/async/b/b;->c()Lcom/koushikdutta/async/b/b;

    .line 204
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/k;->b(Ljava/lang/Exception;)V

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->c:Lcom/koushikdutta/async/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    .line 156
    return-void
.end method
