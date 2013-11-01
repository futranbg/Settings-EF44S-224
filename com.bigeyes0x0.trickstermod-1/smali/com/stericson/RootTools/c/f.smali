.class public Lcom/stericson/RootTools/c/f;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field public static a:Z

.field public static b:Z

.field private static h:Ljava/lang/String;

.field private static i:Lcom/stericson/RootTools/c/f;

.field private static j:Lcom/stericson/RootTools/c/f;

.field private static k:Lcom/stericson/RootTools/c/f;

.field private static l:I


# instance fields
.field private final c:Ljava/lang/Process;

.field private final d:Ljava/io/BufferedReader;

.field private final e:Ljava/io/OutputStreamWriter;

.field private final f:Ljava/util/List;

.field private g:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/c/f;->h:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    .line 47
    sput-object v1, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    .line 48
    sput-object v1, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    .line 50
    const/16 v0, 0x61a8

    sput v0, Lcom/stericson/RootTools/c/f;->l:I

    .line 51
    sput-boolean v2, Lcom/stericson/RootTools/c/f;->a:Z

    .line 52
    sput-boolean v2, Lcom/stericson/RootTools/c/f;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    .line 42
    iput-boolean v2, p0, Lcom/stericson/RootTools/c/f;->g:Z

    .line 54
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/stericson/RootTools/c/f;->m:I

    .line 55
    iput v2, p0, Lcom/stericson/RootTools/c/f;->n:I

    .line 56
    iput v2, p0, Lcom/stericson/RootTools/c/f;->o:I

    .line 57
    iput v2, p0, Lcom/stericson/RootTools/c/f;->p:I

    .line 58
    iput v2, p0, Lcom/stericson/RootTools/c/f;->q:I

    .line 59
    iput-boolean v2, p0, Lcom/stericson/RootTools/c/f;->r:Z

    .line 293
    new-instance v0, Lcom/stericson/RootTools/c/g;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/c/g;-><init>(Lcom/stericson/RootTools/c/f;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->s:Ljava/lang/Runnable;

    .line 380
    new-instance v0, Lcom/stericson/RootTools/c/i;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/c/i;-><init>(Lcom/stericson/RootTools/c/f;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->t:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting shell: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    .line 67
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->d:Ljava/io/BufferedReader;

    .line 68
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/f;->e:Ljava/io/OutputStreamWriter;

    .line 73
    new-instance v0, Lcom/stericson/RootTools/c/j;

    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    iget-object v2, p0, Lcom/stericson/RootTools/c/f;->d:Ljava/io/BufferedReader;

    iget-object v3, p0, Lcom/stericson/RootTools/c/f;->e:Ljava/io/OutputStreamWriter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stericson/RootTools/c/j;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/c/g;)V

    .line 74
    invoke-virtual {v0}, Lcom/stericson/RootTools/c/j;->start()V

    .line 85
    :try_start_0
    sget v1, Lcom/stericson/RootTools/c/f;->l:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/stericson/RootTools/c/j;->join(J)V

    .line 90
    iget v1, v0, Lcom/stericson/RootTools/c/j;->a:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, -0x38f

    if-ne v1, v2, :cond_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->d:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Reader;)V

    .line 97
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->e:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Writer;)V

    .line 99
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    sget-object v2, Lcom/stericson/RootTools/c/f;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-virtual {v0}, Lcom/stericson/RootTools/c/j;->interrupt()V

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 137
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 104
    :cond_0
    :try_start_3
    iget v1, v0, Lcom/stericson/RootTools/c/j;->a:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v2, -0x2a

    if-ne v1, v2, :cond_1

    .line 107
    :try_start_4
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->d:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Reader;)V

    .line 111
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->e:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Writer;)V

    .line 113
    new-instance v1, Lcom/stericson/RootTools/b/a;

    const-string v2, "Root Access Denied"

    invoke-direct {v1, v2}, Lcom/stericson/RootTools/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/stericson/RootTools/c/f;->s:Ljava/lang/Runnable;

    const-string v3, "Shell Input"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/stericson/RootTools/c/f;->t:Ljava/lang/Runnable;

    const-string v3, "Shell Output"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 139
    return-void

    .line 108
    :catch_1
    move-exception v1

    goto :goto_1

    .line 94
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/stericson/RootTools/c/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/stericson/RootTools/c/f;->o:I

    return p1
.end method

.method public static a(I)Lcom/stericson/RootTools/c/f;
    .locals 1
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/stericson/RootTools/c/f;->a(II)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lcom/stericson/RootTools/c/f;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 497
    sput p0, Lcom/stericson/RootTools/c/f;->l:I

    .line 499
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-nez v0, :cond_1

    .line 500
    const-string v0, "Starting Root Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 501
    const-string v3, "su"

    .line 503
    const/4 v0, 0x0

    .line 504
    :goto_0
    sget-object v1, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-nez v1, :cond_2

    .line 506
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/c/f;

    invoke-direct {v1, v3}, Lcom/stericson/RootTools/c/f;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 508
    add-int/lit8 v1, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 509
    const-string v0, "IOException, could not start shell"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 510
    throw v2

    :cond_0
    move v0, v1

    .line 512
    goto :goto_0

    .line 515
    :cond_1
    const-string v0, "Using Existing Root Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 518
    :cond_2
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lcom/stericson/RootTools/c/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/stericson/RootTools/c/f;Ljava/io/Reader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/c/f;->a(Ljava/io/Writer;)V

    return-void
