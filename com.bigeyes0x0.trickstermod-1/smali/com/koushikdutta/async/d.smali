.class public Lcom/koushikdutta/async/d;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/ac;


# static fields
.field static final synthetic k:Z


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field b:I

.field c:I

.field d:Z

.field e:Lcom/koushikdutta/async/a/f;

.field f:Lcom/koushikdutta/async/a/d;

.field g:Lcom/koushikdutta/async/a/a;

.field h:Z

.field i:Ljava/lang/Exception;

.field j:Z

.field private l:Lcom/koushikdutta/async/aj;

.field private m:Ljava/nio/channels/SelectionKey;

.field private n:Lcom/koushikdutta/async/n;

.field private o:Lcom/koushikdutta/async/ah;

.field private p:Lcom/koushikdutta/async/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/koushikdutta/async/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/d;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    .line 135
    iput v1, p0, Lcom/koushikdutta/async/d;->c:I

    .line 282
    iput-boolean v1, p0, Lcom/koushikdutta/async/d;->j:Z

    .line 18
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 91
    if-lez p1, :cond_1

    .line 93
    sget-boolean v0, Lcom/koushikdutta/async/d;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->m:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/d;->m:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->a()V

    .line 23
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/a/a;

    .line 234
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/a/d;

    .line 223
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/a/f;

    .line 217
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Lcom/koushikdutta/async/n;->b()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    new-instance v1, Lcom/koushikdutta/async/e;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/e;-><init>(Lcom/koushikdutta/async/d;Lcom/koushikdutta/async/ah;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->b(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    sget-boolean v0, Lcom/koushikdutta/async/d;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->a()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/aj;->a([Ljava/nio/ByteBuffer;)I

    .line 80
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ah;->a([Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {p0}, Lcom/koushikdutta/async/d;->e()V

    .line 85
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d;->c(Ljava/lang/Exception;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Lcom/koushikdutta/async/n;Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    .line 58
    iput-object p2, p0, Lcom/koushikdutta/async/d;->m:Ljava/nio/channels/SelectionKey;

    .line 59
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->d:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->d:Z

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/d;->g:Lcom/koushikdutta/async/a/a;

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Lcom/koushikdutta/async/n;->b()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    new-instance v1, Lcom/koushikdutta/async/f;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/f;-><init>(Lcom/koushikdutta/async/d;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->b(Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    sget-boolean v0, Lcom/koushikdutta/async/d;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0}, Lcom/koushikdutta/async/d;->e()V

    .line 126
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d;->c(Ljava/lang/Exception;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 121
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/aj;->a(Ljava/nio/ByteBuffer;)I

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d;->a(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p2, p0, Lcom/koushikdutta/async/d;->a:Ljava/net/InetSocketAddress;

    .line 32
    const/high16 v0, 0x4

    iput v0, p0, Lcom/koushikdutta/async/d;->b:I

    .line 33
    new-instance v0, Lcom/koushikdutta/async/be;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/be;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    .line 34
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/koushikdutta/async/d;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/a/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->e:Lcom/koushikdutta/async/a/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/f;->a()V

    .line 50
    return-void
.end method

.method public b(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/koushikdutta/async/d;->p:Lcom/koushikdutta/async/a/a;

    .line 270
    return-void
.end method

.method b(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->h:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/d;->h:Z

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/d;->p:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/d;->p:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 252
    :cond_2
    if-eqz p1, :cond_0

    .line 253
    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method c()I
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Lcom/koushikdutta/async/d;->k()V

    .line 141
    iget-boolean v1, p0, Lcom/koushikdutta/async/d;->j:Z

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/koushikdutta/async/d;->c:I

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/d;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 152
    iget-object v1, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/aj;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v3, v1

    .line 153
    cmp-long v1, v3, v7

    if-gez v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/koushikdutta/async/d;->e()V

    .line 155
    const/4 v1, 0x1

    .line 160
    :goto_1
    cmp-long v5, v3, v7

    if-lez v5, :cond_2

    .line 161
    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/koushikdutta/async/d;->c:I

    .line 162
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    iget-object v3, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 170
    iget-object v2, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    invoke-static {p0, v2}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 173
    :cond_2
    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/d;->c(Ljava/lang/Exception;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {p0}, Lcom/koushikdutta/async/d;->e()V

    .line 180
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/d;->c(Ljava/lang/Exception;)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 158
    :cond_3
    int-to-long v5, v0

    add-long/2addr v5, v3

    long-to-int v1, v5

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_1
.end method

.method c(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/koushikdutta/async/d;->o:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iput-object p1, p0, Lcom/koushikdutta/async/d;->i:Ljava/lang/Exception;

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/d;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/koushikdutta/async/d;->e()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/d;->a(Ljava/lang/Exception;)V

    .line 202
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/d;->m:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/d;->f:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/koushikdutta/async/d;->p:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/koushikdutta/async/d;->l:Lcom/koushikdutta/async/aj;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d;->m:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/koushikdutta/async/d;->j:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/koushikdutta/async/d;->n:Lcom/koushikdutta/async/n;

    return-object v0
.end method
