.class public final Lcom/a/a/w;
.super Lcom/a/a/t;
.source "JsonObject.java"


# instance fields
.field private final a:Lcom/a/a/b/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/a/a/t;-><init>()V

    .line 33
    new-instance v0, Lcom/a/a/b/v;

    invoke-direct {v0}, Lcom/a/a/b/v;-><init>()V

    iput-object v0, p0, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/a/a/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/a/a/v;->a:Lcom/a/a/v;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/v;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/a/a/w;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/a/a/w;

    iget-object v0, p1, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    iget-object v1, p0, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    invoke-virtual {v0, v1}, Lcom/a/a/b/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    invoke-virtual {v0}, Lcom/a/a/b/v;->hashCode()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/Set;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/a/a/w;->a:Lcom/a/a/b/v;

    invoke-virtual {v0}, Lcom/a/a/b/v;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
