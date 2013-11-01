.class Lcom/koushikdutta/async/http/ao;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/an;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/an;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/koushikdutta/async/http/ao;->a:Lcom/koushikdutta/async/http/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/koushikdutta/async/http/ao;->a:Lcom/koushikdutta/async/http/an;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/an;->a()V

    .line 507
    return-void
.end method
