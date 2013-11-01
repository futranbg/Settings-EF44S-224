.class public Lcom/koushikdutta/async/d/a;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/ak;


# instance fields
.field a:Lcom/koushikdutta/async/n;

.field b:Ljava/io/InputStream;

.field c:Lcom/koushikdutta/async/a/d;

.field d:Z

.field e:I

.field f:Lcom/koushikdutta/async/ah;

.field g:Ljava/lang/Runnable;

.field h:Lcom/koushikdutta/async/a/a;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/n;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/d/a;->e:I

    .line 74
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    .line 75
    new-instance v0, Lcom/koushikdutta/async/d/c;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/d/c;-><init>(Lcom/koushikdutta/async/d/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/d/a;->g:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/d/a;->a:Lcom/koushikdutta/async/n;

    .line 24
    iput-object p2, p0, Lcom/koushikdutta/async/d/a;->b:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/async/d/a;->a()V

    .line 26
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/d/a;->a:Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Lcom/koushikdutta/async/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/d/a;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/d/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/d/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/async/d/a;->j()Lcom/koushikdutta/async/n;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/d/b;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/d/b;-><init>(Lcom/koushikdutta/async/d/a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/d/a;->c:Lcom/koushikdutta/async/a/d;

    .line 32
    return-void
.end method

.method public b(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/d/a;->h:Lcom/koushikdutta/async/a/a;

    .line 128
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/d/a;->a(Ljava/lang/Exception;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/d/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/d/a;->c:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/d/a;->h:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/koushikdutta/async/d/a;->d:Z

    return v0
.end method

.method public j()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/d/a;->a:Lcom/koushikdutta/async/n;

    return-object v0
.end method
