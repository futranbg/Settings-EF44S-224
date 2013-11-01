.class public Lcom/koushikdutta/async/http/x;
.super Lcom/koushikdutta/async/http/z;
.source "AsyncSSLSocketMiddleware.java"


# instance fields
.field a:Ljavax/net/ssl/SSLContext;

.field b:[Ljavax/net/ssl/TrustManager;

.field c:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    const-string v0, "https"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/z;-><init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)Lcom/koushikdutta/async/a/b;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/koushikdutta/async/http/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/koushikdutta/async/http/y;-><init>(Lcom/koushikdutta/async/http/x;Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)V

    return-object v0
.end method
