.class public abstract Lcom/koushikdutta/async/al;
.super Ljava/lang/Object;
.source "DataEmitterBase.java"

# interfaces
.implements Lcom/koushikdutta/async/ak;


# instance fields
.field a:Lcom/koushikdutta/async/a/a;

.field b:Lcom/koushikdutta/async/a/d;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/koushikdutta/async/al;->b:Lcom/koushikdutta/async/a/d;

    .line 38
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/koushikdutta/async/al;->c:Z

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/al;->c:Z

    .line 18
    invoke-virtual {p0}, Lcom/koushikdutta/async/al;->g()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/koushikdutta/async/al;->g()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/al;->a:Lcom/koushikdutta/async/a/a;

    .line 25
    return-void
.end method

.method public f()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/al;->b:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final g()Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/al;->a:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method
