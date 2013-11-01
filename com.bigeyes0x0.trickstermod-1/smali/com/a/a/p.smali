.class Lcom/a/a/p;
.super Lcom/a/a/ad;
.source "Gson.java"


# instance fields
.field private a:Lcom/a/a/ad;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 875
    iget-object v0, p0, Lcom/a/a/p;->a:Lcom/a/a/ad;

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 878
    :cond_0
    iput-object p1, p0, Lcom/a/a/p;->a:Lcom/a/a/ad;

    .line 879
    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lcom/a/a/p;->a:Lcom/a/a/ad;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/a/a/p;->a:Lcom/a/a/ad;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 893
    return-void
.end method
