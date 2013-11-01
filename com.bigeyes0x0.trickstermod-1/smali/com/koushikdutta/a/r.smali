.class Lcom/koushikdutta/a/r;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/p;

.field final synthetic b:Lcom/koushikdutta/a/q;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/q;Lcom/koushikdutta/async/http/c/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/koushikdutta/a/r;->b:Lcom/koushikdutta/a/q;

    iput-object p2, p0, Lcom/koushikdutta/a/r;->a:Lcom/koushikdutta/async/http/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/koushikdutta/a/r;->b:Lcom/koushikdutta/a/q;

    iget-object v0, v0, Lcom/koushikdutta/a/q;->o:Lcom/koushikdutta/a/k;

    iget-object v0, v0, Lcom/koushikdutta/a/k;->x:Lcom/koushikdutta/a/a;

    iget-object v1, p0, Lcom/koushikdutta/a/r;->a:Lcom/koushikdutta/async/http/c/p;

    invoke-interface {v0, v1}, Lcom/koushikdutta/a/a;->a(Lcom/koushikdutta/async/http/c/p;)V

    .line 401
    return-void
.end method
