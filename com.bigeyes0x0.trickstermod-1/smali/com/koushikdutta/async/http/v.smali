.class Lcom/koushikdutta/async/http/v;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/ax;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/q;

.field private b:Lcom/koushikdutta/async/http/c/p;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/q;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/q;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    new-instance v1, Lcom/koushikdutta/async/http/c/t;

    iget-object v2, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v2}, Lcom/koushikdutta/async/http/q;->b(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v1, v2, v3}, Lcom/koushikdutta/async/http/c/t;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/q;->h:Lcom/koushikdutta/async/http/c/t;

    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/q;->b()V

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->c(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "HEAD"

    iget-object v1, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v1}, Lcom/koushikdutta/async/http/q;->b(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/q;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/ai;

    move-result-object v0

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/ak;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/v;->a:Lcom/koushikdutta/async/http/q;

    invoke-static {v0}, Lcom/koushikdutta/async/http/q;->c(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/v;->b:Lcom/koushikdutta/async/http/c/p;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/ah;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/http/c/p;Z)Lcom/koushikdutta/async/ak;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
