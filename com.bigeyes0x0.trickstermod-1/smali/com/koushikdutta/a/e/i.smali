.class public Lcom/koushikdutta/a/e/i;
.super Ljava/lang/Object;
.source "HttpLoader.java"

# interfaces
.implements Lcom/koushikdutta/a/v;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/koushikdutta/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/e/i;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/a/b;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/m;->e()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 31
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/a/e/i;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/m;->f()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/a/b;->b()Lcom/koushikdutta/async/http/a;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/a/e/j;

    invoke-direct {v1, p0, p3}, Lcom/koushikdutta/a/e/j;-><init>(Lcom/koushikdutta/a/e/i;Lcom/koushikdutta/async/b/g;)V

    invoke-virtual {v0, p2, v1}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/b/a;)Lcom/koushikdutta/async/b/f;

    move-result-object v0

    goto :goto_0
.end method
