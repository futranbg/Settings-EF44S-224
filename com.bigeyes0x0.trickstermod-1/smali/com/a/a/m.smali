.class Lcom/a/a/m;
.super Lcom/a/a/ad;
.source "Gson.java"


# instance fields
.field final synthetic a:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/a/a/m;->a:Lcom/a/a/j;

    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Number;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 264
    iget-object v2, p0, Lcom/a/a/m;->a:Lcom/a/a/j;

    invoke-static {v2, v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/j;D)V

    .line 265
    invoke-virtual {p1, p2}, Lcom/a/a/d/a;->a(Ljava/lang/Number;)Lcom/a/a/d/a;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/m;->a(Lcom/a/a/d/a;Ljava/lang/Number;)V

    return-void
.end method
