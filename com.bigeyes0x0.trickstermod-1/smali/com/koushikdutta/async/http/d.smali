.class Lcom/koushikdutta/async/http/d;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/f;

.field final synthetic b:Lcom/koushikdutta/async/http/k;

.field final synthetic c:Lcom/koushikdutta/async/http/m;

.field final synthetic d:Lcom/koushikdutta/async/http/b/a;

.field final synthetic e:Ljava/net/URI;

.field final synthetic f:I

.field final synthetic g:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/k;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;Ljava/net/URI;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iput-object p3, p0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iput-object p4, p0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iput-object p5, p0, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    iput-object p6, p0, Lcom/koushikdutta/async/http/d;->e:Ljava/net/URI;

    iput p7, p0, Lcom/koushikdutta/async/http/d;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-interface {p2}, Lcom/koushikdutta/async/ac;->d()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v1, v1, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Object;)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iput-object p2, v0, Lcom/koushikdutta/async/http/k;->h:Lcom/koushikdutta/async/ac;

    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 202
    iget-object v3, p0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/g;->a(Lcom/koushikdutta/async/http/l;)V

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iput-object p2, v0, Lcom/koushikdutta/async/http/f;->a:Lcom/koushikdutta/async/ac;

    .line 208
    if-eqz p1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-object v5, p0, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    goto :goto_0

    .line 216
    :cond_4
    new-instance v0, Lcom/koushikdutta/async/http/e;

    iget-object v1, p0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/e;-><init>(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/m;)V

    .line 336
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/ac;)V

    goto :goto_0
.end method
