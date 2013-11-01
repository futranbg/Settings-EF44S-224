.class Lcom/koushikdutta/a/l;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/b/j;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/koushikdutta/a/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/k;Ljava/lang/Exception;Lcom/koushikdutta/async/b/j;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/koushikdutta/a/l;->d:Lcom/koushikdutta/a/k;

    iput-object p2, p0, Lcom/koushikdutta/a/l;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/koushikdutta/a/l;->b:Lcom/koushikdutta/async/b/j;

    iput-object p4, p0, Lcom/koushikdutta/a/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/koushikdutta/a/l;->d:Lcom/koushikdutta/a/k;

    invoke-static {v0}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/l;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/koushikdutta/a/l;->b:Lcom/koushikdutta/async/b/j;

    iget-object v1, p0, Lcom/koushikdutta/a/l;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/j;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/a/l;->b:Lcom/koushikdutta/async/b/j;

    iget-object v1, p0, Lcom/koushikdutta/a/l;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method
