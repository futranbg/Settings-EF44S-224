.class final Lcom/a/a/b/a/aa;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/aa;->a(Lcom/a/a/d/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-virtual {p1, p2}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 363
    return-void
.end method
