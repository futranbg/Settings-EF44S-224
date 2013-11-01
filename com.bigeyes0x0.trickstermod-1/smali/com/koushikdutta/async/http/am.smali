.class final Lcom/koushikdutta/async/http/am;
.super Ljava/io/FilterInputStream;
.source "ResponseCacheMiddleware.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/h;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/koushikdutta/async/http/c/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 917
    iput-object p2, p0, Lcom/koushikdutta/async/http/am;->a:Lcom/koushikdutta/async/http/c/h;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/koushikdutta/async/http/am;->a:Lcom/koushikdutta/async/http/c/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/h;->close()V

    .line 920
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 921
    return-void
.end method
