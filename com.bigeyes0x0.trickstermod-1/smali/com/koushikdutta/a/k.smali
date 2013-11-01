.class Lcom/koushikdutta/a/k;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/a/b/c;
.implements Lcom/koushikdutta/a/b/d;
.implements Lcom/koushikdutta/a/b/e;
.implements Lcom/koushikdutta/a/b/f;


# static fields
.field static final synthetic y:Z


# instance fields
.field a:Lcom/koushikdutta/a/b;

.field b:Ljava/lang/ref/WeakReference;

.field c:Landroid/os/Handler;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/koushikdutta/async/http/c/p;

.field g:Lcom/koushikdutta/async/http/ak;

.field h:I

.field i:Lcom/koushikdutta/async/http/a/a;

.field j:Z

.field k:Ljava/lang/ref/WeakReference;

.field l:Ljava/lang/ref/WeakReference;

.field m:Lcom/koushikdutta/a/x;

.field n:Lcom/koushikdutta/a/x;

.field o:Ljava/lang/String;

.field p:I

.field q:Ljava/util/ArrayList;

.field r:Ljava/lang/String;

.field s:I

.field t:Lcom/koushikdutta/a/x;

.field u:Landroid/widget/ProgressBar;

.field v:Landroid/app/ProgressDialog;

.field w:Lcom/koushikdutta/a/x;

.field x:Lcom/koushikdutta/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/koushikdutta/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/k;->y:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/koushikdutta/a/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/koushikdutta/a/b;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    .line 73
    const-string v0, "GET"

    iput-object v0, p0, Lcom/koushikdutta/a/k;->d:Ljava/lang/String;

    .line 134
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/a/k;->h:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/a/k;->j:Z

    .line 77
    iput-object p2, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/a/k;->b:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method

