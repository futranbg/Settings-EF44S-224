.class Lcom/a/a/o;
.super Lcom/a/a/ad;
.source "Gson.java"


# instance fields
.field final synthetic a:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/a/a/o;->a:Lcom/a/a/j;

    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Lcom/a/a/d/a;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/o;->a(Lcom/a/a/d/a;Ljava/lang/Number;)V

    return-void
.end method
