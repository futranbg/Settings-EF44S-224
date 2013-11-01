.class Lcom/koushikdutta/a/e/c;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/a/b;

.field final synthetic b:Lcom/koushikdutta/async/http/m;

.field final synthetic c:Lcom/koushikdutta/a/e/d;

.field final synthetic d:Lcom/koushikdutta/async/b/g;

.field final synthetic e:Lcom/koushikdutta/a/e/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/e/b;Lcom/koushikdutta/a/b;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/a/e/d;Lcom/koushikdutta/async/b/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/koushikdutta/a/e/c;->e:Lcom/koushikdutta/a/e/b;

    iput-object p2, p0, Lcom/koushikdutta/a/e/c;->a:Lcom/koushikdutta/a/b;

    iput-object p3, p0, Lcom/koushikdutta/a/e/c;->b:Lcom/koushikdutta/async/http/m;

    iput-object p4, p0, Lcom/koushikdutta/a/e/c;->c:Lcom/koushikdutta/a/e/d;

    iput-object p5, p0, Lcom/koushikdutta/a/e/c;->d:Lcom/koushikdutta/async/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/a/e/c;->a:Lcom/koushikdutta/a/b;

    invoke-virtual {v0}, Lcom/koushikdutta/a/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/a/e/c;->b:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to load content stream"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/a/e/c;->c:Lcom/koushikdutta/a/e/d;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/a/e/d;->a(Ljava/lang/Exception;)Z

    .line 47
    iget-object v1, p0, Lcom/koushikdutta/a/e/c;->d:Lcom/koushikdutta/async/b/g;

    invoke-interface {v1, v0, v8}, Lcom/koushikdutta/async/b/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 41
    new-instance v1, Lcom/koushikdutta/async/d/a;

    iget-object v3, p0, Lcom/koushikdutta/a/e/c;->a:Lcom/koushikdutta/a/b;

    invoke-virtual {v3}, Lcom/koushikdutta/a/b;->b()Lcom/koushikdutta/async/http/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/koushikdutta/async/d/a;-><init>(Lcom/koushikdutta/async/n;Ljava/io/InputStream;)V

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/a/e/c;->c:Lcom/koushikdutta/a/e/d;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/a/e/d;->b(Ljava/lang/Object;)Z

    .line 43
    iget-object v6, p0, Lcom/koushikdutta/a/e/c;->d:Lcom/koushikdutta/async/b/g;

    const/4 v7, 0x0

    new-instance v0, Lcom/koushikdutta/a/w;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/a/w;-><init>(Lcom/koushikdutta/async/ak;IILcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;)V

    invoke-interface {v6, v7, v0}, Lcom/koushikdutta/async/b/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
