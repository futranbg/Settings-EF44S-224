.class Lcom/koushikdutta/async/http/u;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/q;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/koushikdutta/async/http/u;->a:Lcom/koushikdutta/async/http/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/u;->a:Lcom/koushikdutta/async/http/q;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/q;->i:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/u;->a:Lcom/koushikdutta/async/http/q;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/q;->a(Ljava/lang/Exception;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/u;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/q;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
