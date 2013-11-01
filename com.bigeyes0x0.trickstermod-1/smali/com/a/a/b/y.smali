.class Lcom/a/a/b/y;
.super Lcom/a/a/b/ab;
.source "LinkedTreeMap.java"


# instance fields
.field final synthetic a:Lcom/a/a/b/x;


# direct methods
.method constructor <init>(Lcom/a/a/b/x;)V
    .locals 2
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/a/a/b/y;->a:Lcom/a/a/b/x;

    iget-object v0, p1, Lcom/a/a/b/x;->a:Lcom/a/a/b/v;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/ab;-><init>(Lcom/a/a/b/v;Lcom/a/a/b/w;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/a/a/b/y;->b()Lcom/a/a/b/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/a/a/b/y;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
