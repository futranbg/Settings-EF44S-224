.class Lcom/koushikdutta/async/c/e;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/j;

.field final synthetic b:Lcom/koushikdutta/async/ah;

.field final synthetic c:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/b/j;Lcom/koushikdutta/async/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/koushikdutta/async/c/e;->c:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/e;->a:Lcom/koushikdutta/async/b/j;

    iput-object p3, p0, Lcom/koushikdutta/async/c/e;->b:Lcom/koushikdutta/async/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/c/e;->a:Lcom/koushikdutta/async/b/j;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/j;->a(Ljava/lang/Exception;)Z

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c/e;->a:Lcom/koushikdutta/async/b/j;

    iget-object v1, p0, Lcom/koushikdutta/async/c/e;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/koushikdutta/async/c/e;->a:Lcom/koushikdutta/async/b/j;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/b/j;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
