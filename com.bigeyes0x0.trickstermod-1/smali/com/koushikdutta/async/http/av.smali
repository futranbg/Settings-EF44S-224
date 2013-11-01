.class Lcom/koushikdutta/async/http/av;
.super Ljava/net/SecureCacheResponse;
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
    .line 965
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 966
    iput-object p1, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    .line 967
    iput-object p2, p0, Lcom/koushikdutta/async/http/av;->b:Lcom/koushikdutta/async/http/c/h;

    .line 968
    invoke-static {p2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/c/h;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/av;->c:Ljava/io/InputStream;

    .line 969
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/c/h;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->b:Lcom/koushikdutta/async/http/c/h;

    return-object v0
.end method

.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->c(Lcom/koushikdutta/async/http/at;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->b(Lcom/koushikdutta/async/http/at;)Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    const/4 v0, 0x0

    .line 1009
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 993
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 986
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/av;->a:Lcom/koushikdutta/async/http/at;

    invoke-static {v0}, Lcom/koushikdutta/async/http/at;->d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
