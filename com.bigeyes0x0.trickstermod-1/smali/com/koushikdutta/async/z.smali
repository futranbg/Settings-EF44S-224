.class Lcom/koushikdutta/async/z;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field c:Lcom/koushikdutta/async/bg;

.field d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/o;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/koushikdutta/async/z;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/z;->a:Z

    if-eqz v0, :cond_0

    .line 50
    monitor-exit p0

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/z;->a:Z

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/z;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/bg;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/bg;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/z;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iput-object v2, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/bg;

    .line 61
    iput-object v2, p0, Lcom/koushikdutta/async/z;->d:Landroid/os/Handler;

    .line 62
    iput-object v2, p0, Lcom/koushikdutta/async/z;->b:Ljava/lang/Runnable;

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 57
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/bg;

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/bg;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/koushikdutta/async/z;->d:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iput-object v2, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/bg;

    .line 61
    iput-object v2, p0, Lcom/koushikdutta/async/z;->d:Landroid/os/Handler;

    .line 62
    iput-object v2, p0, Lcom/koushikdutta/async/z;->b:Ljava/lang/Runnable;

    throw v0
.end method
