.class public Lcom/koushikdutta/a/b;
.super Ljava/lang/Object;
.source "Ion.java"


# static fields
.field public static final a:Landroid/os/Handler;

.field static q:Lcom/koushikdutta/a/b;


# instance fields
.field b:Lcom/koushikdutta/a/g;

.field c:Lcom/koushikdutta/async/http/a;

.field d:Lcom/koushikdutta/a/c/a;

.field e:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

.field f:Ljava/util/WeakHashMap;

.field g:Lcom/koushikdutta/a/e/i;

.field h:Lcom/koushikdutta/a/e/b;

.field i:Lcom/koushikdutta/a/e/e;

.field j:Ljava/lang/String;

.field k:Landroid/content/Context;

.field l:Ljava/lang/String;

.field m:I

.field n:Lcom/koushikdutta/a/e;

.field o:Lcom/koushikdutta/async/e/a;

.field p:Lcom/koushikdutta/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/koushikdutta/a/b;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/a/g;

    invoke-direct {v0, p0}, Lcom/koushikdutta/a/g;-><init>(Lcom/koushikdutta/a/b;)V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->b:Lcom/koushikdutta/a/g;

    .line 278
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->f:Ljava/util/WeakHashMap;

    .line 424
    new-instance v0, Lcom/koushikdutta/a/e;

    invoke-direct {v0}, Lcom/koushikdutta/a/e;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->n:Lcom/koushikdutta/a/e;

    .line 429
    new-instance v0, Lcom/koushikdutta/async/e/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/e/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->o:Lcom/koushikdutta/async/e/a;

    .line 311
    new-instance v0, Lcom/koushikdutta/async/http/a;

    new-instance v1, Lcom/koushikdutta/async/n;

    invoke-direct {v1}, Lcom/koushikdutta/async/n;-><init>()V

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a;-><init>(Lcom/koushikdutta/async/n;)V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/b;->k:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/koushikdutta/a/b;->j:Ljava/lang/String;

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0xa00000

    invoke-static {v1, v2, v3, v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/a;Ljava/io/File;J)Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/b;->e:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/koushikdutta/a/b;->d()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->b()Lcom/koushikdutta/async/http/z;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/koushikdutta/async/http/z;->a(Z)V

    .line 327
    iget-object v0, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->c()Lcom/koushikdutta/async/http/x;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/koushikdutta/async/http/x;->a(Z)V

    .line 329
    new-instance v0, Lcom/koushikdutta/a/a/a;

    invoke-direct {v0, p0}, Lcom/koushikdutta/a/a/a;-><init>(Lcom/koushikdutta/a/b;)V

    iput-object v0, p0, Lcom/koushikdutta/a/b;->p:Lcom/koushikdutta/a/a/a;

    .line 331
    invoke-virtual {p0}, Lcom/koushikdutta/a/b;->c()Lcom/koushikdutta/a/e;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/a/e/i;

    invoke-direct {v1}, Lcom/koushikdutta/a/e/i;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/a/b;->g:Lcom/koushikdutta/a/e/i;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/a/e;->a(Lcom/koushikdutta/a/v;)Lcom/koushikdutta/a/e;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/a/e/b;

    invoke-direct {v1}, Lcom/koushikdutta/a/e/b;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/a/b;->h:Lcom/koushikdutta/a/e/b;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/a/e;->a(Lcom/koushikdutta/a/v;)Lcom/koushikdutta/a/e;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/a/e/e;

    invoke-direct {v1}, Lcom/koushikdutta/a/e/e;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/a/b;->i:Lcom/koushikdutta/a/e/e;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/a/e;->a(Lcom/koushikdutta/a/v;)Lcom/koushikdutta/a/e;

    .line 335
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    const-string v1, "unable to set up response cache"

    invoke-static {v1, v0}, Lcom/koushikdutta/a/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/a/b/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/koushikdutta/a/b;->a(Landroid/content/Context;)Lcom/koushikdutta/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/koushikdutta/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/koushikdutta/a/b;
    .locals 2
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/koushikdutta/a/b;->q:Lcom/koushikdutta/a/b;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/koushikdutta/a/b;

    const-string v1, "ion"

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/a/b;->q:Lcom/koushikdutta/a/b;

    .line 92
    :cond_0
    sget-object v0, Lcom/koushikdutta/a/b;->q:Lcom/koushikdutta/a/b;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    new-instance v1, Lcom/koushikdutta/a/c/a;

    iget-object v2, p0, Lcom/koushikdutta/a/b;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/koushikdutta/a/b;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/koushikdutta/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/koushikdutta/a/b;->d:Lcom/koushikdutta/a/c/a;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/g;)V

    .line 282
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/koushikdutta/a/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method a(Lcom/koushikdutta/async/b/f;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/koushikdutta/async/b/f;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/koushikdutta/async/b/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/a/b;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/a/f;

    .line 202
    if-nez v0, :cond_2

    .line 203
    new-instance v0, Lcom/koushikdutta/a/f;

    invoke-direct {v0}, Lcom/koushikdutta/a/f;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/koushikdutta/a/b;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/a/b/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/koushikdutta/a/k;

    invoke-direct {v0, p1, p0}, Lcom/koushikdutta/a/k;-><init>(Landroid/content/Context;Lcom/koushikdutta/a/b;)V

    invoke-virtual {v0, p2}, Lcom/koushikdutta/a/k;->a(Ljava/lang/String;)Lcom/koushikdutta/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/koushikdutta/async/http/a;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    return-object v0
.end method

.method public c()Lcom/koushikdutta/a/e;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/koushikdutta/a/b;->n:Lcom/koushikdutta/a/e;

    return-object v0
.end method