.end method

.method private a(Ljava/io/Reader;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/Writer;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/stericson/RootTools/c/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/stericson/RootTools/c/f;->n:I

    return p1
.end method

.method public static b(I)Lcom/stericson/RootTools/c/f;
    .locals 2
    .parameter

    .prologue
    .line 542
    sput p0, Lcom/stericson/RootTools/c/f;->l:I

    .line 545
    :try_start_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    if-nez v0, :cond_0

    .line 546
    const-string v0, "Starting Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 547
    new-instance v0, Lcom/stericson/RootTools/c/f;

    const-string v1, "/system/bin/sh"

    invoke-direct {v0, v1}, Lcom/stericson/RootTools/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    .line 550
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    return-object v0

    .line 549
    :cond_0
    const-string v0, "Using Existing Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/stericson/RootTools/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 553
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/f;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/stericson/RootTools/c/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/f;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/stericson/RootTools/c/f;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->o:I

    return v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/f;->a()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/stericson/RootTools/c/f;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->m:I

    return v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/f;->a()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/stericson/RootTools/c/f;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->n:I

    return v0
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/stericson/RootTools/c/f;->d()V

    .line 232
    invoke-static {}, Lcom/stericson/RootTools/c/f;->c()V

    .line 233
    invoke-static {}, Lcom/stericson/RootTools/c/f;->b()V

    .line 234
    return-void
.end method

.method public static f()Lcom/stericson/RootTools/c/f;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    goto :goto_0
.end method

.method static synthetic f(Lcom/stericson/RootTools/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/stericson/RootTools/c/f;->k()V

    return-void
.end method

.method static synthetic g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->e:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method public static g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 275
    sget-object v1, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    sget-object v1, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-nez v1, :cond_0

    .line 279
    sget-object v1, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    if-nez v1, :cond_0

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/stericson/RootTools/c/f;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->p:I

    return v0
.end method

.method static synthetic i(Lcom/stericson/RootTools/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/c/f;->o:I

    return v0
.end method

.method public static i()Lcom/stericson/RootTools/c/f;
    .locals 2

    .prologue
    .line 488
    const/16 v0, 0x4e20

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/stericson/RootTools/c/f;->a(II)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/stericson/RootTools/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/c/f;->p:I

    return v0
.end method

.method public static j()Lcom/stericson/RootTools/c/f;
    .locals 1

    .prologue
    .line 538
    const/16 v0, 0x4e20

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->b(I)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/stericson/RootTools/c/f;)Ljava/io/BufferedReader;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->d:Ljava/io/BufferedReader;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/f;->r:Z

    .line 168
    iget v0, p0, Lcom/stericson/RootTools/c/f;->m:I

    iget v2, p0, Lcom/stericson/RootTools/c/f;->m:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    move v0, v1

    .line 170
    :goto_0
    if-ge v0, v2, :cond_0

    .line 171
    iget-object v3, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/c/f;->n:I

    .line 175
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/c/f;->o:I

    .line 176
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/f;->r:Z

    .line 177
    return-void
.end method

.method static synthetic l(Lcom/stericson/RootTools/c/f;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->q:I

    return v0
.end method

.method static synthetic m(Lcom/stericson/RootTools/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/c/f;->n:I

    return v0
.end method

.method static synthetic n(Lcom/stericson/RootTools/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/stericson/RootTools/c/f;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/stericson/RootTools/c/f;->q:I

    return v0
.end method

.method static synthetic o(Lcom/stericson/RootTools/c/f;)Ljava/lang/Process;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->c:Ljava/lang/Process;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/f;->g:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/f;->r:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/stericson/RootTools/c/f;->h()V

    .line 155
    return-object p1
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    sget-object v0, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    if-ne p0, v0, :cond_1

    .line 197
    sput-object v1, Lcom/stericson/RootTools/c/f;->i:Lcom/stericson/RootTools/c/f;

    .line 202
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    monitor-enter v1

    .line 207
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/c/f;->g:Z

    .line 208
    invoke-virtual {p0}, Lcom/stericson/RootTools/c/f;->h()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    if-ne p0, v0, :cond_2

    .line 199
    sput-object v1, Lcom/stericson/RootTools/c/f;->j:Lcom/stericson/RootTools/c/f;

    goto :goto_0

    .line 200
    :cond_2
    sget-object v0, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    if-ne p0, v0, :cond_0

    .line 201
    sput-object v1, Lcom/stericson/RootTools/c/f;->k:Lcom/stericson/RootTools/c/f;

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/stericson/RootTools/c/a;)I
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/stericson/RootTools/c/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Lcom/stericson/RootTools/c/a;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command is in position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currently executing command at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stericson/RootTools/c/f;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/stericson/RootTools/c/h;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/c/h;-><init>(Lcom/stericson/RootTools/c/f;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method
