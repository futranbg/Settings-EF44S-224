.class public Lcom/bigeyes0x0/trickstermod/tool/a/a;
.super Ljava/lang/Object;
.source "DeviceStatusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Lcom/bigeyes0x0/trickstermod/tool/a/c;

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Ljava/io/RandomAccessFile;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/io/RandomAccessFile;

.field private i:Ljava/io/RandomAccessFile;

.field private j:Ljava/io/RandomAccessFile;

.field private k:Ljava/io/RandomAccessFile;

.field private l:Ljava/io/RandomAccessFile;

.field private m:Ljava/io/RandomAccessFile;

.field private n:I

.field private o:I

.field private p:Landroid/content/Intent;

.field private q:Landroid/content/Context;

.field private r:Lcom/bigeyes0x0/trickstermod/tool/a/d;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a:Ljava/io/File;

    .line 51
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/a/c;-><init>(Lcom/bigeyes0x0/trickstermod/tool/a/c;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->b:Lcom/bigeyes0x0/trickstermod/tool/a/c;

    .line 52
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a:Ljava/io/File;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/a/a;->b:Lcom/bigeyes0x0/trickstermod/tool/a/c;

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "cpufreq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scaling_cur_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bigeyes0x0/trickstermod/tool/a/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    .line 85
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->o:I

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    .line 93
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->q:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->r:Lcom/bigeyes0x0/trickstermod/tool/a/d;

    .line 95
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;)I
    .locals 13
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x7

    .line 132
    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    array-length v1, v0

    if-ge v1, v11, :cond_0

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error parsing cpu stat file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    aget-object v1, v0, v8

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 140
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 141
    aget-object v5, v0, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 140
    add-long/2addr v3, v5

    .line 141
    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 140
    add-long/2addr v3, v5

    .line 142
    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 140
    add-long/2addr v3, v5

    .line 142
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 140
    add-long/2addr v3, v5

    .line 144
    const-wide/16 v5, 0x168

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v5, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    array-length v5, v0

    if-ge v5, v11, :cond_1

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error parsing cpu stat file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 153
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 154
    aget-object v9, v0, v12

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 153
    add-long/2addr v7, v9

    .line 154
    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 153
    add-long/2addr v7, v9

    .line 155
    const/4 v9, 0x6

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 153
    add-long/2addr v7, v9

    .line 155
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 153
    add-long/2addr v7, v9

    .line 158
    sub-long v9, v7, v3

    long-to-float v0, v9

    add-long/2addr v5, v7

    add-long/2addr v1, v3

    sub-long v1, v5, v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 157
    return v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/tool/a/a;)Lcom/bigeyes0x0/trickstermod/tool/a/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->r:Lcom/bigeyes0x0/trickstermod/tool/a/d;

    return-object v0
.end method

