.class public Lcom/koushikdutta/async/at;
.super Lcom/koushikdutta/async/al;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;
.implements Lcom/koushikdutta/async/ak;
.implements Lcom/koushikdutta/async/ao;
.implements Lcom/koushikdutta/async/f/b;


# instance fields
.field c:Lcom/koushikdutta/async/ak;

.field d:Lcom/koushikdutta/async/ap;

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    new-instance v1, Lcom/koushikdutta/async/au;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/au;-><init>(Lcom/koushikdutta/async/at;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ak;->b(Lcom/koushikdutta/async/a/a;)V

    .line 27
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget v0, p0, Lcom/koushikdutta/async/at;->e:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/at;->e:I

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 51
    if-eqz p2, :cond_1

    .line 52
    iget v0, p0, Lcom/koushikdutta/async/at;->e:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/at;->e:I

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/at;->d:Lcom/koushikdutta/async/ap;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/at;->d:Lcom/koushikdutta/async/ap;

    iget v1, p0, Lcom/koushikdutta/async/at;->e:I

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ap;->a(I)V

    .line 57
    :cond_2
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/at;->d:Lcom/koushikdutta/async/ap;

    .line 42
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->d()V

    .line 87
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->i()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/at;->c:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method
