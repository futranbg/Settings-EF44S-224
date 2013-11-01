.class Lcom/koushikdutta/async/http/ae;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/koushikdutta/async/a/a;

.field final synthetic c:Lcom/koushikdutta/async/http/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/koushikdutta/async/http/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/ae;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/koushikdutta/async/http/ad;Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iput-object p2, p0, Lcom/koushikdutta/async/http/ae;->b:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-boolean v0, Lcom/koushikdutta/async/http/ae;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ab;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_0
    if-eqz p1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iput-object p1, v0, Lcom/koushikdutta/async/http/ab;->a:Ljava/lang/Exception;

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->b:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ab;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ab;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    const-string v1, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/m;->c(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->m:Lcom/koushikdutta/async/http/z;

    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;)V

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->m:Lcom/koushikdutta/async/http/z;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v1, v1, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v1, v1, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/h;

    iget-object v1, v1, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/m;

    invoke-static {v0, p2, v1}, Lcom/koushikdutta/async/http/z;->a(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/ac;Lcom/koushikdutta/async/http/m;)V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/async/http/ab;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/ae;->c:Lcom/koushikdutta/async/http/ad;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ad;->b:Lcom/koushikdutta/async/http/ab;

    iget-object v0, v0, Lcom/koushikdutta/async/http/ab;->b:Lcom/koushikdutta/async/http/h;

    iget-object v0, v0, Lcom/koushikdutta/async/http/h;->c:Lcom/koushikdutta/async/a/b;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    goto :goto_0
.end method
