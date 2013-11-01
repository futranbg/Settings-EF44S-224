.class Lcom/koushikdutta/a/e/f;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/m;

.field final synthetic b:Lcom/koushikdutta/async/b/j;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/koushikdutta/a/e/f;->a:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    iget-object v1, p0, Lcom/koushikdutta/a/e/f;->b:Lcom/koushikdutta/async/b/j;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/b/j;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/koushikdutta/a/e/f;->b:Lcom/koushikdutta/async/b/j;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/b/j;->a(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
