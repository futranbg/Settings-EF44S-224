.class Lcom/koushikdutta/a/t;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/koushikdutta/a/s;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/s;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/koushikdutta/a/t;->b:Lcom/koushikdutta/a/s;

    iput p2, p0, Lcom/koushikdutta/a/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/koushikdutta/a/t;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/koushikdutta/a/t;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 435
    if-eqz v0, :cond_0

    .line 436
    iget v1, p0, Lcom/koushikdutta/a/t;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/t;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/koushikdutta/a/t;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 440
    if-eqz v0, :cond_1

    .line 441
    iget v1, p0, Lcom/koushikdutta/a/t;->a:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 443
    :cond_1
    return-void
.end method
