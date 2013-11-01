.class Lcom/koushikdutta/async/http/al;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/h;

.field final synthetic b:Lcom/koushikdutta/async/http/as;

.field final synthetic c:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/http/as;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/koushikdutta/async/http/al;->c:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/al;->a:Lcom/koushikdutta/async/http/h;

    iput-object p3, p0, Lcom/koushikdutta/async/http/al;->b:Lcom/koushikdutta/async/http/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/koushikdutta/async/http/al;->a:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->c:Lcom/koushikdutta/async/a/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/al;->b:Lcom/koushikdutta/async/http/as;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    .line 356
    iget-object v0, p0, Lcom/koushikdutta/async/http/al;->b:Lcom/koushikdutta/async/http/as;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/as;->b()V

    .line 357
    return-void
.end method
