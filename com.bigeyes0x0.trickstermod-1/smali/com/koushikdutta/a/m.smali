.class Lcom/koushikdutta/a/m;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/a/x;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/a/q;

.field final synthetic c:Lcom/koushikdutta/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    const-class v0, Lcom/koushikdutta/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/koushikdutta/a/k;Lcom/koushikdutta/a/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iput-object p2, p0, Lcom/koushikdutta/a/m;->b:Lcom/koushikdutta/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    sget-boolean v0, Lcom/koushikdutta/a/m;->a:Z

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

    .line 284
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 286
    iget-object v1, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->u:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->v:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v1, v1, Lcom/koushikdutta/a/k;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->t:Lcom/koushikdutta/a/x;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->t:Lcom/koushikdutta/a/x;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/a/x;->a(II)V

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->w:Lcom/koushikdutta/a/x;

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/a/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/a/n;-><init>(Lcom/koushikdutta/a/m;II)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/n;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 305
    :cond_4
    return-void
.end method
