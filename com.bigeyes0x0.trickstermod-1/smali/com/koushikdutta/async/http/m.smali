.class public Lcom/koushikdutta/async/http/m;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:J

.field private h:Ljava/lang/String;

.field private i:Lcom/koushikdutta/async/http/c/p;

.field private j:Lcom/koushikdutta/async/http/c/r;

.field private k:Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/koushikdutta/async/http/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/m;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/m;-><init>(Ljava/net/URI;Ljava/lang/String;Lcom/koushikdutta/async/http/c/p;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Lcom/koushikdutta/async/http/c/p;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/koushikdutta/async/http/m;->k:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/m;->l:Z

    .line 169
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/async/http/m;->a:I

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/m;->c:I

    .line 108
    sget-boolean v0, Lcom/koushikdutta/async/http/m;->g:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    .line 109
    :cond_1
    iput-object p2, p0, Lcom/koushikdutta/async/http/m;->h:Ljava/lang/String;

    .line 110
    if-nez p3, :cond_3

    .line 111
    new-instance v0, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    .line 114
    :goto_1
    if-nez p3, :cond_2

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/http/c/p;Ljava/net/URI;)V

    .line 116
    :cond_2
    new-instance v0, Lcom/koushikdutta/async/http/c/r;

    iget-object v1, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/c/r;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/m;->j:Lcom/koushikdutta/async/http/c/r;

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/m;->a()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    .line 118
    return-void

    .line 113
    :cond_3
    iput-object p3, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    goto :goto_1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/koushikdutta/async/http/c/p;Ljava/net/URI;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/koushikdutta/async/http/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 353
    iget-wide v2, p0, Lcom/koushikdutta/async/http/m;->f:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/m;->f:J

    sub-long/2addr v0, v2

    .line 357
    :cond_0
    const-string v2, "(%d ms) %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/koushikdutta/async/http/m;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lcom/koushikdutta/async/http/m;->a:I

    .line 176
    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lcom/koushikdutta/async/http/m;
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/koushikdutta/async/http/m;->k:Landroid/os/Handler;

    .line 136
    return-object p0
.end method

.method public a(Z)Lcom/koushikdutta/async/http/m;
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/m;->l:Z

    .line 153
    return-object p0
.end method

.method public a()Lorg/apache/http/RequestLine;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/koushikdutta/async/http/n;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/n;-><init>(Lcom/koushikdutta/async/http/m;)V

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/g;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/koushikdutta/async/http/m;->m:Lcom/koushikdutta/async/http/a/a;

    .line 159
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/m;->e:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/koushikdutta/async/http/m;->b:Ljava/lang/String;

    .line 327
    iput p2, p0, Lcom/koushikdutta/async/http/m;->c:I

    .line 328
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/m;->e:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Lorg/apache/http/RequestLine;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/koushikdutta/async/http/o;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/o;-><init>(Lcom/koushikdutta/async/http/m;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/m;->e:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    .line 345
    iput p2, p0, Lcom/koushikdutta/async/http/m;->e:I

    .line 346
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/m;->e:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/net/URI;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->j:Lcom/koushikdutta/async/http/c/r;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->a()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/http/c/r;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->j:Lcom/koushikdutta/async/http/c/r;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->i:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/m;->l:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->m:Lcom/koushikdutta/async/http/a/a;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/koushikdutta/async/http/m;->a:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/http/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/koushikdutta/async/http/m;->c:I

    return v0
.end method
