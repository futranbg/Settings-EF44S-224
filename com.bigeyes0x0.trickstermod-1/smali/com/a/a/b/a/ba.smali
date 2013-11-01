.class final Lcom/a/a/b/a/ba;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Number;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Lcom/a/a/d/a;->a(Ljava/lang/Number;)Lcom/a/a/d/a;

    .line 284
    return-void
.end method

.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/ba;->a(Lcom/a/a/d/a;Ljava/lang/Number;)V

    return-void
.end method