.method private b(Ljava/io/RandomAccessFile;)I
    .locals 2
    .parameter

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "Active:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    return v0
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/tool/a/a;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->s:Landroid/os/Handler;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->s:Landroid/os/Handler;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/a/b;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/tool/a/b;-><init>(Lcom/bigeyes0x0/trickstermod/tool/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 99
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->f:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 100
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->i:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->j:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 102
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->k:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 103
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 104
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->m:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->g:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 106
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->h:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;)V

    .line 107
    const-string v0, "Stop monitoring service"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v0, "Start monitoring service"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 113
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->e:Ljava/io/RandomAccessFile;

    .line 114
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->f:Ljava/io/RandomAccessFile;

    .line 115
    const-string v0, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gpuclk"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->i:Ljava/io/RandomAccessFile;

    .line 116
    const-string v0, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->j:Ljava/io/RandomAccessFile;

    .line 117
    const-string v0, "/sys/devices/platform/omap/pvrsrvkm.0/sgxfreq/frequency"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->k:Ljava/io/RandomAccessFile;

    .line 118
    const-string v0, "/sys/devices/platform/omap/pvrsrvkm.0/sgxfreq/frequency_limit"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->l:Ljava/io/RandomAccessFile;

    .line 119
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/gpu_oc"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->m:Ljava/io/RandomAccessFile;

    .line 120
    const-string v0, "/proc/stat"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->g:Ljava/io/RandomAccessFile;

    .line 121
    const-string v0, "/proc/meminfo"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->h:Ljava/io/RandomAccessFile;

    .line 122
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v1, "num_of_cores"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v1, "mem_total"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    .line 125
    const-string v3, "/proc/meminfo"

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 176
    monitor-enter p0

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 177
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->q:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    .line 178
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v3, "temperature"

    .line 180
    const-string v4, "temperature"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v3, "health"

    .line 182
    const-string v4, "health"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "min_freq"

    .line 185
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->e:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12

    .line 189
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "max_freq"

    .line 190
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->f:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    .line 194
    :goto_1
    :try_start_3
    const-string v1, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    .line 199
    :goto_2
    :try_start_4
    const-string v1, "/sys/kernel/debug/tegra_thermal/temp_tj"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f

    .line 203
    :goto_3
    :try_start_5
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    .line 207
    :goto_4
    :try_start_6
    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 211
    :goto_5
    :try_start_7
    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 215
    :goto_6
    :try_start_8
    const-string v1, "/sys/devices/platform/s5p-tmu/curr_temp"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 218
    :goto_7
    :try_start_9
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 219
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "cpu_temp"

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 226
    :cond_0
    :goto_8
    :try_start_a
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "core_vol"

    .line 227
    const-string v3, "/sys/kernel/debug/voltage/vdd_core/curr_calibrated_volt"

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 226
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 231
    :goto_9
    :try_start_b
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "iva_vol"

    .line 232
    const-string v3, "/sys/kernel/debug/voltage/vdd_iva/curr_calibrated_volt"

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 236
    :goto_a
    :try_start_c
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "mpu_vol"

    .line 237
    const-string v3, "/sys/kernel/debug/voltage/vdd_mpu/curr_calibrated_volt"

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 240
    :goto_b
    :try_start_d
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    .line 241
    :goto_c
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 248
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "core_speeds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 250
    :try_start_e
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    .line 251
    const-string v1, "gpu_freq"

    .line 252
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 253
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->i:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 254
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->j:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    aput v4, v2, v3

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 258
    :goto_d
    :try_start_f
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    .line 259
    const-string v1, "gpu_freq"

    .line 260
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 261
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->k:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 262
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0xf4240

    div-int/2addr v4, v5

    aput v4, v2, v3

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 267
    :goto_e
    :try_start_10
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->m:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->o:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 272
    :goto_f
    :try_start_11
    const-string v0, "/sys/kernel/debug/clock/3d/rate"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4240

    .line 271
    div-int/2addr v0, v1

    .line 273
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->o:I

    if-le v0, v1, :cond_1

    .line 274
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->o:I

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "gpu_freq"

    .line 277
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->o:I

    aput v4, v3, v0

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 281
    :goto_10
    :try_start_12
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v1, "cpu_usage"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->g:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 288
    :goto_11
    :try_start_13
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v1, "mem_used"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->h:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->b(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 292
    :goto_12
    :try_start_14
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 293
    :goto_13
    monitor-exit p0

    return-void

    .line 220
    :cond_2
    :try_start_15
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 221
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "cpu_temp"

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_8

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :cond_3
    :try_start_16
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    if-lez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->p:Landroid/content/Intent;

    const-string v2, "cpu_temp"

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/tool/a/a;->n:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_8

    .line 243
    :cond_4
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/a/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    div-int/lit16 v2, v2, 0x3e8

    .line 243
    aput v2, v1, v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    .line 241
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_13

    .line 289
    :catch_1
    move-exception v0

    goto :goto_12

    .line 285
    :catch_2
    move-exception v0

    goto :goto_11

    .line 278
    :catch_3
    move-exception v0

    goto/16 :goto_10

    .line 268
    :catch_4
    move-exception v0

    goto/16 :goto_f

    .line 263
    :catch_5
    move-exception v0

    goto/16 :goto_e

    .line 255
    :catch_6
    move-exception v0

    goto/16 :goto_d

    .line 245
    :catch_7
    move-exception v2

    goto :goto_14

    .line 238
    :catch_8
    move-exception v1

    goto/16 :goto_b

    .line 233
    :catch_9
    move-exception v1

    goto/16 :goto_a

    .line 228
    :catch_a
    move-exception v1

    goto/16 :goto_9

    .line 216
    :catch_b
    move-exception v1

    goto/16 :goto_7

    .line 212
    :catch_c
    move-exception v1

    goto/16 :goto_6

    .line 208
    :catch_d
    move-exception v1

    goto/16 :goto_5

    .line 204
    :catch_e
    move-exception v1

    goto/16 :goto_4

    .line 200
    :catch_f
    move-exception v1

    goto/16 :goto_3

    .line 195
    :catch_10
    move-exception v1

    goto/16 :goto_2

    .line 191
    :catch_11
    move-exception v1

    goto/16 :goto_1

    .line 186
    :catch_12
    move-exception v1

    goto/16 :goto_0
.end method
