.class Lcom/koushikdutta/async/s;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/koushikdutta/async/s;->c:Lcom/koushikdutta/async/n;

    iput-object p2, p0, Lcom/koushikdutta/async/s;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/koushikdutta/async/s;->b:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/s;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 195
    return-void
.end method
