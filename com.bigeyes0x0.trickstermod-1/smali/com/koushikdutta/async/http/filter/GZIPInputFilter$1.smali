.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
.super Lcom/koushikdutta/async/bf;
.source "GZIPInputFilter.java"


# instance fields
.field flags:I

.field hcrc:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/filter/f;

.field final synthetic val$emitter:Lcom/koushikdutta/async/ak;

.field final synthetic val$parser:Lcom/koushikdutta/async/az;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/f;Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/az;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/ak;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/az;

    invoke-direct {p0}, Lcom/koushikdutta/async/bf;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V

    return-void
.end method

.method private next()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/koushikdutta/async/az;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/ak;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/az;-><init>(Lcom/koushikdutta/async/ak;)V

    .line 90
    new-instance v1, Lcom/koushikdutta/async/http/filter/g;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/g;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 102
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/az;->a(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/az;

    .line 105
    :cond_0
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/az;->a(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/az;

    .line 108
    :cond_1
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(I)Lcom/koushikdutta/async/az;

    .line 114
    :goto_0
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/bf;)V

    .line 129
    return-void

    .line 112
    :cond_2
    invoke-virtual {v0}, Lcom/koushikdutta/async/az;->a()Lcom/koushikdutta/async/az;

    goto :goto_0
.end method


# virtual methods
.method public tap([B)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1, v2}, Lcom/koushikdutta/async/http/c/n;->a([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 53
    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/f;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "unknown format (magic number %x)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/filter/f;->a(Ljava/lang/Exception;)V

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Lcom/koushikdutta/async/ak;

    new-instance v1, Lcom/koushikdutta/async/ay;

    invoke-direct {v1}, Lcom/koushikdutta/async/ay;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 87
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    .line 59
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    .line 60
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->g:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 63
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/az;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(I)Lcom/koushikdutta/async/az;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/az;->a(Lcom/koushikdutta/async/bf;)V

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1
.end method
