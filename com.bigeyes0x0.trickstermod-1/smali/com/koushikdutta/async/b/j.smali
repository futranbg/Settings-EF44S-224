.class public Lcom/koushikdutta/async/b/j;
.super Lcom/koushikdutta/async/b/h;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/b/e;


# instance fields
.field d:Lcom/koushikdutta/async/m;

.field i:Ljava/lang/Exception;

.field j:Ljava/lang/Object;

.field k:Lcom/koushikdutta/async/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    return-void
.end method

.method private c(Lcom/koushikdutta/async/b/g;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->i:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/koushikdutta/async/b/j;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/b/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->i:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/b/j;->i:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private i()Lcom/koushikdutta/async/b/g;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->k:Lcom/koushikdutta/async/b/g;

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/b/j;->k:Lcom/koushikdutta/async/b/g;

    .line 74
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/d;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/j;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/j;->b(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/h;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/j;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/j;
    .locals 1
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iput-object p1, p0, Lcom/koushikdutta/async/b/j;->k:Lcom/koushikdutta/async/b/g;

    .line 135
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->i()Lcom/koushikdutta/async/b/g;

    move-result-object v0

    .line 139
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/j;->c(Lcom/koushikdutta/async/b/g;)V

    .line 141
    return-object p0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/koushikdutta/async/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    .line 21
    :cond_0
    monitor-enter p0

    .line 22
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/j;->i:Ljava/lang/Exception;

    .line 23
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->c()V

    .line 24
    monitor-exit p0

    .line 25
    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-super {p0}, Lcom/koushikdutta/async/b/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    monitor-exit p0

    .line 116
    :goto_0
    return v0

    .line 110
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/b/j;->j:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/koushikdutta/async/b/j;->i:Ljava/lang/Exception;

    .line 112
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->c()V

    .line 113
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->i()Lcom/koushikdutta/async/b/g;

    move-result-object v0

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/j;->c(Lcom/koushikdutta/async/b/g;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/h;->b(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/h;

    .line 155
    return-object p0
.end method

.method c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->b()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    .line 87
    :cond_0
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->b()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method g()Lcom/koushikdutta/async/m;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/koushikdutta/async/m;

    invoke-direct {v0}, Lcom/koushikdutta/async/m;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/j;->d:Lcom/koushikdutta/async/m;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->g()Lcom/koushikdutta/async/m;

    move-result-object v0

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->a()V

    .line 38
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->h()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/j;->g()Lcom/koushikdutta/async/m;

    move-result-object v0

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/m;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;->h()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
