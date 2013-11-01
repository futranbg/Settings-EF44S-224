.class Lcom/koushikdutta/async/http/aa;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/h;

.field final synthetic b:Lcom/koushikdutta/async/ac;

.field final synthetic c:Lcom/koushikdutta/async/http/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/ac;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/koushikdutta/async/http/aa;->c:Lcom/koushikdutta/async/http/z;

    iput-object p2, p0, Lcom/koushikdutta/async/http/aa;->a:Lcom/koushikdutta/async/http/h;

    iput-object p3, p0, Lcom/koushikdutta/async/http/aa;->b:Lcom/koushikdutta/async/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/aa;->a:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Reusing keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/aa;->a:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->c:Lcom/koushikdutta/async/a/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/aa;->b:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    .line 114
    return-void
.end method
