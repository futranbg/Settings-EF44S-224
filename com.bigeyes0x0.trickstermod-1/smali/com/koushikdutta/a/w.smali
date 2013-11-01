.class public Lcom/koushikdutta/a/w;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field a:Lcom/koushikdutta/async/ak;

.field b:I

.field c:I

.field d:Lcom/koushikdutta/async/http/c/p;

.field e:Lcom/koushikdutta/async/http/m;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ak;IILcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/koushikdutta/a/w;->b:I

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/a/w;->a:Lcom/koushikdutta/async/ak;

    .line 24
    iput p3, p0, Lcom/koushikdutta/a/w;->c:I

    .line 25
    iput-object p4, p0, Lcom/koushikdutta/a/w;->d:Lcom/koushikdutta/async/http/c/p;

    .line 26
    iput-object p5, p0, Lcom/koushikdutta/a/w;->e:Lcom/koushikdutta/async/http/m;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/ak;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/koushikdutta/a/w;->a:Lcom/koushikdutta/async/ak;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/koushikdutta/a/w;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/koushikdutta/a/w;->c:I

    return v0
.end method

.method public d()Lcom/koushikdutta/async/http/c/p;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/a/w;->d:Lcom/koushikdutta/async/http/c/p;

    return-object v0
.end method

.method public e()Lcom/koushikdutta/async/http/m;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/koushikdutta/a/w;->e:Lcom/koushikdutta/async/http/m;

    return-object v0
.end method
