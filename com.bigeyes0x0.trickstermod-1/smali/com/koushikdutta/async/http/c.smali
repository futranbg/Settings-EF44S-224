.class Lcom/koushikdutta/async/http/c;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/k;

.field final synthetic b:Lcom/koushikdutta/async/http/f;

.field final synthetic c:Lcom/koushikdutta/async/http/m;

.field final synthetic d:Lcom/koushikdutta/async/http/b/a;

.field final synthetic e:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/k;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/koushikdutta/async/http/c;->e:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/k;

    iput-object p3, p0, Lcom/koushikdutta/async/http/c;->b:Lcom/koushikdutta/async/http/f;

    iput-object p4, p0, Lcom/koushikdutta/async/http/c;->c:Lcom/koushikdutta/async/http/m;

    iput-object p5, p0, Lcom/koushikdutta/async/http/c;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->d:Lcom/koushikdutta/async/b/a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->d:Lcom/koushikdutta/async/b/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/b/a;->b()Z

    .line 176
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->a:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c;->e:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c;->b:Lcom/koushikdutta/async/http/f;

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/c;->c:Lcom/koushikdutta/async/http/m;

    iget-object v5, p0, Lcom/koushikdutta/async/http/c;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    .line 180
    return-void
.end method
