.class Lcom/koushikdutta/async/http/b;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/m;

.field final synthetic b:I

.field final synthetic c:Lcom/koushikdutta/async/http/f;

.field final synthetic d:Lcom/koushikdutta/async/http/b/a;

.field final synthetic e:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/b;->e:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/b;->a:Lcom/koushikdutta/async/http/m;

    iput p3, p0, Lcom/koushikdutta/async/http/b;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/b;->c:Lcom/koushikdutta/async/http/f;

    iput-object p5, p0, Lcom/koushikdutta/async/http/b;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/b;->e:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/b;->a:Lcom/koushikdutta/async/http/m;

    iget v2, p0, Lcom/koushikdutta/async/http/b;->b:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/b;->c:Lcom/koushikdutta/async/http/f;

    iget-object v4, p0, Lcom/koushikdutta/async/http/b;->d:Lcom/koushikdutta/async/http/b/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/m;ILcom/koushikdutta/async/http/f;Lcom/koushikdutta/async/http/b/a;)V

    .line 134
    return-void
.end method
