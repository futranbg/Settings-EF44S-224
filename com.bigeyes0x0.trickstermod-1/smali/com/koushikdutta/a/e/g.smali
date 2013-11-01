.class Lcom/koushikdutta/a/e/g;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/m;

.field final synthetic b:Lcom/koushikdutta/a/b;

.field final synthetic c:Lcom/koushikdutta/a/e/h;

.field final synthetic d:Lcom/koushikdutta/async/b/g;

.field final synthetic e:Lcom/koushikdutta/a/e/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/e/e;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/a/b;Lcom/koushikdutta/a/e/h;Lcom/koushikdutta/async/b/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/koushikdutta/a/e/g;->e:Lcom/koushikdutta/a/e/e;

    iput-object p2, p0, Lcom/koushikdutta/a/e/g;->a:Lcom/koushikdutta/async/http/m;

    iput-object p3, p0, Lcom/koushikdutta/a/e/g;->b:Lcom/koushikdutta/a/b;

    iput-object p4, p0, Lcom/koushikdutta/a/e/g;->c:Lcom/koushikdutta/a/e/h;

    iput-object p5, p0, Lcom/koushikdutta/a/e/g;->d:Lcom/koushikdutta/async/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/koushikdutta/a/e/g;->a:Lcom/koushikdutta/async/http/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 54
    new-instance v1, Lcom/koushikdutta/async/ar;

    iget-object v0, p0, Lcom/koushikdutta/a/e/g;->b:Lcom/koushikdutta/a/b;

    invoke-virtual {v0}, Lcom/koushikdutta/a/b;->b()Lcom/koushikdutta/async/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->d()Lcom/koushikdutta/async/n;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/koushikdutta/async/ar;-><init>(Lcom/koushikdutta/async/n;Ljava/io/File;)V

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/a/e/g;->c:Lcom/koushikdutta/a/e/h;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/a/e/h;->b(Ljava/lang/Object;)Z

    .line 56
    iget-object v6, p0, Lcom/koushikdutta/a/e/g;->d:Lcom/koushikdutta/async/b/g;

    new-instance v0, Lcom/koushikdutta/a/w;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/a/w;-><init>(Lcom/koushikdutta/async/ak;IILcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;)V

    invoke-interface {v6, v4, v0}, Lcom/koushikdutta/async/b/g;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
