.class Lcom/koushikdutta/async/http/e;
.super Lcom/koushikdutta/async/http/q;
.source "AsyncHttpClient.java"


# instance fields
.field final synthetic f:Lcom/koushikdutta/async/http/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/http/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/q;-><init>(Lcom/koushikdutta/async/http/m;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;)V
    .locals 6
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iput-object p1, v0, Lcom/koushikdutta/async/http/k;->e:Lcom/koushikdutta/async/ak;

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 233
    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v3, v3, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/g;->a(Lcom/koushikdutta/async/http/i;)V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->f:Lcom/koushikdutta/async/http/c/t;

    iput-object v0, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->e:Lcom/koushikdutta/async/ak;

    invoke-super {p0, v0}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/ak;)V

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/p;->c()I

    move-result v0

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/p;->c()I

    move-result v0

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    const-string v0, "Location"

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v2, v2, Lcom/koushikdutta/async/http/d;->e:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v4, v4, Lcom/koushikdutta/async/http/d;->e:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v5, v5, Lcom/koushikdutta/async/http/d;->e:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 246
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/m;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v2, v2, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/koushikdutta/async/http/m;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-wide v2, v0, Lcom/koushikdutta/async/http/m;->f:J

    iput-wide v2, v1, Lcom/koushikdutta/async/http/m;->f:J

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget v0, v0, Lcom/koushikdutta/async/http/m;->e:I

    iput v0, v1, Lcom/koushikdutta/async/http/m;->e:I

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-object v0, v0, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/koushikdutta/async/http/m;->d:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    const-string v2, "Redirecting"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;)V

    .line 251
    const-string v0, "Redirected"

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget v2, v2, Lcom/koushikdutta/async/http/d;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v3, v3, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v4, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v4, v4, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    .line 254
    new-instance v0, Lcom/koushikdutta/async/ay;

    invoke-direct {v0}, Lcom/koushikdutta/async/ay;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/e;->a(Lcom/koushikdutta/async/a/d;)V

    .line 262
    :goto_1
    return-void

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final (post cache response) headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v4, v3, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v5, v3, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 6
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    instance-of v0, p1, Lcom/koushikdutta/async/g;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/koushikdutta/async/g;

    .line 299
    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/g;)V

    .line 300
    invoke-virtual {v0}, Lcom/koushikdutta/async/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e;->k()Lcom/koushikdutta/async/ac;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 306
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/q;->a(Ljava/lang/Exception;)V

    .line 307
    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/e;->c()Lcom/koushikdutta/async/http/c/t;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v4, v2, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v5, v2, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iput-object p1, v0, Lcom/koushikdutta/async/http/k;->g:Ljava/lang/Exception;

    .line 313
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 315
    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v3, v3, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/g;->a(Lcom/koushikdutta/async/http/k;)V

    goto :goto_1

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v1, v1, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Object;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received headers:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;

    iput-object v1, v0, Lcom/koushikdutta/async/http/k;->f:Lcom/koushikdutta/async/http/c/t;

    .line 277
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 279
    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v3, v3, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/g;->a(Lcom/koushikdutta/async/http/j;)V

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :catch_0
    move-exception v2

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v4, v4, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    iget-object v5, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v5, v5, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    goto/16 :goto_0

    .line 281
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :try_start_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->f:Lcom/koushikdutta/async/http/c/t;

    iput-object v0, p0, Lcom/koushikdutta/async/http/e;->h:Lcom/koushikdutta/async/http/c/t;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/k;

    iget-object v0, v0, Lcom/koushikdutta/async/http/k;->f:Lcom/koushikdutta/async/http/c/t;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v1, v1, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v1, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/d;->g:Lcom/koushikdutta/async/http/a;

    iget-object v1, v1, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v2, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v2, v2, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/f;

    iget-object v2, v2, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/koushikdutta/async/http/e;->f:Lcom/koushikdutta/async/http/d;

    iget-object v3, v3, Lcom/koushikdutta/async/http/d;->c:Lcom/koushikdutta/async/http/m;

    invoke-static {v3}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/m;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    goto :goto_0
.end method
