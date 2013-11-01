.class public final Lcom/a/a/b/a/c;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/a/a/ae;


# instance fields
.field private final a:Lcom/a/a/b/f;


# direct methods
.method public constructor <init>(Lcom/a/a/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/a/a/b/a/c;->a:Lcom/a/a/b/f;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/j;Lcom/a/a/c/a;)Lcom/a/a/ad;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/a/a/b/a/c;->a:Lcom/a/a/b/f;

    invoke-virtual {v0, p2}, Lcom/a/a/b/f;->a(Lcom/a/a/c/a;)Lcom/a/a/b/ad;

    move-result-object v3

    .line 56
    new-instance v0, Lcom/a/a/b/a/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/a/b/a/d;-><init>(Lcom/a/a/j;Ljava/lang/reflect/Type;Lcom/a/a/ad;Lcom/a/a/b/ad;)V

    goto :goto_0
.end method
