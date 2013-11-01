.class public Lcom/koushikdutta/a/e/b;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Lcom/koushikdutta/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/a/b;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v4, v0

    .line 51
    :goto_0
    return-object v4

    .line 32
    :cond_0
    new-instance v4, Lcom/koushikdutta/a/e/d;

    invoke-direct {v4, v0}, Lcom/koushikdutta/a/e/d;-><init>(Lcom/koushikdutta/a/e/c;)V

    .line 33
    invoke-virtual {p1}, Lcom/koushikdutta/a/b;->b()Lcom/koushikdutta/async/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v6

    new-instance v0, Lcom/koushikdutta/a/e/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/a/e/c;-><init>(Lcom/koushikdutta/a/e/b;Lcom/koushikdutta/a/b;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/a/e/d;Lcom/koushikdutta/async/b/g;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_0
.end method
