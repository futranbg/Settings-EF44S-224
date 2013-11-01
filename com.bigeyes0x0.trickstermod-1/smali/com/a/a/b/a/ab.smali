.class final Lcom/a/a/b/a/ab;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/ab;->a(Lcom/a/a/d/a;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/math/BigDecimal;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-virtual {p1, p2}, Lcom/a/a/d/a;->a(Ljava/lang/Number;)Lcom/a/a/d/a;

    .line 381
    return-void
.end method
