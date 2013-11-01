.class Lcom/a/a/b/z;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# instance fields
.field final synthetic a:Lcom/a/a/b/v;


# direct methods
.method constructor <init>(Lcom/a/a/b/v;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    invoke-virtual {v0}, Lcom/a/a/b/v;->clear()V

    .line 615
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    invoke-virtual {v0, p1}, Lcom/a/a/b/v;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 598
    new-instance v0, Lcom/a/a/b/aa;

    invoke-direct {v0, p0}, Lcom/a/a/b/aa;-><init>(Lcom/a/a/b/z;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    invoke-virtual {v0, p1}, Lcom/a/a/b/v;->b(Ljava/lang/Object;)Lcom/a/a/b/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    iget v0, v0, Lcom/a/a/b/v;->c:I

    return v0
.end method
