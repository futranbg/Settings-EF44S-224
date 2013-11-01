.class Lcom/koushikdutta/async/x;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/v;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/v;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/koushikdutta/async/x;->b:Lcom/koushikdutta/async/v;

    iput-object p2, p0, Lcom/koushikdutta/async/x;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/koushikdutta/async/x;->b:Lcom/koushikdutta/async/v;

    iget-object v0, v0, Lcom/koushikdutta/async/v;->b:Lcom/koushikdutta/async/b/j;

    iget-object v1, p0, Lcom/koushikdutta/async/x;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 408
    return-void
.end method
