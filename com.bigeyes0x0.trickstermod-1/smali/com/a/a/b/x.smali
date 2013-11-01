.class Lcom/a/a/b/x;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# instance fields
.field final synthetic a:Lcom/a/a/b/v;


# direct methods
.method constructor <init>(Lcom/a/a/b/v;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    invoke-virtual {v0}, Lcom/a/a/b/v;->clear()V

    .line 589
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 571
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/a/a/b/v;->a(Ljava/util/Map$Entry;)Lcom/a/a/b/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/a/a/b/y;

    invoke-direct {v0, p0}, Lcom/a/a/b/y;-><init>(Lcom/a/a/b/x;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 575
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lcom/a/a/b/v;->a(Ljava/util/Map$Entry;)Lcom/a/a/b/ac;

    move-result-object v2

    .line 580
    if-eqz v2, :cond_0

    .line 583
    iget-object v0, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    invoke-virtual {v0, v2, v1}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Z)V

    move v0, v1

    .line 584
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    iget v0, v0, Lcom/a/a/b/v;->c:I

    return v0
.end method
