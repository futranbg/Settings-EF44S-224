.class public final Lcom/koushikdutta/async/http/c/e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/b;

.field private final b:Lcom/koushikdutta/async/http/c/g;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    .line 741
    invoke-static {p2}, Lcom/koushikdutta/async/http/c/g;->d(Lcom/koushikdutta/async/http/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/koushikdutta/async/http/c/e;->c:[Z

    .line 742
    return-void

    .line 741
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/c/b;->e(Lcom/koushikdutta/async/http/c/b;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/c/e;-><init>(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/g;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/g;
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/e;)[Z
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .parameter

    .prologue
    .line 781
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    monitor-enter v2

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 785
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->d(Lcom/koushikdutta/async/http/c/g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/c/g;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 791
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 802
    :goto_0
    :try_start_3
    new-instance v0, Lcom/koushikdutta/async/http/c/f;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/koushikdutta/async/http/c/f;-><init>(Lcom/koushikdutta/async/http/c/e;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/c/c;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 792
    :catch_0
    move-exception v0

    .line 794
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->f(Lcom/koushikdutta/async/http/c/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    .line 800
    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    .line 799
    :try_start_5
    invoke-static {}, Lcom/koushikdutta/async/http/c/b;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 822
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/c/e;->d:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/e;Z)V

    .line 824
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/e;->b:Lcom/koushikdutta/async/http/c/g;

    invoke-static {v1}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/b;->c(Ljava/lang/String;)Z

    .line 828
    :goto_0
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/c/e;->e:Z

    .line 829
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {v0, p0, v2}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/e;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/e;->a:Lcom/koushikdutta/async/http/c/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/e;Z)V

    .line 837
    return-void
.end method
