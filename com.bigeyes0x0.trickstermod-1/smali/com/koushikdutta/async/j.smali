.class Lcom/koushikdutta/async/j;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/a/f;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/i;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/j;->a:Lcom/koushikdutta/async/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/j;->a:Lcom/koushikdutta/async/i;

    iget-object v0, v0, Lcom/koushikdutta/async/i;->l:Lcom/koushikdutta/async/a/f;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/j;->a:Lcom/koushikdutta/async/i;

    iget-object v0, v0, Lcom/koushikdutta/async/i;->l:Lcom/koushikdutta/async/a/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/f;->a()V

    .line 71
    :cond_0
    return-void
.end method
