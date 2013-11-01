.class Lcom/koushikdutta/async/d/c;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/d/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v0, v0, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/d/a;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/d/d;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/d/d;-><init>(Lcom/koushikdutta/async/d/c;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->b(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v0, v0, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget v0, v0, Lcom/koushikdutta/async/d/a;->e:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v2, v2, Lcom/koushikdutta/async/d/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/d/a;->a(Lcom/koushikdutta/async/d/a;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/d/a;->a(Lcom/koushikdutta/async/d/a;Ljava/lang/Exception;)V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    mul-int/lit8 v3, v2, 0x2

    iput v3, v1, Lcom/koushikdutta/async/d/a;->e:I

    .line 98
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v1, v1, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/d/a;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/d/e;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/d/e;-><init>(Lcom/koushikdutta/async/d/c;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->b(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v0, v0, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/d/a;->i()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
