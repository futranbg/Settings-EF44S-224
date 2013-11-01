.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;
.super Lcom/koushikdutta/async/bf;
.source "GZIPInputFilter.java"


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public tap([B)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->g:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 71
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lcom/koushikdutta/async/http/c/n;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/az;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/az;->a(I)Lcom/koushikdutta/async/az;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/bf;)V

    .line 82
    return-void
.end method
