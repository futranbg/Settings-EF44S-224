.class public Lcom/koushikdutta/async/m;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# instance fields
.field a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/bg;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/bg;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    .line 13
    iput-object p0, v1, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    .line 14
    iget-object v0, v1, Lcom/koushikdutta/async/bg;->b:Ljava/util/concurrent/Semaphore;

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    iput-object v2, v1, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    .line 38
    :goto_0
    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_1
    invoke-virtual {v1}, Lcom/koushikdutta/async/bg;->a()Ljava/lang/Runnable;

    move-result-object v3

    .line 23
    if-nez v3, :cond_0

    .line 29
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 31
    iget-object v3, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    iput-object v2, v1, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    throw v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/bg;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/bg;

    move-result-object v4

    .line 43
    iget-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    .line 44
    iput-object p0, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    .line 45
    iget-object v6, v4, Lcom/koushikdutta/async/bg;->b:Ljava/util/concurrent/Semaphore;

    .line 48
    :try_start_0
    iget-object v7, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    iput-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    :goto_0
    return v0

    .line 51
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/koushikdutta/async/bg;->a()Ljava/lang/Runnable;

    move-result-object v9

    .line 56
    if-nez v9, :cond_2

    .line 62
    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 63
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v2, v3, v10}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    .line 72
    iput-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    :try_start_2
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    iput-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    throw v0

    .line 65
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    iput-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    goto :goto_0

    .line 68
    :cond_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v9

    sub-long/2addr v9, v7

    cmp-long v9, v9, v2

    if-ltz v9, :cond_1

    .line 72
    iput-object v5, v4, Lcom/koushikdutta/async/bg;->a:Lcom/koushikdutta/async/m;

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-static {p0}, Lcom/koushikdutta/async/bg;->a(Lcom/koushikdutta/async/m;)V

    .line 79
    return-void
.end method
