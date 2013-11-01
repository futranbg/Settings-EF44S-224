.class Lcom/koushikdutta/async/http/c/s;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/c/j;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/r;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/c/r;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/r;->a(Lcom/koushikdutta/async/http/c/r;Z)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-static {p2}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/r;->a(Lcom/koushikdutta/async/http/c/r;I)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-static {p2}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/r;->b(Lcom/koushikdutta/async/http/c/r;I)I

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-static {p2}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/r;->c(Lcom/koushikdutta/async/http/c/r;I)I

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/s;->a:Lcom/koushikdutta/async/http/c/r;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/r;->b(Lcom/koushikdutta/async/http/c/r;Z)Z

    goto :goto_0
.end method
