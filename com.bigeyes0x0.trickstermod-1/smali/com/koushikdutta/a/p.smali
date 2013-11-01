.class Lcom/koushikdutta/a/p;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/b/g;


# instance fields
.field final synthetic a:Lcom/koushikdutta/a/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/a/o;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/koushikdutta/a/p;->a:Lcom/koushikdutta/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/koushikdutta/a/p;->a:Lcom/koushikdutta/a/o;

    iget-object v0, v0, Lcom/koushikdutta/a/o;->c:Lcom/koushikdutta/a/k;

    iget-object v1, p0, Lcom/koushikdutta/a/p;->a:Lcom/koushikdutta/a/o;

    iget-object v1, v1, Lcom/koushikdutta/a/o;->a:Lcom/koushikdutta/async/b/k;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/a/k;->a(Lcom/koushikdutta/a/k;Lcom/koushikdutta/async/b/j;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 540
    return-void
.end method
