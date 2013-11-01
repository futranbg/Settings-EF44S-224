.class Lcom/koushikdutta/async/e;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ah;

.field final synthetic b:Lcom/koushikdutta/async/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d;Lcom/koushikdutta/async/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/e;->b:Lcom/koushikdutta/async/d;

    iput-object p2, p0, Lcom/koushikdutta/async/e;->a:Lcom/koushikdutta/async/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/e;->b:Lcom/koushikdutta/async/d;

    iget-object v1, p0, Lcom/koushikdutta/async/e;->a:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/d;->a(Lcom/koushikdutta/async/ah;)V

    .line 68
    return-void
.end method
