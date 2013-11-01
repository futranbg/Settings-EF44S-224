.class abstract Lcom/koushikdutta/async/http/q;
.super Lcom/koushikdutta/async/at;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/p;


# static fields
.field static final synthetic k:Z


# instance fields
.field private f:Lcom/koushikdutta/async/http/a/a;

.field g:Lcom/koushikdutta/async/ax;

.field h:Lcom/koushikdutta/async/http/c/t;

.field i:Z

.field j:Lcom/koushikdutta/async/an;

.field private l:Lcom/koushikdutta/async/a/a;

.field private m:Lcom/koushikdutta/async/http/m;

.field private n:Lcom/koushikdutta/async/ac;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/koushikdutta/async/http/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/q;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/m;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 91
    new-instance v0, Lcom/koushikdutta/async/http/u;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/u;-><init>(Lcom/koushikdutta/async/http/q;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->l:Lcom/koushikdutta/async/a/a;

    .line 105
    new-instance v0, Lcom/koushikdutta/async/http/v;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/v;-><init>(Lcom/koushikdutta/async/http/q;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->g:Lcom/koushikdutta/async/ax;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/q;->i:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/q;->o:Z

    .line 164
    iput-object p1, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/http/m;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    return-object v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/q;)Lcom/koushikdutta/async/ac;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/q;->o:Z

    if-nez v0, :cond_1

    .line 181
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/q;->o:Z

    .line 179
    sget-boolean v0, Lcom/koushikdutta/async/http/q;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_2
    sget-boolean v0, Lcom/koushikdutta/async/http/q;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/q;->a(Ljava/nio/ByteBuffer;)V

    .line 201
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/a;)V

    .line 228
    return-void
.end method

.method public a(Lcom/koushikdutta/async/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/f;)V

    .line 207
    return-void
.end method

.method a(Lcom/koushikdutta/async/ac;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->j()Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/r;->a(Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->f:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/r;->a(I)V

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->l:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ac;->b(Lcom/koushikdutta/async/a/a;)V

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    new-instance v1, Lcom/koushikdutta/async/http/r;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/r;-><init>(Lcom/koushikdutta/async/http/q;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->h()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/s;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/s;-><init>(Lcom/koushikdutta/async/http/q;)V

    invoke-static {p1, v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/an;[BLcom/koushikdutta/async/a/a;)V

    .line 83
    new-instance v0, Lcom/koushikdutta/async/aw;

    invoke-direct {v0}, Lcom/koushikdutta/async/aw;-><init>()V

    .line 84
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/d;)V

    .line 85
    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->g:Lcom/koushikdutta/async/ax;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/aw;->a(Lcom/koushikdutta/async/ax;)V

    goto/16 :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    const-string v2, "Chunked"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/koushikdutta/async/http/filter/d;

    iget-object v1, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/d;-><init>(Lcom/koushikdutta/async/an;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    goto :goto_1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    iput-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    goto :goto_1
.end method

.method public a(Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/koushikdutta/async/http/q;->l()V

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/ah;)V

    .line 195
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/koushikdutta/async/at;->a(Ljava/lang/Exception;)V

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    new-instance v1, Lcom/koushikdutta/async/http/w;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/w;-><init>(Lcom/koushikdutta/async/http/q;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/d;)V

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/f;)V

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/ac;->a(Lcom/koushikdutta/async/a/a;)V

    .line 156
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/ac;->b(Lcom/koushikdutta/async/a/a;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/q;->i:Z

    .line 158
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/koushikdutta/async/http/q;->l()V

    .line 188
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/an;->a(Ljava/nio/ByteBuffer;)V

    .line 189
    return-void
.end method

.method protected abstract b()V
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public c()Lcom/koushikdutta/async/http/c/t;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->h:Lcom/koushikdutta/async/http/c/t;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->d()V

    .line 223
    return-void
.end method

.method public e()Lcom/koushikdutta/async/http/m;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->m:Lcom/koushikdutta/async/http/m;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->j:Lcom/koushikdutta/async/an;

    invoke-interface {v0}, Lcom/koushikdutta/async/an;->h()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    invoke-interface {v0}, Lcom/koushikdutta/async/ac;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/koushikdutta/async/ac;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/q;->n:Lcom/koushikdutta/async/ac;

    return-object v0
.end method
