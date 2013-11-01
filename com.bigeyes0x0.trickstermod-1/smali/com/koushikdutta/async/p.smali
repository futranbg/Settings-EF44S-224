.class Lcom/koushikdutta/async/p;
.super Lcom/koushikdutta/async/b/k;
.source "AsyncServer.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/n;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/koushikdutta/async/p;->a:Lcom/koushikdutta/async/n;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/p;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/p;->b(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method
