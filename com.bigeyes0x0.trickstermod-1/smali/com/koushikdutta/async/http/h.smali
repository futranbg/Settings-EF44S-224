.class public Lcom/koushikdutta/async/http/h;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Lcom/koushikdutta/async/http/m;

.field public c:Lcom/koushikdutta/async/a/b;

.field public d:Lcom/koushikdutta/async/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/h;->a:Landroid/os/Bundle;

    return-void
.end method
