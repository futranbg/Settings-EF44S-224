.class public Lcom/koushikdutta/async/aw;
.super Ljava/lang/Object;
.source "LineEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Lcom/koushikdutta/async/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/koushikdutta/async/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/aw;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/aw;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->h()B

    move-result v0

    .line 25
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 26
    sget-boolean v0, Lcom/koushikdutta/async/aw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/aw;->b:Lcom/koushikdutta/async/ax;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/aw;->b:Lcom/koushikdutta/async/ax;

    iget-object v1, p0, Lcom/koushikdutta/async/aw;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ax;->a(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/aw;->a:Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    return-void

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/aw;->a:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Lcom/koushikdutta/async/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/aw;->b:Lcom/koushikdutta/async/ax;

    .line 15
    return-void
.end method
