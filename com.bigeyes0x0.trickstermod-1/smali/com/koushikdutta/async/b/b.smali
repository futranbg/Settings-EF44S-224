.class public Lcom/koushikdutta/async/b/b;
.super Lcom/koushikdutta/async/b/h;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/a/c;
.implements Lcom/koushikdutta/async/b/a;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/koushikdutta/async/a/a;

.field b:Ljava/lang/Runnable;

.field c:Ljava/util/LinkedList;

.field d:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/a/a;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    .line 45
    iput-object p2, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/b/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/koushikdutta/async/b/b;->j:Z

    return p1
.end method

.method private b(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/a/c;
    .locals 1
    .parameter

    .prologue
    .line 80
    instance-of v0, p1, Lcom/koushikdutta/async/b/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/koushikdutta/async/b/d;

    .line 82
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/b/d;->a(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/d;

    .line 84
    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/b/b;->h()V

    return-void
.end method

.method private g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/koushikdutta/async/b/c;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/b/c;-><init>(Lcom/koushikdutta/async/b/b;)V

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->i:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/a/c;

    .line 116
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/b/b;->i:Z

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/koushikdutta/async/b/b;->j:Z

    .line 118
    invoke-direct {p0}, Lcom/koushikdutta/async/b/b;->g()Lcom/koushikdutta/async/a/a;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/a/c;->a(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iput-boolean v2, p0, Lcom/koushikdutta/async/b/b;->i:Z

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iput-boolean v2, p0, Lcom/koushikdutta/async/b/b;->i:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/koushikdutta/async/b/b;->i:Z

    throw v0

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->j:Z

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/b/b;->b(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    .line 17
    return-void
.end method

.method public a(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/a/a;)V

    .line 160
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->c()Lcom/koushikdutta/async/b/b;

    .line 161
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/koushikdutta/async/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/koushikdutta/async/b/b;
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->d:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/b/b;->d:Z

    .line 153
    invoke-direct {p0}, Lcom/koushikdutta/async/b/b;->h()V

    .line 154
    return-object p0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->c()Lcom/koushikdutta/async/b/b;

    .line 166
    return-void
.end method
