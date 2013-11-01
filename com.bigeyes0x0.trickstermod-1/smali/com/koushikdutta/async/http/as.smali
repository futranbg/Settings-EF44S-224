.class Lcom/koushikdutta/async/http/as;
.super Lcom/koushikdutta/async/al;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/ac;


# static fields
.field static final synthetic l:Z


# instance fields
.field d:Ljava/net/CacheResponse;

.field e:J

.field f:Z

.field g:Z

.field h:Z

.field i:Lcom/koushikdutta/async/ah;

.field j:Z

.field k:Lcom/koushikdutta/async/a/a;

.field final synthetic m:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/as;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Ljava/net/CacheResponse;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/http/as;->m:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-direct {p0}, Lcom/koushikdutta/async/al;-><init>()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/as;->h:Z

    .line 191
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    .line 128
    iput-object p2, p0, Lcom/koushikdutta/async/http/as;->d:Ljava/net/CacheResponse;

    .line 129
    iput-wide p3, p0, Lcom/koushikdutta/async/http/as;->e:J

    .line 130
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/koushikdutta/async/http/as;->k:Lcom/koushikdutta/async/a/a;

    .line 247
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->l()V

    .line 222
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/koushikdutta/async/al;->a(Ljava/lang/Exception;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->d:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/as;->g:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/as;->g:Z

    .line 159
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->k:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->k:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 216
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/koushikdutta/async/http/as;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/as;->h:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/as;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 174
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/as;->h:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/as;->h:Z

    .line 177
    iget-wide v0, p0, Lcom/koushikdutta/async/http/as;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    sget-boolean v1, Lcom/koushikdutta/async/http/as;->l:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_3
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/as;->d:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    iget-wide v4, p0, Lcom/koushikdutta/async/http/as;->e:J

    long-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 181
    iget-object v2, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->i:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 183
    sget-boolean v0, Lcom/koushikdutta/async/http/as;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 184
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/as;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/as;->j:Z

    .line 242
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/as;->j:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/as;->f:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/as;->m:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method
