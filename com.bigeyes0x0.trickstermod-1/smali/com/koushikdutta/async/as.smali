.class Lcom/koushikdutta/async/as;
.super Ljava/lang/Object;
.source "FileDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ar;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v0, v0, Lcom/koushikdutta/async/ar;->h:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v2, v2, Lcom/koushikdutta/async/ar;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/ar;->h:Ljava/nio/channels/FileChannel;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v0, v0, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v1, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v1, v1, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v0, v0, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ah;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v2, v2, Lcom/koushikdutta/async/ar;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ar;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ar;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 84
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    iget-object v1, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v1, v1, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v1, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v1, v1, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    iget-object v0, v0, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/as;->a:Lcom/koushikdutta/async/ar;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ar;->i()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method
