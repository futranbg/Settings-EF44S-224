.class final Lcom/a/a/b/a/d;
.super Lcom/a/a/ad;
.source "CollectionTypeAdapterFactory.java"


# instance fields
.field private final a:Lcom/a/a/ad;

.field private final b:Lcom/a/a/b/ad;


# direct methods
.method public constructor <init>(Lcom/a/a/j;Ljava/lang/reflect/Type;Lcom/a/a/ad;Lcom/a/a/b/ad;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 67
    new-instance v0, Lcom/a/a/b/a/u;

    invoke-direct {v0, p1, p3, p2}, Lcom/a/a/b/a/u;-><init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/d;->a:Lcom/a/a/ad;

    .line 69
    iput-object p4, p0, Lcom/a/a/b/a/d;->b:Lcom/a/a/b/ad;

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/d;->a(Lcom/a/a/d/a;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()Lcom/a/a/d/a;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/a/a/b/a/d;->a:Lcom/a/a/ad;

    invoke-virtual {v2, p1, v1}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()Lcom/a/a/d/a;

    goto :goto_0
.end method
