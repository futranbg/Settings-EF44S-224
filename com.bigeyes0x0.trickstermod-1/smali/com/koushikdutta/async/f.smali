.class Lcom/koushikdutta/async/f;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/koushikdutta/async/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/d;

    iput-object p2, p0, Lcom/koushikdutta/async/f;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/f;->b:Lcom/koushikdutta/async/d;

    iget-object v1, p0, Lcom/koushikdutta/async/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/d;->a(Ljava/nio/ByteBuffer;)V

    .line 109
    return-void
.end method
