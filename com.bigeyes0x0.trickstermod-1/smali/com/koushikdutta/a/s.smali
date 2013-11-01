.class Lcom/koushikdutta/a/s;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/ap;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:I

.field final synthetic c:I

.field final synthetic d:Lcom/koushikdutta/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    const-class v0, Lcom/koushikdutta/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/s;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/koushikdutta/a/q;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iput p2, p0, Lcom/koushikdutta/a/s;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 420
    sget-boolean v0, Lcom/koushikdutta/a/s;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    invoke-static {v0}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/a/k;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    invoke-virtual {v0}, Lcom/koushikdutta/a/q;->b()Z

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    int-to-float v0, p1

    iget v1, p0, Lcom/koushikdutta/a/s;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 429
    iget-object v1, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v1, v1, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->k:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v1, v1, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/koushikdutta/a/s;->a:I

    if-eq v0, v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v1, v1, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/a/t;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/a/t;-><init>(Lcom/koushikdutta/a/s;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    :cond_4
    iput v0, p0, Lcom/koushikdutta/a/s;->a:I

    .line 448
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->m:Lcom/koushikdutta/a/x;

    if-eqz v0, :cond_5

    .line 449
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->m:Lcom/koushikdutta/a/x;

    iget v1, p0, Lcom/koushikdutta/a/s;->c:I

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/a/x;->a(II)V

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->n:Lcom/koushikdutta/a/x;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/a/u;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/a/u;-><init>(Lcom/koushikdutta/a/s;I)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/n;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
