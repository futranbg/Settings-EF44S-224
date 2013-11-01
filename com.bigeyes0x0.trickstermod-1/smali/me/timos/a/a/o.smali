.class public Lme/timos/a/a/o;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field a:Ljava/util/Map;

.field b:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/timos/a/a/o;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/timos/a/a/o;->b:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lme/timos/a/a/r;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lme/timos/a/a/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/timos/a/a/r;

    return-object v0
.end method

.method a(Lme/timos/a/a/p;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lme/timos/a/a/o;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lme/timos/a/a/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method a(Lme/timos/a/a/r;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lme/timos/a/a/o;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lme/timos/a/a/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public b(Ljava/lang/String;)Lme/timos/a/a/p;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lme/timos/a/a/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/timos/a/a/p;

    return-object v0
.end method

.method c(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lme/timos/a/a/o;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    return-object v1

    .line 73
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/timos/a/a/p;

    .line 74
    invoke-virtual {v0}, Lme/timos/a/a/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lme/timos/a/a/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
