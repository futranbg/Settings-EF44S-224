.class public Lcom/koushikdutta/async/http/c/w;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p3, :cond_1

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-gez p2, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    sget-object v0, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/koushikdutta/async/http/c/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/w;->a:Ljava/io/InputStream;

    .line 120
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/c/w;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 93
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    iget-object v2, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 232
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iput v3, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    .line 236
    iput v0, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    .line 237
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 148
    iget-object v3, p0, Lcom/koushikdutta/async/http/c/w;->a:Ljava/io/InputStream;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    iget v1, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    if-lt v0, v1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/w;->c()V

    .line 160
    :cond_1
    iget v2, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    :goto_0
    iget v0, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    if-eq v2, v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_3

    .line 162
    iget v0, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 163
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    iget v5, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    iget v6, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    sub-int/2addr v1, v6

    invoke-direct {v0, v4, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 164
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    .line 165
    monitor-exit v3

    .line 190
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 162
    goto :goto_1

    .line 160
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_4
    new-instance v1, Lcom/koushikdutta/async/http/c/x;

    iget v0, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    iget v2, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/c/x;-><init>(Lcom/koushikdutta/async/http/c/w;I)V

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    iget v2, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    iget v4, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    iget v5, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/w;->c()V

    .line 184
    iget v0, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    :goto_3
    iget v2, p0, Lcom/koushikdutta/async/http/c/w;->d:I

    if-eq v0, v2, :cond_5

    .line 185
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 186
    iget v2, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    if-eq v0, v2, :cond_6

    .line 187
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    iget v4, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    iget v5, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 189
    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/c/w;->c:I

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 184
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public b()I
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected an int but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/w;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/w;->b:[B

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/w;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
