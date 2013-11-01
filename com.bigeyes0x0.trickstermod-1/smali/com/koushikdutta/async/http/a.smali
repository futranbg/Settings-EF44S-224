.class public Lcom/koushikdutta/async/http/a;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Lcom/koushikdutta/async/http/x;

.field c:Lcom/koushikdutta/async/http/z;

.field d:Lcom/koushikdutta/async/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/koushikdutta/async/http/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/a;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/http/z;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/z;-><init>(Lcom/koushikdutta/async/http/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/http/z;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/g;)V

    .line 63
    new-instance v0, Lcom/koushikdutta/async/http/x;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/x;-><init>(Lcom/koushikdutta/async/http/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/x;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/g;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/m;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/m;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    return-void
.end method

.method private a(Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->e:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    const-string v0, "Connection error"

    invoke-virtual {p4, v0, p2}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/f;->a(Ljava/lang/Exception;)Z

    move-result v0

    .line 112
    :goto_0
    if-eqz v0, :cond_2

    .line 113
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/p;)V

    .line 114
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->e:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/q;->k()Lcom/koushikdutta/async/ac;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/q;->f()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_1
    const-string v0, "Connection successful"

    invoke-virtual {p4, v0}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/f;->b(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 118
    :cond_2
    if-eqz p3, :cond_3

    .line 120
    new-instance v0, Lcom/koushikdutta/async/ay;

    invoke-direct {v0}, Lcom/koushikdutta/async/ay;-><init>()V

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/q;->a(Lcom/koushikdutta/async/a/d;)V

    .line 121
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/q;->d()V

    .line 123
    :cond_3
    return-void
.end method

.method private a(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Lcom/koushikdutta/async/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v6, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    new-instance v0, Lcom/koushikdutta/async/http/b;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/b;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(Lcom/koushikdutta/async/http/m;)J
    .locals 2
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/m;->k()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    return-void
.end method

.method private b(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Lcom/koushikdutta/async/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_0
    const/16 v0, 0xf

    if-le p2, v0, :cond_2

    .line 148
    new-instance v2, Ljava/lang/Exception;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/f;Ljava/lang/Exception;Lcom/koushikdutta/async/http/q;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v9

    .line 152
    new-instance v2, Lcom/koushikdutta/async/http/k;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/k;-><init>()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/koushikdutta/async/http/m;->f:J

    .line 154
    iput-object p1, v2, Lcom/koushikdutta/async/http/k;->b:Lcom/koushikdutta/async/http/m;

    .line 156
    const-string v0, "Executing request."

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/m;->k()I

    move-result v0

    if-lez v0, :cond_3

    .line 170
    new-instance v0, Lcom/koushikdutta/async/http/c;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/c;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/k;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)V

    iput-object v0, p3, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    iget-object v1, p3, Lcom/koushikdutta/async/http/f;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/koushikdutta/async/http/a;->b(Lcom/koushikdutta/async/http/m;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p3, Lcom/koushikdutta/async/http/f;->b:Ljava/lang/Object;

    .line 186
    :cond_3
    new-instance v3, Lcom/koushikdutta/async/http/d;

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move-object v7, p1

    move-object v8, p4

    move v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/koushikdutta/async/http/d;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/k;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;Ljava/net/URI;I)V

    iput-object v3, v2, Lcom/koushikdutta/async/http/k;->c:Lcom/koushikdutta/async/a/b;

    .line 340
    iget-object v1, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/g;

    .line 342
    invoke-interface {v0, v2}, Lcom/koushikdutta/async/http/g;->a(Lcom/koushikdutta/async/http/h;)Lcom/koushikdutta/async/b/a;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    iput-object v0, v2, Lcom/koushikdutta/async/http/k;->d:Lcom/koushikdutta/async/b/a;

    .line 345
    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/f;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    .line 346
    monitor-exit v1

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    sget-boolean v0, Lcom/koushikdutta/async/http/a;->e:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)Lcom/koushikdutta/async/b/f;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    new-instance v1, Lcom/koushikdutta/async/http/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/koushikdutta/async/http/f;-><init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/b;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    .line 77
    return-object v1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/http/g;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public b()Lcom/koushikdutta/async/http/z;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/http/z;

    return-object v0
.end method

.method public c()Lcom/koushikdutta/async/http/x;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/x;

    return-object v0
.end method

.method public d()Lcom/koushikdutta/async/n;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/n;

    return-object v0
.end method
