.class public abstract Lcom/koushikdutta/async/b/k;
.super Lcom/koushikdutta/async/b/j;
.source "TransformFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/k;
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/k;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    .line 23
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/b/f;->a(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;

    .line 24
    return-object p0
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/k;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/k;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 14
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/b/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/k;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/k;->a(Ljava/lang/Exception;)Z

    .line 29
    return-void
.end method
