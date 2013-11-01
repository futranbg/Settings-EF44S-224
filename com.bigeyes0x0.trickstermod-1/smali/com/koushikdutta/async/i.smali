.class public Lcom/koushikdutta/async/i;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/f/a;
.implements Lcom/koushikdutta/async/h;


# static fields
.field static i:Ljavax/net/ssl/SSLContext;

.field static final synthetic o:Z


# instance fields
.field a:Lcom/koushikdutta/async/ac;

.field b:Lcom/koushikdutta/async/ad;

.field c:Lcom/koushikdutta/async/af;

.field d:Ljava/nio/ByteBuffer;

.field e:Z

.field f:Ljavax/net/ssl/HostnameVerifier;

.field g:[Ljavax/net/ssl/TrustManager;

.field h:Z

.field j:Ljavax/net/ssl/SSLEngine;

.field k:Z

.field l:Lcom/koushikdutta/async/a/f;

.field m:Lcom/koushikdutta/async/a/d;

.field n:[Ljava/security/cert/X509Certificate;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    const-class v2, Lcom/koushikdutta/async/i;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/i;->o:Z

    .line 153
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 154
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/i;->i:Ljavax/net/ssl/SSLContext;

    .line 160
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/koushikdutta/async/l;

    invoke-direct {v3}, Lcom/koushikdutta/async/l;-><init>()V

    aput-object v3, v1, v2

    .line 175
    sget-object v2, Lcom/koushikdutta/async/i;->i:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0

    .line 155
    :cond_1
    :try_start_2
    const-string v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/i;->i:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 177
    :catch_1
    move-exception v1

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/koushikdutta/async/ac;Ljava/lang/String;ILjavax/net/ssl/SSLContext;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    .line 32
    iput-boolean v1, p0, Lcom/koushikdutta/async/i;->e:Z

    .line 185
    iput-boolean v1, p0, Lcom/koushikdutta/async/i;->k:Z

    .line 269
    iput-boolean v1, p0, Lcom/koushikdutta/async/i;->r:Z

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    .line 49
    iput-object p6, p0, Lcom/koushikdutta/async/i;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 50
    iput-boolean p7, p0, Lcom/koushikdutta/async/i;->h:Z

    .line 51
    iput-object p5, p0, Lcom/koushikdutta/async/i;->g:[Ljavax/net/ssl/TrustManager;

    .line 53
    if-nez p4, :cond_0

    .line 54
    sget-object p4, Lcom/koushikdutta/async/i;->i:Ljavax/net/ssl/SSLContext;

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p4, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    .line 62
    :goto_0
    iput-object p2, p0, Lcom/koushikdutta/async/i;->p:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcom/koushikdutta/async/i;->q:I

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 65
    new-instance v0, Lcom/koushikdutta/async/af;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/af;-><init>(Lcom/koushikdutta/async/an;)V

    iput-object v0, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    new-instance v1, Lcom/koushikdutta/async/j;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/j;-><init>(Lcom/koushikdutta/async/i;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/af;->a(Lcom/koushikdutta/async/a/f;)V

    .line 76
    new-instance v0, Lcom/koushikdutta/async/ad;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/ad;-><init>(Lcom/koushikdutta/async/ak;)V

    iput-object v0, p0, Lcom/koushikdutta/async/i;->b:Lcom/koushikdutta/async/ad;

    .line 78
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/i;->b:Lcom/koushikdutta/async/ad;

    new-instance v2, Lcom/koushikdutta/async/k;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/k;-><init>(Lcom/koushikdutta/async/i;Lcom/koushikdutta/async/ah;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/ad;->a(Lcom/koushikdutta/async/a/d;)V

    .line 133
    return-void

    .line 60
    :cond_1
    invoke-virtual {p4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    goto :goto_0
.end method

.method static synthetic a(Lcom/koushikdutta/async/i;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/i;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/i;->a(Ljavax/net/ssl/SSLEngineResult;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/koushikdutta/async/i;->g()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 369
    :cond_0
    return-void
.end method

.method private a(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_1

    .line 206
    sget-object v0, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/i;->a(Ljava/nio/ByteBuffer;)V

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/i;->b:Lcom/koushikdutta/async/ad;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ad;->a()V

    .line 214
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/i;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_5

    .line 215
    :cond_3
    iget-boolean v0, p0, Lcom/koushikdutta/async/i;->h:Z

    if-eqz v0, :cond_7

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/i;->g:[Ljavax/net/ssl/TrustManager;

    .line 217
    if-nez v0, :cond_a

    .line 218
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 219
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 220
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    move-object v5, v0

    .line 223
    :goto_0
    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_9

    aget-object v0, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 226
    iget-object v1, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    check-cast v1, [Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/koushikdutta/async/i;->n:[Ljava/security/cert/X509Certificate;

    .line 227
    iget-object v1, p0, Lcom/koushikdutta/async/i;->n:[Ljava/security/cert/X509Certificate;

    const-string v7, "SSL"

    invoke-interface {v0, v1, v7}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/i;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/i;->f:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_6

    .line 230
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/koushikdutta/async/i;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/koushikdutta/async/i;->n:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/koushikdutta/async/i;->n:[Ljava/security/cert/X509Certificate;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    move v0, v2

    .line 244
    :goto_3
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/koushikdutta/async/i;->k:Z

    .line 245
    if-nez v0, :cond_7

    .line 246
    new-instance v0, Lcom/koushikdutta/async/g;

    invoke-direct {v0}, Lcom/koushikdutta/async/g;-><init>()V

    .line 247
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/i;->a(Ljava/lang/Exception;)V

    .line 248
    invoke-virtual {v0}, Lcom/koushikdutta/async/g;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 249
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/i;->a(Ljava/lang/Exception;)V

    .line 260
    :cond_5
    :goto_4
    return-void

    .line 234
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/async/i;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lcom/koushikdutta/async/i;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 240
    :catch_1
    move-exception v0

    .line 241
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/i;->l:Lcom/koushikdutta/async/a/f;

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/i;->l:Lcom/koushikdutta/async/a/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/f;->a()V

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/koushikdutta/async/i;->b:Lcom/koushikdutta/async/ad;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ad;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move-object v5, v0

    goto/16 :goto_0
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/af;->a(Ljava/nio/ByteBuffer;)V

    .line 266
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/i;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->a()V

    .line 38
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 401
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/koushikdutta/async/i;->m:Lcom/koushikdutta/async/a/d;

    .line 376
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/koushikdutta/async/i;->l:Lcom/koushikdutta/async/a/f;

    .line 358
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/koushikdutta/async/i;->r:Z

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    invoke-virtual {v0}, Lcom/koushikdutta/async/af;->c()I

    move-result v0

    if-gtz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/i;->r:Z

    .line 319
    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 325
    :cond_2
    iget-boolean v2, p0, Lcom/koushikdutta/async/i;->k:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v2

    if-nez v2, :cond_3

    .line 326
    iput-boolean v5, p0, Lcom/koushikdutta/async/i;->r:Z

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v3

    .line 331
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->a()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 332
    iget-object v4, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, v2, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 333
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ah;->a([Ljava/nio/ByteBuffer;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/i;->b(Ljava/nio/ByteBuffer;)V

    .line 335
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v4, :cond_6

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    const/4 v2, -0x1

    .line 342
    :goto_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/i;->a(Ljavax/net/ssl/SSLEngineResult;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    invoke-virtual {v2}, Lcom/koushikdutta/async/af;->c()I

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    :cond_5
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    .line 350
    iput-boolean v5, p0, Lcom/koushikdutta/async/i;->r:Z

    goto :goto_0

    .line 340
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move v2, v3

    goto :goto_1

    .line 344
    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, v3

    move-object v3, v6

    .line 345
    :goto_3
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 344
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/koushikdutta/async/i;->r:Z

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    invoke-virtual {v0}, Lcom/koushikdutta/async/af;->c()I

    move-result v0

    if-gtz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/i;->r:Z

    .line 279
    const/4 v1, 0x0

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 285
    :cond_2
    iget-boolean v2, p0, Lcom/koushikdutta/async/i;->k:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_3

    .line 286
    iput-boolean v5, p0, Lcom/koushikdutta/async/i;->r:Z

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2, p1, v0}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 292
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/i;->b(Ljava/nio/ByteBuffer;)V

    .line 293
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v4, :cond_6

    .line 294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    const/4 v2, -0x1

    .line 300
    :goto_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/i;->a(Ljavax/net/ssl/SSLEngineResult;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/i;->c:Lcom/koushikdutta/async/af;

    invoke-virtual {v2}, Lcom/koushikdutta/async/af;->c()I

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_5
    invoke-static {v0}, Lcom/koushikdutta/async/ah;->c(Ljava/nio/ByteBuffer;)V

    .line 308
    iput-boolean v5, p0, Lcom/koushikdutta/async/i;->r:Z

    goto :goto_0

    .line 298
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move v2, v3

    goto :goto_1

    .line 302
    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, v3

    move-object v3, v6

    .line 303
    :goto_3
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 302
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public b()Lcom/koushikdutta/async/ac;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    return-object v0
.end method

.method public b(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/ac;->b(Lcom/koushikdutta/async/a/a;)V

    .line 411
    return-void
.end method

.method b(Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    .line 141
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    .line 396
    return-void
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/i;->m:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->g()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->h()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->i()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method
