.class Lcom/koushikdutta/async/http/y;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/b;

.field final synthetic b:Ljava/net/URI;

.field final synthetic c:I

.field final synthetic d:Lcom/koushikdutta/async/http/x;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/x;Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/koushikdutta/async/http/y;->d:Lcom/koushikdutta/async/http/x;

    iput-object p2, p0, Lcom/koushikdutta/async/http/y;->a:Lcom/koushikdutta/async/a/b;

    iput-object p3, p0, Lcom/koushikdutta/async/http/y;->b:Ljava/net/URI;

    iput p4, p0, Lcom/koushikdutta/async/http/y;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    iget-object v8, p0, Lcom/koushikdutta/async/http/y;->a:Lcom/koushikdutta/async/a/b;

    new-instance v0, Lcom/koushikdutta/async/i;

    iget-object v1, p0, Lcom/koushikdutta/async/http/y;->b:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/koushikdutta/async/http/y;->c:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/y;->d:Lcom/koushikdutta/async/http/x;

    iget-object v4, v1, Lcom/koushikdutta/async/http/x;->a:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Lcom/koushikdutta/async/http/y;->d:Lcom/koushikdutta/async/http/x;

    iget-object v5, v1, Lcom/koushikdutta/async/http/x;->b:[Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lcom/koushikdutta/async/http/y;->d:Lcom/koushikdutta/async/http/x;

    iget-object v6, v1, Lcom/koushikdutta/async/http/x;->c:Ljavax/net/ssl/HostnameVerifier;

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/i;-><init>(Lcom/koushikdutta/async/ac;Ljava/lang/String;ILjavax/net/ssl/SSLContext;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    invoke-interface {v8, p1, v0}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/y;->a:Lcom/koushikdutta/async/a/b;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    goto :goto_0
.end method
