.class final Lcom/a/a/b/a/ah;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/ah;->a(Lcom/a/a/d/a;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/util/BitSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p2, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()Lcom/a/a/d/a;

    move v0, v1

    .line 133
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 134
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 135
    :goto_2
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 134
    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()Lcom/a/a/d/a;

    goto :goto_0
.end method
