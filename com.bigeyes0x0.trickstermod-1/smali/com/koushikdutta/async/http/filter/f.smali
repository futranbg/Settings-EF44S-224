.class public Lcom/koushikdutta/async/http/filter/f;
.super Lcom/koushikdutta/async/http/filter/h;
.source "GZIPInputFilter.java"


# instance fields
.field f:Z

.field protected g:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/h;-><init>(Ljava/util/zip/Inflater;)V

    .line 34
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/f;->f:Z

    .line 35
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/f;->g:Ljava/util/zip/CRC32;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/f;->f:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/koushikdutta/async/az;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/az;-><init>(Lcom/koushikdutta/async/ak;)V

    .line 46
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(I)Lcom/koushikdutta/async/az;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/f;Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/az;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/bf;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/h;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    goto :goto_0
.end method
