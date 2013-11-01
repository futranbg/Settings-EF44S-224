.class Lcom/koushikdutta/async/http/s;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/q;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v1}, Lcom/koushikdutta/async/http/q;->b(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/m;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    new-instance v3, Lcom/koushikdutta/async/http/t;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/t;-><init>(Lcom/koushikdutta/async/http/s;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/a/a;->a(Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/a/a;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/q;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
