.class Lcom/koushikdutta/async/d/e;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/d/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/koushikdutta/async/d/e;->a:Lcom/koushikdutta/async/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/d/e;->a:Lcom/koushikdutta/async/d/c;

    iget-object v0, v0, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v1, p0, Lcom/koushikdutta/async/d/e;->a:Lcom/koushikdutta/async/d/c;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c;->a:Lcom/koushikdutta/async/d/a;

    iget-object v1, v1, Lcom/koushikdutta/async/d/a;->f:Lcom/koushikdutta/async/ah;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 104
    return-void
.end method
