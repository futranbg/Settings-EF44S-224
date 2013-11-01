.class Lcom/koushikdutta/async/k;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ah;

.field final synthetic b:Lcom/koushikdutta/async/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/i;Lcom/koushikdutta/async/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iput-object p2, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-boolean v0, v0, Lcom/koushikdutta/async/i;->e:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/koushikdutta/async/i;->e:Z

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v0, v0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v0, v0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v2, v2, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    sget-object v2, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->n()I

    move-result v0

    if-lez v0, :cond_2

    .line 93
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->m()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 97
    iget-object v3, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v3, v3, Lcom/koushikdutta/async/i;->j:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v4, v4, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v4, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/i;->b(Lcom/koushikdutta/async/ah;)V

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v4, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v4, v4, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/koushikdutta/async/i;->d:Ljava/nio/ByteBuffer;

    move v0, v1

    .line 114
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    invoke-static {v4, v3}, Lcom/koushikdutta/async/i;->a(Lcom/koushikdutta/async/i;Ljavax/net/ssl/SSLEngineResult;)V

    .line 115
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 116
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/ah;->b(Ljava/nio/ByteBuffer;)V

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v1, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/i;->b(Lcom/koushikdutta/async/ah;)V

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iget-object v1, p0, Lcom/koushikdutta/async/k;->a:Lcom/koushikdutta/async/ah;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iput-boolean v6, v0, Lcom/koushikdutta/async/i;->e:Z

    goto/16 :goto_0

    .line 103
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_3

    .line 104
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/ah;->b(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->n()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 110
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->j()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ah;->b(Ljava/nio/ByteBuffer;)V

    .line 112
    sget-object v0, Lcom/koushikdutta/async/ah;->f:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    iget-object v1, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/i;->a(Lcom/koushikdutta/async/i;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iput-boolean v6, v0, Lcom/koushikdutta/async/i;->e:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/koushikdutta/async/k;->b:Lcom/koushikdutta/async/i;

    iput-boolean v6, v1, Lcom/koushikdutta/async/i;->e:Z

    throw v0
.end method
