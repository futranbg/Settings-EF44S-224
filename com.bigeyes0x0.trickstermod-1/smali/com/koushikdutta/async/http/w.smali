.class Lcom/koushikdutta/async/http/w;
.super Lcom/koushikdutta/async/ay;
.source "AsyncHttpResponseImpl.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/q;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/koushikdutta/async/http/w;->a:Lcom/koushikdutta/async/http/q;

    invoke-direct {p0}, Lcom/koushikdutta/async/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/ay;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/http/w;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->c(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    .line 152
    return-void
.end method
