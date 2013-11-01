.class Lcom/koushikdutta/async/http/c/f;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/e;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/c/e;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/f;->a:Lcom/koushikdutta/async/http/c/e;

    .line 850
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 851
    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/c/e;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/c/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/c/f;-><init>(Lcom/koushikdutta/async/http/c/e;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->a:Lcom/koushikdutta/async/http/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/e;->a(Lcom/koushikdutta/async/http/c/e;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->a:Lcom/koushikdutta/async/http/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/e;->a(Lcom/koushikdutta/async/http/c/e;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->a:Lcom/koushikdutta/async/http/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/e;->a(Lcom/koushikdutta/async/http/c/e;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/f;->a:Lcom/koushikdutta/async/http/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/e;->a(Lcom/koushikdutta/async/http/c/e;Z)Z

    goto :goto_0
.end method
