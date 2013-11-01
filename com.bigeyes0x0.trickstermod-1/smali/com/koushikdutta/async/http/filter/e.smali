.class public Lcom/koushikdutta/async/http/filter/e;
.super Lcom/koushikdutta/async/at;
.source "ContentLengthFilter.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field f:I

.field g:I

.field h:Lcom/koushikdutta/async/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/koushikdutta/async/http/filter/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/e;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 21
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->h:Lcom/koushikdutta/async/ah;

    .line 9
    iput p1, p0, Lcom/koushikdutta/async/http/filter/e;->f:I

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/e;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    iget v1, p0, Lcom/koushikdutta/async/http/filter/e;->f:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    .line 26
    iget v1, p0, Lcom/koushikdutta/async/http/filter/e;->f:I

    iget v2, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/e;->h:Lcom/koushikdutta/async/ah;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;I)V

    .line 30
    iget v0, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/e;->h:Lcom/koushikdutta/async/ah;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->h:Lcom/koushikdutta/async/ah;

    invoke-super {p0, p1, v0}, Lcom/koushikdutta/async/at;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 32
    iget v0, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    iget v1, p0, Lcom/koushikdutta/async/http/filter/e;->f:I

    if-ne v0, v1, :cond_1

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/e;->a(Ljava/lang/Exception;)V

    .line 34
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    if-nez p1, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/filter/e;->g:I

    iget v1, p0, Lcom/koushikdutta/async/http/filter/e;->f:I

    if-eq v0, v1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "End of data reached before content length was read"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/at;->a(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method
