.class Lcom/koushikdutta/a/n;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/koushikdutta/a/m;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/m;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/koushikdutta/a/n;->c:Lcom/koushikdutta/a/m;

    iput p2, p0, Lcom/koushikdutta/a/n;->a:I

    iput p3, p0, Lcom/koushikdutta/a/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/koushikdutta/a/n;->c:Lcom/koushikdutta/a/m;

    iget-object v0, v0, Lcom/koushikdutta/a/m;->b:Lcom/koushikdutta/a/q;

    invoke-virtual {v0}, Lcom/koushikdutta/a/q;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/a/n;->c:Lcom/koushikdutta/a/m;

    iget-object v0, v0, Lcom/koushikdutta/a/m;->b:Lcom/koushikdutta/a/q;

    invoke-virtual {v0}, Lcom/koushikdutta/a/q;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/a/n;->c:Lcom/koushikdutta/a/m;

    iget-object v0, v0, Lcom/koushikdutta/a/m;->c:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->n:Lcom/koushikdutta/a/x;

    iget v1, p0, Lcom/koushikdutta/a/n;->a:I

    iget v2, p0, Lcom/koushikdutta/a/n;->b:I

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/a/x;->a(II)V

    goto :goto_0
.end method
