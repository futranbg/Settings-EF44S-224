.class public Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;
.super Landroid/app/IntentService;
.source "ServiceInitializer.java"


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private b:Lcom/bigeyes0x0/trickstermod/h;

.field private c:Lcom/bigeyes0x0/trickstermod/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "ServiceInitializer"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 39
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->b:Lcom/bigeyes0x0/trickstermod/h;

    .line 40
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 41
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    const-string v2, "============checkAndUpdateBinaries============"

    invoke-static {v2}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 45
    const-string v2, "os.arch"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "armv7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "---armv7---"

    invoke-static {v2}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 48
    const-string v2, "busybox"

    const/high16 v3, 0x7f05

    .line 49
    const-string v4, "res/raw/busybox_armv7"

    .line 48
    invoke-direct {p0, v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    const-string v2, "mksh"

    const v3, 0x7f050001

    const-string v4, "res/raw/mksh_armv7"

    invoke-direct {p0, v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 57
    const-string v5, "if [ -x busybox ] && [ ! -L zcat ]; then"

    aput-object v5, v4, v0

    .line 58
    const-string v0, "for i in `./busybox --list`; do"

    aput-object v0, v4, v1

    const/4 v0, 0x2

    .line 59
    const-string v5, "./busybox ln -s busybox $i"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "done"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "fi"

    aput-object v5, v4, v0

    .line 56
    invoke-static {v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 171
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v8}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 181
    :cond_0
    invoke-static {p1}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    move v0, v6

    .line 208
    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 189
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 191
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v10, v2

    .line 195
    const-wide/16 v2, 0x0

    :goto_2
    cmp-long v4, v2, v10

    if-ltz v4, :cond_3

    .line 198
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 201
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 202
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Write binary "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v6

    .line 205
    goto :goto_0

    .line 196
    :cond_3
    sub-long v4, v10, v2

    :try_start_4
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 201
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 202
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 203
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 208
    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Z)Z
    .locals 13
    .parameter

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v0, "Install new internal data..."

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Z)Z

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v0, "============checkAndUpdateScript============"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getFilesDir()Ljava/io/File;

    move-result-object v8

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v1, 0x0

    .line 78
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v3, 0x7f050002

    .line 78
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    :try_start_1
    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 81
    :goto_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-nez v9, :cond_3

    .line 115
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 117
    if-eqz p1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->k()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setExecutable(Z)Z

    .line 119
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/h;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_3
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 86
    const-string v3, "Create dir "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    const-string v0, "Failed to create dir "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v3

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 95
    :cond_5
    const-string v3, "Write file "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 98
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 99
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v11

    .line 100
    const-wide/16 v2, 0x0

    :goto_2
    cmp-long v4, v2, v11

    if-ltz v4, :cond_7

    .line 105
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 107
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 108
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move-object v2, v6

    .line 112
    :cond_6
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 114
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 115
    :goto_3
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 116
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Failed to create scripts"

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 102
    :cond_7
    sub-long v4, v11, v2

    :try_start_a
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2

    .line 104
    :catchall_1
    move-exception v0

    move-object v1, v6

    .line 105
    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 107
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 108
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 109
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 114
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 104
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v2, "res/raw/scripts.zip"

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    .line 142
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v4}, Lcom/bigeyes0x0/trickstermod/j;->p()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 143
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v4, v2, v3}, Lcom/bigeyes0x0/trickstermod/j;->a(J)V

    .line 154
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v2, "WTF Can\'t open our apk"

    invoke-static {v2, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/io/File;

    const-string v2, "Android"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "if [ -d \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' ]; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 162
    const-string v3, "then"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "echo exists"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "fi"

    aput-object v3, v2, v1

    .line 161
    invoke-static {v6, v6, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "exists"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/storage/emulated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v0, "/storage/emulated/legacy"

    .line 166
    :cond_0
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->m:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->a()Z

    .line 217
    invoke-static {}, Lcom/stericson/RootTools/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string v0, "ERROR: Root NA"

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 219
    const v0, 0x7f080043

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(I)V

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {p0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    .line 236
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    const-string v0, "ERROR: Check or install scripts error"

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x1

    .line 223
    goto :goto_0

    .line 225
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/h;->c()Ljava/util/Properties;

    .line 226
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "ERROR: Define GUI"

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    const/4 v0, 0x2

    goto :goto_0
.end method
