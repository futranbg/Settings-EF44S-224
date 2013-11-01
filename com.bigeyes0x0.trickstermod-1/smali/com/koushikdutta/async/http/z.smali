.class public Lcom/koushikdutta/async/http/z;
.super Lcom/koushikdutta/async/http/ax;
.source "AsyncSocketMiddleware.java"


# instance fields
.field private a:Ljava/util/Hashtable;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/koushikdutta/async/http/a;

.field g:Z

.field h:Ljava/lang/String;

.field i:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    const-string v0, "http"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/z;-><init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/a;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ax;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/z;->a:Ljava/util/Hashtable;

    .line 25
    iput-object p1, p0, Lcom/koushikdutta/async/http/z;->f:Lcom/koushikdutta/async/http/a;

    .line 26
    iput-object p2, p0, Lcom/koushikdutta/async/http/z;->d:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/koushikdutta/async/http/z;->e:I

    .line 28
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ac;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/ac;->b(Lcom/koushikdutta/async/a/a;)V

    .line 250
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/f;)V

    .line 251
    new-instance v0, Lcom/koushikdutta/async/http/ag;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/ag;-><init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/d;)V

    .line 259
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ac;Lcom/koushikdutta/async/http/m;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/z;->a(Ljava/net/URI;)I

    move-result v1

    .line 224
    invoke-virtual {p0, v0, v1, p2}, Lcom/koushikdutta/async/http/z;->a(Ljava/net/URI;ILcom/koushikdutta/async/http/m;)Ljava/lang/String;

    move-result-object v1

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/z;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 228
    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/koushikdutta/async/http/z;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/koushikdutta/async/http/af;

    invoke-direct {v1, p0, v0, p1}, Lcom/koushikdutta/async/http/af;-><init>(Lcom/koushikdutta/async/http/z;Ljava/util/HashSet;Lcom/koushikdutta/async/ac;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 245
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/ac;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;Lcom/koushikdutta/async/http/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/ac;Lcom/koushikdutta/async/http/m;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/z;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 34
    iget v0, p0, Lcom/koushikdutta/async/http/z;->e:I

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)Lcom/koushikdutta/async/a/b;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    return-object p1
.end method

.method public a(Lcom/koushikdutta/async/http/h;)Lcom/koushikdutta/async/b/a;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v3

    .line 93
    iget-object v1, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/z;->a(Ljava/net/URI;)I

    move-result v2

    .line 94
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 149
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {p0, v3, v2, v0}, Lcom/koushikdutta/async/http/z;->a(Ljava/net/URI;ILcom/koushikdutta/async/http/m;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p1, Lcom/koushikdutta/async/http/h;->a:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/z;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 104
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/ac;

    .line 106
    invoke-interface {v1}, Lcom/koushikdutta/async/ac;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/z;->f:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v2, Lcom/koushikdutta/async/http/aa;

    invoke-direct {v2, p0, p1, v1}, Lcom/koushikdutta/async/http/aa;-><init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/ac;)V

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/koushikdutta/async/b/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/h;-><init>()V

    monitor-exit p0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/z;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/z;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 125
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Connecting socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 128
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->l()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->m()I

    move-result v0

    .line 132
    iget-object v4, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/m;->b()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    .line 144
    :goto_1
    iget-object v4, p0, Lcom/koushikdutta/async/http/z;->f:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/async/http/h;->c:Lcom/koushikdutta/async/a/b;

    invoke-virtual {p0, v5, v3, v2}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/a/b;Ljava/net/URI;I)Lcom/koushikdutta/async/a/b;

    move-result-object v2

    invoke-virtual {v4, v1, v0, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/String;ILcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 135
    iget-object v1, p0, Lcom/koushikdutta/async/http/z;->h:Ljava/lang/String;

    .line 136
    iget v0, p0, Lcom/koushikdutta/async/http/z;->i:I

    .line 138
    iget-object v4, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/m;->b()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 142
    goto :goto_1

    .line 148
    :cond_6
    iget-object v0, p1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/koushikdutta/async/http/ab;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/koushikdutta/async/http/ab;-><init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/http/h;ILjava/net/URI;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/z;->f:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/String;)Lcom/koushikdutta/async/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/ab;->a(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/k;

    move-result-object v0

    goto/16 :goto_0
.end method

.method a(Ljava/net/URI;ILcom/koushikdutta/async/http/m;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/z;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/http/z;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    iget-object v1, p3, Lcom/koushikdutta/async/http/m;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/m;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/koushikdutta/async/http/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Lcom/koushikdutta/async/http/k;)V
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->a:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".owned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/ac;)V

    .line 269
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->g:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "closing out socket (exception)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/ah;->a(Lcom/koushikdutta/async/http/c/p;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "closing out socket (not keep alive)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 276
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 280
    iget-object v0, p1, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    iget-object v1, p1, Lcom/koushikdutta/async/http/k;->b:Lcom/koushikdutta/async/http/m;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/ac;Lcom/koushikdutta/async/http/m;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/z;->g:Z

    .line 59
    return-void
.end method
