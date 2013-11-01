.class final Lcom/a/a/b/a/z;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Character;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 339
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 340
    return-void

    .line 339
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/z;->a(Lcom/a/a/d/a;Ljava/lang/Character;)V

    return-void
.end method
