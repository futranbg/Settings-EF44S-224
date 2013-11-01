.class Lcom/koushikdutta/a/q;
.super Lcom/koushikdutta/async/b/k;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/a/d/a;


# instance fields
.field private a:Lcom/koushikdutta/async/http/m;

.field private b:Lcom/koushikdutta/async/http/m;

.field private c:I

.field l:Ljava/lang/Runnable;

.field m:Lcom/koushikdutta/async/http/c/p;

.field n:Lcom/koushikdutta/async/ak;

.field final synthetic o:Lcom/koushikdutta/a/k;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/a/k;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/k;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/koushikdutta/a/q;->l:Ljava/lang/Runnable;

    .line 362
    iget-object v0, p1, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    iget-object v1, p1, Lcom/koushikdutta/a/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/a/b;->a(Lcom/koushikdutta/async/b/f;Ljava/lang/Object;)V

    .line 363
    iget-object v0, p1, Lcom/koushikdutta/a/k;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/a/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 366
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_2

    .line 368
    iget-object v2, p1, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    invoke-virtual {v2, p0, v0}, Lcom/koushikdutta/a/b;->a(Lcom/koushikdutta/async/b/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/koushikdutta/a/q;Lcom/koushikdutta/async/http/m;)Lcom/koushikdutta/async/http/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/koushikdutta/a/q;->a:Lcom/koushikdutta/async/http/m;

    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/koushikdutta/async/b/k;->a()V

    .line 375
    iget-object v0, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->d()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/q;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/a/q;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 379
    :cond_1
    return-void
.end method

.method protected a(Lcom/koushikdutta/a/w;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->a()Lcom/koushikdutta/async/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    .line 390
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->c()I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/a/q;->c:I

    .line 391
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->d()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/q;->m:Lcom/koushikdutta/async/http/c/p;

    .line 392
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->e()Lcom/koushikdutta/async/http/m;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/q;->b:Lcom/koushikdutta/async/http/m;

    .line 394
    iget-object v0, p0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->x:Lcom/koushikdutta/a/a;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->d()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/a/r;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/a/r;-><init>(Lcom/koushikdutta/a/q;Lcom/koushikdutta/async/http/c/p;)V

    invoke-static {v1, v2}, Lcom/koushikdutta/async/n;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/a/w;->b()I

    move-result v1

    .line 408
    instance-of v0, p1, Lcom/koushikdutta/async/ao;

    if-nez v0, :cond_1

    .line 409
    new-instance v0, Lcom/koushikdutta/async/at;

    invoke-direct {v0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 410
    iget-object v2, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/ao;->a(Lcom/koushikdutta/async/ak;)V

    .line 415
    :goto_0
    iput-object v0, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    .line 416
    new-instance v2, Lcom/koushikdutta/a/s;

    invoke-direct {v2, p0, v1}, Lcom/koushikdutta/a/s;-><init>(Lcom/koushikdutta/a/q;I)V

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/ao;->a(Lcom/koushikdutta/async/ap;)V

    .line 463
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/a/q;->n:Lcom/koushikdutta/async/ak;

    check-cast v0, Lcom/koushikdutta/async/ao;

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    check-cast p1, Lcom/koushikdutta/a/w;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/a/q;->a(Lcom/koushikdutta/a/w;)V

    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/a/k;Lcom/koushikdutta/async/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 385
    return-void
.end method
