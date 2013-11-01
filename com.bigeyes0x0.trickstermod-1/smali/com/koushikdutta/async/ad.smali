.class public Lcom/koushikdutta/async/ad;
.super Ljava/lang/Object;
.source "BufferedDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;
.implements Lcom/koushikdutta/async/ak;


# instance fields
.field a:Lcom/koushikdutta/async/ak;

.field b:Z

.field c:Ljava/lang/Exception;

.field d:Lcom/koushikdutta/async/ah;

.field e:Lcom/koushikdutta/async/a/d;

.field f:Lcom/koushikdutta/async/a/a;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/ad;->b:Z

    .line 39
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    .line 9
    iput-object p1, p0, Lcom/koushikdutta/async/ad;->a:Lcom/koushikdutta/async/ak;

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->a:Lcom/koushikdutta/async/ak;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->a:Lcom/koushikdutta/async/ak;

    new-instance v1, Lcom/koushikdutta/async/ae;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/ae;-><init>(Lcom/koushikdutta/async/ad;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ak;->b(Lcom/koushikdutta/async/a/a;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->e:Lcom/koushikdutta/async/a/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/ad;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->e:Lcom/koushikdutta/async/a/d;

    iget-object v1, p0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/a/d;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/ad;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->f:Lcom/koushikdutta/async/a/a;

    iget-object v1, p0, Lcom/koushikdutta/async/ad;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 37
    :cond_1
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/koushikdutta/async/ad;->e:Lcom/koushikdutta/async/a/d;

    .line 45
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->d:Lcom/koushikdutta/async/ah;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;)V

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/ad;->a()V

    .line 62
    return-void
.end method

.method public b(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/koushikdutta/async/ad;->f:Lcom/koushikdutta/async/a/a;

    .line 88
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->a:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->d()V

    .line 26
    return-void
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->e:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->f:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/koushikdutta/async/ad;->g:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/ad;->a:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method
