.class Lcom/a/a/b/aa;
.super Lcom/a/a/b/ab;
.source "LinkedTreeMap.java"


# instance fields
.field final synthetic a:Lcom/a/a/b/z;


# direct methods
.method constructor <init>(Lcom/a/a/b/z;)V
    .locals 2
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/a/a/b/aa;->a:Lcom/a/a/b/z;

    iget-object v0, p1, Lcom/a/a/b/z;->a:Lcom/a/a/b/v;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/ab;-><init>(Lcom/a/a/b/v;Lcom/a/a/b/w;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/a/a/b/aa;->b()Lcom/a/a/b/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b/ac;->f:Ljava/lang/Object;

    return-object v0
.end method
