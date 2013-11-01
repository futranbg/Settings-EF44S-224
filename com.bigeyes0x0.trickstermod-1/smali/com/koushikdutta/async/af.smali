.class public Lcom/koushikdutta/async/af;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/an;


# static fields
.field static final synthetic g:Z


# instance fields
.field a:Lcom/koushikdutta/async/an;

.field b:Lcom/koushikdutta/async/ah;

.field c:Lcom/koushikdutta/async/a/f;

.field d:I

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/af;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/an;)V
    .locals 2
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/af;->d:I

    .line 11
    iput-object p1, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    new-instance v1, Lcom/koushikdutta/async/ag;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/ag;-><init>(Lcom/koushikdutta/async/af;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/f;)V

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/af;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/af;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    iget-object v1, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/koushikdutta/async/af;->f:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->a()V

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/af;->e:Z

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->d()V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/af;->c:Lcom/koushikdutta/async/a/f;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/af;->c:Lcom/koushikdutta/async/a/f;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/f;->a()V

    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/af;->f:Z

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    sget-boolean v0, Lcom/koushikdutta/async/af;->g:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    iput p1, p0, Lcom/koushikdutta/async/af;->d:I

    .line 108
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/a;)V

    .line 138
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/koushikdutta/async/af;->c:Lcom/koushikdutta/async/a/f;

    .line 89
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/af;->a(Lcom/koushikdutta/async/ah;Z)V

    .line 69
    return-void
.end method

.method protected a(Lcom/koushikdutta/async/ah;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/af;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    .line 79
    :cond_1
    if-lez v0, :cond_2

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;I)V

    .line 83
    :cond_2
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/koushikdutta/async/af;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/af;->e()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x1

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/an;->a(Ljava/nio/ByteBuffer;)V

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    iget-object v2, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    iget-object v1, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/af;->b:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/af;->e:Z

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->d()V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/koushikdutta/async/af;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/koushikdutta/async/af;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/af;->a:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
