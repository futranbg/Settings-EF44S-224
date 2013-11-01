.class Lcom/koushikdutta/async/http/f;
.super Lcom/koushikdutta/async/b/j;
.source "AsyncHttpClient.java"


# instance fields
.field public a:Lcom/koushikdutta/async/ac;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Runnable;

.field final synthetic l:Lcom/koushikdutta/async/http/a;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/a;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/f;->l:Lcom/koushikdutta/async/http/a;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/f;-><init>(Lcom/koushikdutta/async/http/a;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/koushikdutta/async/b/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->a:Lcom/koushikdutta/async/ac;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->a:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->d()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/f;->l:Lcom/koushikdutta/async/http/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Object;)V

    .line 97
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
