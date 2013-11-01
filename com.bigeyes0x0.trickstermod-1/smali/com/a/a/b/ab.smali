.class abstract Lcom/a/a/b/ab;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:Lcom/a/a/b/ac;

.field c:Lcom/a/a/b/ac;

.field d:I

.field final synthetic e:Lcom/a/a/b/v;


# direct methods
.method private constructor <init>(Lcom/a/a/b/v;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget-object v0, v0, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    iget-object v0, v0, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    iput-object v0, p0, Lcom/a/a/b/ab;->b:Lcom/a/a/b/ac;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/ab;->c:Lcom/a/a/b/ac;

    .line 529
    iget-object v0, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget v0, v0, Lcom/a/a/b/v;->d:I

    iput v0, p0, Lcom/a/a/b/ab;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/v;Lcom/a/a/b/w;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/a/a/b/ab;-><init>(Lcom/a/a/b/v;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/a/a/b/ac;
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/a/a/b/ab;->b:Lcom/a/a/b/ac;

    .line 537
    iget-object v1, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget-object v1, v1, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget v1, v1, Lcom/a/a/b/v;->d:I

    iget v2, p0, Lcom/a/a/b/ab;->d:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/a/a/b/ac;->d:Lcom/a/a/b/ac;

    iput-object v1, p0, Lcom/a/a/b/ab;->b:Lcom/a/a/b/ac;

    .line 544
    iput-object v0, p0, Lcom/a/a/b/ab;->c:Lcom/a/a/b/ac;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/a/a/b/ab;->b:Lcom/a/a/b/ac;

    iget-object v1, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget-object v1, v1, Lcom/a/a/b/v;->e:Lcom/a/a/b/ac;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/a/a/b/ab;->c:Lcom/a/a/b/ac;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget-object v1, p0, Lcom/a/a/b/ab;->c:Lcom/a/a/b/ac;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/v;->a(Lcom/a/a/b/ac;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/ab;->c:Lcom/a/a/b/ac;

    .line 553
    iget-object v0, p0, Lcom/a/a/b/ab;->e:Lcom/a/a/b/v;

    iget v0, v0, Lcom/a/a/b/v;->d:I

    iput v0, p0, Lcom/a/a/b/ab;->d:I

    .line 554
    return-void
.end method
