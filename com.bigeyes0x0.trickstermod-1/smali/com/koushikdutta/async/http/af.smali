.class Lcom/koushikdutta/async/http/af;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/koushikdutta/async/ac;

.field final synthetic c:Lcom/koushikdutta/async/http/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/z;Ljava/util/HashSet;Lcom/koushikdutta/async/ac;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/koushikdutta/async/http/af;->c:Lcom/koushikdutta/async/http/z;

    iput-object p2, p0, Lcom/koushikdutta/async/http/af;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/koushikdutta/async/http/af;->b:Lcom/koushikdutta/async/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 239
    iget-object v1, p0, Lcom/koushikdutta/async/http/af;->c:Lcom/koushikdutta/async/http/z;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/af;->a:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/koushikdutta/async/http/af;->b:Lcom/koushikdutta/async/ac;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/http/af;->b:Lcom/koushikdutta/async/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
