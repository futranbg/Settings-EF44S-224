.class public Lcom/koushikdutta/async/http/ah;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public static a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/http/c/p;Z)Lcom/koushikdutta/async/ak;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 67
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 73
    :goto_0
    if-eq v2, v1, :cond_4

    .line 74
    if-gez v1, :cond_1

    .line 75
    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "not using chunked encoding, and no content-length found."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/ai;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 118
    :cond_0
    :goto_1
    return-object p0

    .line 69
    :catch_0
    move-exception v0

    move v1, v2

    .line 70
    goto :goto_0

    .line 80
    :cond_1
    if-nez v1, :cond_2

    .line 81
    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/ai;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    new-instance v0, Lcom/koushikdutta/async/http/filter/e;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/e;-><init>(I)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/e;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 105
    :cond_3
    :goto_2
    const-string v0, "gzip"

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/filter/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/f;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/f;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 109
    goto :goto_1

    .line 90
    :cond_4
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    new-instance v0, Lcom/koushikdutta/async/http/filter/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/a;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/a;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 94
    goto :goto_2

    .line 96
    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/c/p;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_6
    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/ai;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 101
    goto :goto_1

    .line 110
    :cond_7
    const-string v0, "deflate"

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/koushikdutta/async/http/filter/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/h;-><init>()V

    .line 112
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/h;->a(Lcom/koushikdutta/async/ak;)V

    move-object p0, v0

    .line 113
    goto :goto_1
.end method

.method public static a(Lcom/koushikdutta/async/http/c/p;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 123
    const-string v1, "Connection"

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_1

    .line 125
    const-string v0, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/c/p;->b()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
