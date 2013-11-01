.class Lcom/koushikdutta/async/http/o;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Lorg/apache/http/RequestLine;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/m;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/m;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/m;

    invoke-static {v0}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/http/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "%s %s HTTP/1.1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/m;

    invoke-static {v3}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/http/m;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