.method private a(Ljava/net/URI;Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/async/http/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    invoke-virtual {v0}, Lcom/koushikdutta/a/b;->c()Lcom/koushikdutta/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/a/e;->a()Lcom/koushikdutta/a/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/a/k;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/a/k;->f:Lcom/koushikdutta/async/http/c/p;

    invoke-interface {v0, p1, v1, v2}, Lcom/koushikdutta/a/e/a;->a(Ljava/net/URI;Ljava/lang/String;Lcom/koushikdutta/async/http/c/p;)Lcom/koushikdutta/async/http/m;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lcom/koushikdutta/a/k;->j:Z

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->a(Z)Lcom/koushikdutta/async/http/m;

    .line 259
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/http/a/a;)V

    .line 260
    iget-object v1, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    iget-object v1, v1, Lcom/koushikdutta/a/b;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    iget v2, v2, Lcom/koushikdutta/a/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;I)V

    .line 261
    iget-object v1, p0, Lcom/koushikdutta/a/k;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/koushikdutta/a/k;->o:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/a/k;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/m;->b(Ljava/lang/String;I)V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/a/k;->r:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/a/k;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/m;->a(Ljava/lang/String;I)V

    .line 264
    iget v1, p0, Lcom/koushikdutta/a/k;->h:I

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->a(I)Lcom/koushikdutta/async/http/m;

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->a(Landroid/os/Handler;)Lcom/koushikdutta/async/http/m;

    .line 266
    const-string v1, "preparing request"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/a/k;Lcom/koushikdutta/async/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/async/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/koushikdutta/a/q;)V
    .locals 4
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/koushikdutta/a/k;->d()Ljava/net/URI;

    move-result-object v1

    .line 272
    if-nez v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/a/q;->a(Ljava/lang/Exception;)Z

    .line 320
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/k;->i:Lcom/koushikdutta/async/http/a/a;

    .line 278
    iget-object v2, p0, Lcom/koushikdutta/a/k;->w:Lcom/koushikdutta/a/x;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/a/k;->u:Landroid/widget/ProgressBar;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/a/k;->t:Lcom/koushikdutta/a/x;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/a/k;->v:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    .line 279
    :cond_1
    new-instance v0, Lcom/koushikdutta/a/y;

    iget-object v2, p0, Lcom/koushikdutta/a/k;->i:Lcom/koushikdutta/async/http/a/a;

    new-instance v3, Lcom/koushikdutta/a/m;

    invoke-direct {v3, p0, p1}, Lcom/koushikdutta/a/m;-><init>(Lcom/koushikdutta/a/k;Lcom/koushikdutta/a/q;)V

    invoke-direct {v0, v2, v3}, Lcom/koushikdutta/a/y;-><init>(Lcom/koushikdutta/async/http/a/a;Lcom/koushikdutta/a/x;)V

    .line 309
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/a/k;->a(Ljava/net/URI;Lcom/koushikdutta/async/http/a/a;)Lcom/koushikdutta/async/http/m;

    move-result-object v1

    .line 310
    invoke-static {p1, v1}, Lcom/koushikdutta/a/q;->a(Lcom/koushikdutta/a/q;Lcom/koushikdutta/async/http/m;)Lcom/koushikdutta/async/http/m;

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    iget-object v0, v0, Lcom/koushikdutta/a/b;->n:Lcom/koushikdutta/a/e;

    iget-object v0, v0, Lcom/koushikdutta/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/a/v;

    .line 313
    iget-object v3, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    invoke-interface {v0, v3, v1, p1}, Lcom/koushikdutta/a/v;->a(Lcom/koushikdutta/a/b;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p1, v0}, Lcom/koushikdutta/a/q;->c(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/j;

    goto :goto_0

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown uri scheme"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/a/q;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method

.method private a(Lcom/koushikdutta/async/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Lcom/koushikdutta/a/l;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/koushikdutta/a/l;-><init>(Lcom/koushikdutta/a/k;Ljava/lang/Exception;Lcom/koushikdutta/async/b/j;Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/koushikdutta/a/k;->a:Lcom/koushikdutta/a/b;

    iget-object v1, v1, Lcom/koushikdutta/a/b;->c:Lcom/koushikdutta/async/http/a;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/n;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Service;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method static synthetic a(Lcom/koushikdutta/a/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/koushikdutta/a/k;->c()Z

    move-result v0

    return v0
.end method

.method private b()Lcom/koushikdutta/async/http/c/p;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/koushikdutta/a/k;->f:Lcom/koushikdutta/async/http/c/p;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/k;->f:Lcom/koushikdutta/async/http/c/p;

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/a/k;->f:Lcom/koushikdutta/async/http/c/p;

    iget-object v1, p0, Lcom/koushikdutta/a/k;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/m;->a(Lcom/koushikdutta/async/http/c/p;Ljava/net/URI;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/a/k;->f:Lcom/koushikdutta/async/http/c/p;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/k;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/koushikdutta/a/k;->d:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/koushikdutta/a/k;->e:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/koushikdutta/a/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 192
    if-nez v0, :cond_0

    move v0, v1

    .line 205
    :goto_0
    return v0

    .line 194
    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 195
    check-cast v0, Landroid/app/Activity;

    .line 196
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    instance-of v2, v0, Landroid/app/Service;

    if-eqz v2, :cond_2

    .line 200
    check-cast v0, Landroid/app/Service;

    .line 201
    invoke-static {v0}, Lcom/koushikdutta/a/k;->a(Landroid/app/Service;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/net/URI;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/a/k;->g:Lcom/koushikdutta/async/http/ak;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 236
    iget-object v0, p0, Lcom/koushikdutta/a/k;->g:Lcom/koushikdutta/async/http/ak;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ak;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/koushikdutta/a/k;->g:Lcom/koushikdutta/async/http/ak;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/ak;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 253
    :cond_3
    return-object v0

    .line 244
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 248
    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/koushikdutta/a/d/a;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/a/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Handler;)Lcom/koushikdutta/a/k;
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/koushikdutta/a/k;->c:Landroid/os/Handler;

    .line 144
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/koushikdutta/a/k;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-string v0, "GET"

    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/a/k;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/k;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/koushikdutta/a/k;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object p0
.end method

.method a(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/a/q;
    .locals 1
    .parameter

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/async/c/a;Ljava/lang/Runnable;)Lcom/koushikdutta/a/q;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/koushikdutta/async/c/a;Ljava/lang/Runnable;)Lcom/koushikdutta/a/q;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 530
    sget-boolean v0, Lcom/koushikdutta/a/k;->y:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 531
    :cond_0
    new-instance v0, Lcom/koushikdutta/a/o;

    invoke-direct {v0, p0, p2, p1}, Lcom/koushikdutta/a/o;-><init>(Lcom/koushikdutta/a/k;Ljava/lang/Runnable;Lcom/koushikdutta/async/c/a;)V

    .line 544
    invoke-direct {p0, v0}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/a/q;)V

    .line 545
    return-object v0
.end method

.method public synthetic b(Landroid/os/Handler;)Lcom/koushikdutta/a/b/h;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/koushikdutta/a/k;->a(Landroid/os/Handler;)Lcom/koushikdutta/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/b/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/a/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/k;

    move-result-object v0

    return-object v0
.end method
