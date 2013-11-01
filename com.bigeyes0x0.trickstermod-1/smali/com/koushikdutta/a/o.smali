.class Lcom/koushikdutta/a/o;
.super Lcom/koushikdutta/a/q;
.source "IonRequestBuilder.java"


# instance fields
.field a:Lcom/koushikdutta/async/b/k;

.field final synthetic b:Lcom/koushikdutta/async/c/a;

.field final synthetic c:Lcom/koushikdutta/a/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/k;Ljava/lang/Runnable;Lcom/koushikdutta/async/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/koushikdutta/a/o;->c:Lcom/koushikdutta/a/k;

    iput-object p3, p0, Lcom/koushikdutta/a/o;->b:Lcom/koushikdutta/async/c/a;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/a/q;-><init>(Lcom/koushikdutta/a/k;Ljava/lang/Runnable;)V

    .line 532
    iput-object p0, p0, Lcom/koushikdutta/a/o;->a:Lcom/koushikdutta/async/b/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/a/w;)V
    .locals 2
    .parameter

    .prologue
    .line 535
    invoke-super {p0, p1}, Lcom/koushikdutta/a/q;->a(Lcom/koushikdutta/a/w;)V

    .line 536
    iget-object v0, p0, Lcom/koushikdutta/a/o;->b:Lcom/koushikdutta/async/c/a;

    iget-object v1, p0, Lcom/koushikdutta/a/o;->n:Lcom/koushikdutta/async/ak;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/c/a;->a(Lcom/koushikdutta/async/ak;)Lcom/koushikdutta/async/b/f;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/a/p;

    invoke-direct {v1, p0}, Lcom/koushikdutta/a/p;-><init>(Lcom/koushikdutta/a/o;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/f;->a(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;

    .line 542
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    check-cast p1, Lcom/koushikdutta/a/w;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/a/o;->a(Lcom/koushikdutta/a/w;)V

    return-void
.end method
