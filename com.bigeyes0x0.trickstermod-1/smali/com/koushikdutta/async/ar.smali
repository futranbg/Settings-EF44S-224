.class public Lcom/koushikdutta/async/ar;
.super Lcom/koushikdutta/async/al;
.source "FileDataEmitter.java"


# instance fields
.field c:Lcom/koushikdutta/async/n;

.field d:Ljava/io/File;

.field e:Lcom/koushikdutta/async/a/d;

.field f:Z

.field g:Lcom/koushikdutta/async/ah;

.field h:Ljava/nio/channels/FileChannel;

.field i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/n;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/al;-><init>()V

    .line 64
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ar;->g:Lcom/koushikdutta/async/ah;

    .line 66
    new-instance v0, Lcom/koushikdutta/async/as;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/as;-><init>(Lcom/koushikdutta/async/ar;)V

    iput-object v0, p0, Lcom/koushikdutta/async/ar;->i:Ljava/lang/Runnable;

    .line 18
    iput-object p1, p0, Lcom/koushikdutta/async/ar;->c:Lcom/koushikdutta/async/n;

    .line 19
    iput-object p2, p0, Lcom/koushikdutta/async/ar;->d:Ljava/io/File;

    .line 20
    invoke-virtual {p1}, Lcom/koushikdutta/async/n;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/ar;->f:Z

    .line 21
    iget-boolean v0, p0, Lcom/koushikdutta/async/ar;->f:Z

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/koushikdutta/async/ar;->a()V

    .line 23
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/ar;->c:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/ar;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/async/ar;->e:Lcom/koushikdutta/async/a/d;

    .line 29
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/ar;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/al;->a(Ljava/lang/Exception;)V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception p1

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/ar;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/ar;->e:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/koushikdutta/async/ar;->f:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/ar;->c:Lcom/koushikdutta/async/n;

    return-object v0
.end method
