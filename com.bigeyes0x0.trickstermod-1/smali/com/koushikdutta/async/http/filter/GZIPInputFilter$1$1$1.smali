.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;
.super Lcom/koushikdutta/async/bf;
.source "GZIPInputFilter.java"


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public tap([B)V
    .locals 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->g:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    #calls: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$000(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 80
    return-void
.end method
