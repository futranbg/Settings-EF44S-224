.class final Lcom/a/a/b/a/ai;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/ai;->a(Lcom/a/a/d/a;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/net/InetAddress;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 492
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 493
    return-void

    .line 492
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
