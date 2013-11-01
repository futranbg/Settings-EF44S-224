.class public final Lcom/koushikdutta/async/http/c/b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/c/b;->a:Ljava/util/regex/Pattern;

    .line 725
    new-instance v0, Lcom/koushikdutta/async/http/c/d;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/d;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/c/b;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-wide v4, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    .line 171
    iput-wide v4, p0, Lcom/koushikdutta/async/http/c/b;->n:J

    .line 174
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 176
    new-instance v0, Lcom/koushikdutta/async/http/c/c;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/c/c;-><init>(Lcom/koushikdutta/async/http/c/b;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->o:Ljava/util/concurrent/Callable;

    .line 193
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/b;->c:Ljava/io/File;

    .line 194
    iput p2, p0, Lcom/koushikdutta/async/http/c/b;->g:I

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    .line 196
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->e:Ljava/io/File;

    .line 197
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->f:Ljava/io/File;

    .line 198
    iput p3, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    .line 199
    iput-wide p4, p0, Lcom/koushikdutta/async/http/c/b;->h:J

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    return p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/koushikdutta/async/http/c/b;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    if-gtz p2, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    :cond_2
    :goto_0
    new-instance v0, Lcom/koushikdutta/async/http/c/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/c/b;-><init>(Ljava/io/File;IIJ)V

    .line 234
    iget-object v1, v0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    :try_start_0
    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/b;->c()V

    .line 237
    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/b;->d()V

    .line 238
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-object v0

    .line 228
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/b;->a()V

    .line 253
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 254
    new-instance v0, Lcom/koushikdutta/async/http/c/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/c/b;-><init>(Ljava/io/File;IIJ)V

    .line 255
    invoke-direct {v0}, Lcom/koushikdutta/async/http/c/b;->e()V

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/koushikdutta/async/http/c/e;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->g()V

    .line 467
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/c/b;->e(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 469
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->e(Lcom/koushikdutta/async/http/c/g;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 486
    :goto_0
    monitor-exit p0

    return-object v0

    .line 473
    :cond_1
    if-nez v0, :cond_2

    .line 474
    :try_start_1
    new-instance v0, Lcom/koushikdutta/async/http/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/koushikdutta/async/http/c/g;-><init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;Lcom/koushikdutta/async/http/c/c;)V

    .line 475
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 480
    :goto_1
    new-instance v0, Lcom/koushikdutta/async/http/c/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/koushikdutta/async/http/c/e;-><init>(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/c;)V

    .line 481
    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/e;

    .line 484
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 476
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 477
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/e;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/c/b;->a(Lcom/koushikdutta/async/http/c/e;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/koushikdutta/async/http/c/e;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 521
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/c/e;->a(Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/g;

    move-result-object v2

    .line 522
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 527
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->d(Lcom/koushikdutta/async/http/c/g;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 528
    :goto_0
    iget v3, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v3, :cond_4

    .line 529
    invoke-static {p1}, Lcom/koushikdutta/async/http/c/e;->b(Lcom/koushikdutta/async/http/c/e;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 530
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/c/e;->b()V

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/c/g;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 534
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/c/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 528
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v0, v1, :cond_7

    .line 541
    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/c/g;->b(I)Ljava/io/File;

    move-result-object v1

    .line 542
    if-eqz p2, :cond_6

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 544
    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/c/g;->a(I)Ljava/io/File;

    move-result-object v3

    .line 545
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 546
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 547
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 548
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 549
    iget-wide v8, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    .line 540
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 552
    :cond_6
    invoke-static {v1}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;)V

    goto :goto_3

    .line 556
    :cond_7
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    .line 557
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/e;

    .line 558
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->d(Lcom/koushikdutta/async/http/c/g;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 559
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Z)Z

    .line 560
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 561
    if-eqz p2, :cond_8

    .line 562
    iget-wide v0, p0, Lcom/koushikdutta/async/http/c/b;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/koushikdutta/async/http/c/b;->n:J

    invoke-static {v2, v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;J)J

    .line 568
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 570
    iget-wide v0, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/c/b;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 565
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 397
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 400
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    if-eqz p2, :cond_0

    .line 404
    invoke-static {p1}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;)V

    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 409
    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/koushikdutta/async/http/c/b;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->h()V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 260
    new-instance v1, Lcom/koushikdutta/async/http/c/w;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/koushikdutta/async/http/c/w;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 262
    :try_start_0
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v5

    .line 267
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/koushikdutta/async/http/c/b;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/koushikdutta/async/http/c/m;->a(Ljava/io/Closeable;)V

    throw v0

    .line 276
    :cond_1
    const/4 v0, 0x0

    .line 279
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/c/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 285
    :try_start_2
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    invoke-static {v1}, Lcom/koushikdutta/async/http/c/m;->a(Ljava/io/Closeable;)V

    .line 289
    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/c/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->f()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;)V

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 338
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 339
    :goto_1
    iget v4, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v4, :cond_0

    .line 340
    iget-wide v4, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/e;

    move v1, v2

    .line 344
    :goto_2
    iget v4, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v4, :cond_2

    .line 345
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;)V

    .line 346
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/g;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 351
    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 293
    if-ne v2, v5, :cond_0

    .line 294
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 298
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 300
    if-ne v3, v5, :cond_2

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 311
    if-nez v0, :cond_3

    .line 312
    new-instance v0, Lcom/koushikdutta/async/http/c/g;

    invoke-direct {v0, p0, v1, v6}, Lcom/koushikdutta/async/http/c/g;-><init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;Lcom/koushikdutta/async/http/c/c;)V

    .line 313
    iget-object v4, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 318
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Z)Z

    .line 319
    invoke-static {v0, v6}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/e;

    .line 320
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;[Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 322
    new-instance v1, Lcom/koushikdutta/async/http/c/e;

    invoke-direct {v1, p0, v0, v6}, Lcom/koushikdutta/async/http/c/e;-><init>(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/c;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;Lcom/koushikdutta/async/http/c/e;)Lcom/koushikdutta/async/http/c/e;

    goto :goto_0

    .line 323
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/c/b;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    return v0
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 362
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/koushikdutta/async/http/c/b;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 376
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->c(Lcom/koushikdutta/async/http/c/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 383
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 386
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 390
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 392
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/koushikdutta/async/http/c/b;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 394
    monitor-exit p0

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 670
    sget-object v0, Lcom/koushikdutta/async/http/c/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/c/b;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->c:Ljava/io/File;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 580
    .line 581
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 653
    :goto_0
    iget-wide v0, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/c/b;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 655
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/c/b;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/koushikdutta/async/http/c/h;
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 417
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->g()V

    .line 418
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/c/b;->e(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    if-nez v2, :cond_0

    move-object v1, v3

    .line 454
    :goto_0
    monitor-exit p0

    return-object v1

    .line 424
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->d(Lcom/koushikdutta/async/http/c/g;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 425
    goto :goto_0

    .line 431
    :cond_1
    iget v1, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 433
    :goto_1
    :try_start_2
    iget v5, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v5, :cond_3

    .line 434
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/c/g;->a(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :catch_0
    move-exception v1

    move v1, v4

    .line 438
    :goto_2
    :try_start_3
    iget v2, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v2, :cond_2

    .line 439
    aget-object v2, v6, v1

    if-eqz v2, :cond_2

    .line 440
    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/m;->a(Ljava/io/Closeable;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 445
    goto :goto_0

    .line 448
    :cond_3
    iget v1, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    .line 449
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 450
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/koushikdutta/async/http/c/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 454
    :cond_4
    new-instance v1, Lcom/koushikdutta/async/http/c/h;

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->e(Lcom/koushikdutta/async/http/c/g;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/koushikdutta/async/http/c/h;-><init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/koushikdutta/async/http/c/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/c/b;->close()V

    .line 666
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/m;->a(Ljava/io/File;)V

    .line 667
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/koushikdutta/async/http/c/e;
    .locals 2
    .parameter

    .prologue
    .line 462
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/c/b;->a(Ljava/lang/String;J)Lcom/koushikdutta/async/http/c/e;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 592
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->g()V

    .line 593
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/c/b;->e(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 595
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 616
    :goto_0
    monitor-exit p0

    return v0

    .line 604
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/http/c/b;->j:J

    .line 605
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->b(Lcom/koushikdutta/async/http/c/g;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 599
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/koushikdutta/async/http/c/b;->i:I

    if-ge v1, v2, :cond_3

    .line 600
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/g;->a(I)Ljava/io/File;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 608
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/c/b;->m:I

    .line 609
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 610
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    monitor-exit p0

    return-void

    .line 642
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/b;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/c/g;

    .line 643
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 644
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/g;->a(Lcom/koushikdutta/async/http/c/g;)Lcom/koushikdutta/async/http/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 647
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/b;->h()V

    .line 648
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/b;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
