.class final Lcom/a/a/b/a/ac;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/ac;->a(Lcom/a/a/d/a;Ljava/math/BigInteger;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/math/BigInteger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    invoke-virtual {p1, p2}, Lcom/a/a/d/a;->a(Ljava/lang/Number;)Lcom/a/a/d/a;

    .line 399
    return-void
.end method
