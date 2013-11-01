.class Lcom/koushikdutta/async/http/t;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/s;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/s;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/koushikdutta/async/http/t;->a:Lcom/koushikdutta/async/http/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/t;->a:Lcom/koushikdutta/async/http/s;

    iget-object v0, v0, Lcom/koushikdutta/async/http/s;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/q;->b(Ljava/lang/Exception;)V

    .line 74
    return-void
.end method
