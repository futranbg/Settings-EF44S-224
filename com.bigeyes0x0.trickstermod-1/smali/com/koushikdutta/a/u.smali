.class Lcom/koushikdutta/a/u;
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
    .line 452
    iput-object p1, p0, Lcom/koushikdutta/a/u;->b:Lcom/koushikdutta/a/s;

    iput p2, p0, Lcom/koushikdutta/a/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/koushikdutta/a/u;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    invoke-virtual {v0}, Lcom/koushikdutta/a/q;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/a/u;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    invoke-virtual {v0}, Lcom/koushikdutta/a/q;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/a/u;->b:Lcom/koushikdutta/a/s;

    iget-object v0, v0, Lcom/koushikdutta/a/s;->d:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->n:Lcom/koushikdutta/a/x;

    iget v1, p0, Lcom/koushikdutta/a/u;->a:I

    iget-object v2, p0, Lcom/koushikdutta/a/u;->b:Lcom/koushikdutta/a/s;

    iget v2, v2, Lcom/koushikdutta/a/s;->c:I

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/a/x;->a(II)V

    goto :goto_0
.end method
