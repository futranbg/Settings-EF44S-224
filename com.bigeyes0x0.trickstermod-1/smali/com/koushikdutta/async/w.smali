.class Lcom/koushikdutta/async/w;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/net/InetAddress;

.field final synthetic b:Lcom/koushikdutta/async/v;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/v;[Ljava/net/InetAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/koushikdutta/async/w;->b:Lcom/koushikdutta/async/v;

    iput-object p2, p0, Lcom/koushikdutta/async/w;->a:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/koushikdutta/async/w;->b:Lcom/koushikdutta/async/v;

    iget-object v0, v0, Lcom/koushikdutta/async/v;->b:Lcom/koushikdutta/async/b/j;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/w;->a:[Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 401
    return-void
.end method
