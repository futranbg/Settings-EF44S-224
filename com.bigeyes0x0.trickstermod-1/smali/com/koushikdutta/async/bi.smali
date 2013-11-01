.class final Lcom/koushikdutta/async/bi;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/a/f;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/an;

.field final synthetic b:Lcom/koushikdutta/async/ah;

.field final synthetic c:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/ah;Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/koushikdutta/async/bi;->a:Lcom/koushikdutta/async/an;

    iput-object p2, p0, Lcom/koushikdutta/async/bi;->b:Lcom/koushikdutta/async/ah;

    iput-object p3, p0, Lcom/koushikdutta/async/bi;->c:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/koushikdutta/async/bi;->a:Lcom/koushikdutta/async/an;

    iget-object v1, p0, Lcom/koushikdutta/async/bi;->b:Lcom/koushikdutta/async/ah;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    .line 188
    iget-object v0, p0, Lcom/koushikdutta/async/bi;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/bi;->c:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/koushikdutta/async/bi;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/f;)V

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/bi;->c:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 192
    :cond_0
    return-void
.end method
