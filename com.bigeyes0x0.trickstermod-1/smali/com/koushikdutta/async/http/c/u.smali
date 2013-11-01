.class Lcom/koushikdutta/async/http/c/u;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/c/j;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/t;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/c/t;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

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

    .line 119
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->a(Lcom/koushikdutta/async/http/c/t;Z)Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->b(Lcom/koushikdutta/async/http/c/t;Z)Z

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {p2}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->a(Lcom/koushikdutta/async/http/c/t;I)I

    goto :goto_0

    .line 125
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {p2}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->b(Lcom/koushikdutta/async/http/c/t;I)I

    goto :goto_0

    .line 127
    :cond_4
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->c(Lcom/koushikdutta/async/http/c/t;Z)Z

    goto :goto_0

    .line 129
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/u;->a:Lcom/koushikdutta/async/http/c/t;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/t;->d(Lcom/koushikdutta/async/http/c/t;Z)Z

    goto :goto_0
.end method
