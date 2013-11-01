.class Lcom/koushikdutta/a/e/j;
.super Ljava/lang/Object;
.source "HttpLoader.java"

# interfaces
.implements Lcom/koushikdutta/async/http/b/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/g;

.field final synthetic b:Lcom/koushikdutta/a/e/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/e/i;Lcom/koushikdutta/async/b/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/koushikdutta/a/e/j;->b:Lcom/koushikdutta/a/e/i;

    iput-object p2, p0, Lcom/koushikdutta/a/e/j;->a:Lcom/koushikdutta/async/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/p;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 35
    const/4 v2, -0x1

    .line 36
    const/4 v3, 0x3

    .line 39
    if-eqz p2, :cond_2

    .line 40
    invoke-interface {p2}, Lcom/koushikdutta/async/http/p;->e()Lcom/koushikdutta/async/http/m;

    move-result-object v5

    .line 41
    invoke-interface {p2}, Lcom/koushikdutta/async/http/p;->c()Lcom/koushikdutta/async/http/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v4

    .line 42
    invoke-interface {p2}, Lcom/koushikdutta/async/http/p;->c()Lcom/koushikdutta/async/http/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->c()I

    move-result v2

    .line 43
    invoke-interface {p2}, Lcom/koushikdutta/async/http/p;->c()Lcom/koushikdutta/async/http/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "X-Served-From"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/4 v3, 0x1

    .line 49
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/koushikdutta/a/e/j;->a:Lcom/koushikdutta/async/b/g;

    new-instance v0, Lcom/koushikdutta/a/w;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/a/w;-><init>(Lcom/koushikdutta/async/ak;IILcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;)V

    invoke-interface {v6, p1, v0}, Lcom/koushikdutta/async/b/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 50
    return-void

    .line 46
    :cond_1
    const-string v1, "conditional-cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    move-object v4, v5

    goto :goto_0
.end method
