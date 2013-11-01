.class Lcom/koushikdutta/async/q;
.super Ljava/lang/Thread;
.source "AsyncServer.java"


# instance fields
.field final synthetic a:Ljava/nio/channels/Selector;

.field final synthetic b:Ljava/util/PriorityQueue;

.field final synthetic c:Z

.field final synthetic d:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Ljava/lang/String;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/koushikdutta/async/q;->d:Lcom/koushikdutta/async/n;

    iput-object p3, p0, Lcom/koushikdutta/async/q;->a:Ljava/nio/channels/Selector;

    iput-object p4, p0, Lcom/koushikdutta/async/q;->b:Ljava/util/PriorityQueue;

    iput-boolean p5, p0, Lcom/koushikdutta/async/q;->c:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/koushikdutta/async/q;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/q;->a:Ljava/nio/channels/Selector;

    iget-object v2, p0, Lcom/koushikdutta/async/q;->b:Ljava/util/PriorityQueue;

    iget-boolean v3, p0, Lcom/koushikdutta/async/q;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/async/n;->a(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V

    .line 539
    return-void
.end method
