.class Lcom/koushikdutta/async/http/au;
.super Ljava/net/CacheResponse;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/http/aw;


# instance fields
.field private final a:Lcom/koushikdutta/async/http/at;

.field private final b:Lcom/koushikdutta/async/http/c/h;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/at;Lcom/koushikdutta/async/http/c/h;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 940
    iput-object p1, p0, Lcom/koushikdutta/async/http/au;->a:Lcom/koushikdutta/async/http/at;

    .line 941
    iput-object p2, p0, Lcom/koushikdutta/async/http/au;->b:Lcom/koushikdutta/async/http/c/h;

    .line 942
    invoke-static {p2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/c/h;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/au;->c:Ljava/io/InputStream;

    .line 943
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/c/h;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/koushikdutta/async/http/au;->b:Lcom/koushikdutta/async/http/c/h;

    return-object v0
.end method

.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/koushikdutta/async/http/au;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/koushikdutta/async/http/au;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->b(Lcom/koushikdutta/async/http/at;)Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
