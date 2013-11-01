.class Lcom/koushikdutta/async/ae;
.super Ljava/lang/Object;
.source "BufferedDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ad;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/ad;->b:Z

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    iput-object p1, v0, Lcom/koushikdutta/async/ad;->c:Ljava/lang/Exception;

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/ad;->f:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/ae;->a:Lcom/koushikdutta/async/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/ad;->f:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 19
    :cond_0
    return-void
.end method
