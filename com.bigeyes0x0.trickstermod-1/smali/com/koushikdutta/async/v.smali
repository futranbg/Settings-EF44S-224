.class Lcom/koushikdutta/async/v;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/b/j;

.field final synthetic c:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Ljava/lang/String;Lcom/koushikdutta/async/b/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/koushikdutta/async/v;->c:Lcom/koushikdutta/async/n;

    iput-object p2, p0, Lcom/koushikdutta/async/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/v;->b:Lcom/koushikdutta/async/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    iget-object v1, p0, Lcom/koushikdutta/async/v;->c:Lcom/koushikdutta/async/n;

    new-instance v2, Lcom/koushikdutta/async/x;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/x;-><init>(Lcom/koushikdutta/async/v;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 411
    :goto_0
    return-void

    .line 397
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/v;->c:Lcom/koushikdutta/async/n;

    new-instance v2, Lcom/koushikdutta/async/w;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/w;-><init>(Lcom/koushikdutta/async/v;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
