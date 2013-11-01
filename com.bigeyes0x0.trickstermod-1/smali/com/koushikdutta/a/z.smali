.class Lcom/koushikdutta/a/z;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/an;


# instance fields
.field a:I

.field final synthetic b:Lcom/koushikdutta/async/an;

.field final synthetic c:I

.field final synthetic d:Lcom/koushikdutta/a/y;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/y;Lcom/koushikdutta/async/an;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/a/z;->d:Lcom/koushikdutta/a/y;

    iput-object p2, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    iput p3, p0, Lcom/koushikdutta/a/z;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->a()V

    .line 71
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/a;)V

    .line 76
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/f;)V

    .line 51
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    .line 43
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 44
    iget v1, p0, Lcom/koushikdutta/a/z;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/a/z;->a:I

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/a/z;->d:Lcom/koushikdutta/a/y;

    iget-object v0, v0, Lcom/koushikdutta/a/y;->b:Lcom/koushikdutta/a/x;

    iget v1, p0, Lcom/koushikdutta/a/z;->a:I

    iget v2, p0, Lcom/koushikdutta/a/z;->c:I

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/a/x;->a(II)V

    .line 46
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/an;->a(Ljava/nio/ByteBuffer;)V

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 35
    iget v1, p0, Lcom/koushikdutta/a/z;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/a/z;->a:I

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/a/z;->d:Lcom/koushikdutta/a/y;

    iget-object v0, v0, Lcom/koushikdutta/a/y;->b:Lcom/koushikdutta/a/x;

    iget v1, p0, Lcom/koushikdutta/a/z;->a:I

    iget v2, p0, Lcom/koushikdutta/a/z;->c:I

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/a/x;->a(II)V

    .line 37
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->d()V

    .line 66
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/a/z;->b:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->h()Z

    move-result v0

    return v0
.end method
