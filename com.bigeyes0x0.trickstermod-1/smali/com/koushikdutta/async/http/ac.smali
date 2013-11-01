.class Lcom/koushikdutta/async/http/ac;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/ab;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/koushikdutta/async/http/ac;->a:Lcom/koushikdutta/async/http/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/koushikdutta/async/http/ac;->a:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/ac;->a:Lcom/koushikdutta/async/http/ab;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unable to connect to remote address"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/ab;->a:Ljava/lang/Exception;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ac;->a:Lcom/koushikdutta/async/http/ab;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ac;->a:Lcom/koushikdutta/async/http/ab;

    iget-object v1, v1, Lcom/koushikdutta/async/http/ab;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/ab;->a(Ljava/lang/Exception;)Z

    .line 167
    return-void
.end method
