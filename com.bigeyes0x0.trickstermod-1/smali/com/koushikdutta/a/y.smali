.class Lcom/koushikdutta/a/y;
.super Ljava/lang/Object;
.source "RequestBodyUploadObserver.java"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# instance fields
.field a:Lcom/koushikdutta/async/http/a/a;

.field b:Lcom/koushikdutta/a/x;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/a/a;Lcom/koushikdutta/a/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/a/y;->a:Lcom/koushikdutta/async/http/a/a;

    .line 22
    iput-object p2, p0, Lcom/koushikdutta/a/y;->b:Lcom/koushikdutta/a/x;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/koushikdutta/a/y;->a:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/a/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/a/y;->a:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->b()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/koushikdutta/a/y;->a:Lcom/koushikdutta/async/http/a/a;

    new-instance v2, Lcom/koushikdutta/a/z;

    invoke-direct {v2, p0, p2, v0}, Lcom/koushikdutta/a/z;-><init>(Lcom/koushikdutta/a/y;Lcom/koushikdutta/async/an;I)V

    invoke-interface {v1, p1, v2, p3}, Lcom/koushikdutta/async/http/a/a;->a(Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/a/a;)V

    .line 88
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/koushikdutta/a/y;->a:Lcom/koushikdutta/async/http/a/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->b()I

    move-result v0

    return v0
.end method
