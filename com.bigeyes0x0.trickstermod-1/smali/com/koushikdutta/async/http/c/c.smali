.class Lcom/koushikdutta/async/http/c/c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/b;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    monitor-exit v1

    .line 188
    :goto_0
    return-object v3

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->b(Lcom/koushikdutta/async/http/c/b;)V

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->c(Lcom/koushikdutta/async/http/c/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->d(Lcom/koushikdutta/async/http/c/b;)V

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/c;->a:Lcom/koushikdutta/async/http/c/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/b;I)I

    .line 187
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/c/c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
