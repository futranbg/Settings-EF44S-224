.class public Lcom/koushikdutta/a/c/a;
.super Lcom/koushikdutta/async/http/ax;
.source "CookieMiddleware.java"


# instance fields
.field a:Ljava/net/CookieManager;

.field b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ax;-><init>()V

    .line 40
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0, v1, v1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lcom/koushikdutta/a/c/a;->a:Ljava/net/CookieManager;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-cookies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/a/c/a;->b:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/koushikdutta/a/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/a/c/a;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v5, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    .line 48
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 49
    const/4 v1, 0x1

    .line 50
    array-length v7, v6

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    .line 51
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v5, v8}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    move v1, v2

    .line 50
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 56
    invoke-virtual {v5, v8}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "Ion"

    const-string v3, "unable to load cookies"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/a/c/a;->a:Ljava/net/CookieManager;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/j;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/a/c/a;->a:Ljava/net/CookieManager;

    iget-object v1, p1, Lcom/koushikdutta/async/http/j;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/j;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 83
    iget-object v0, p1, Lcom/koushikdutta/async/http/j;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/j;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/koushikdutta/a/c/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/j;->f:Lcom/koushikdutta/async/http/c/t;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/koushikdutta/async/http/l;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/a/c/a;->a:Ljava/net/CookieManager;

    iget-object v1, p1, Lcom/koushikdutta/async/http/l;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/l;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/r;->b()Lcom/koushikdutta/async/http/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 71
    iget-object v1, p1, Lcom/koushikdutta/async/http/l;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->g()Lcom/koushikdutta/async/http/c/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/c/r;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
