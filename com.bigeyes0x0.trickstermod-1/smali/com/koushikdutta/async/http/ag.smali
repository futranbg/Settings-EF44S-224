.class Lcom/koushikdutta/async/http/ag;
.super Lcom/koushikdutta/async/ay;
.source "AsyncSocketMiddleware.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ac;

.field final synthetic b:Lcom/koushikdutta/async/http/z;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/koushikdutta/async/http/ag;->b:Lcom/koushikdutta/async/http/z;

    iput-object p2, p0, Lcom/koushikdutta/async/http/ag;->a:Lcom/koushikdutta/async/ac;

    invoke-direct {p0}, Lcom/koushikdutta/async/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/ay;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 255
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->l()V

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/http/ag;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    .line 257
    return-void
.end method
