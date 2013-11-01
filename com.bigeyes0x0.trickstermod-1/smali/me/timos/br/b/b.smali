.class public Lme/timos/br/b/b;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Lme/timos/br/b/d;


# instance fields
.field private a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "logfile"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    .line 22
    iput p2, p0, Lme/timos/br/b/b;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 29
    :try_start_1
    iget-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 30
    iget-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 31
    iget-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Lme/timos/br/a/a;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lme/timos/br/f;->a(Lme/timos/br/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 49
    :try_start_1
    iget-object v1, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lme/timos/br/b/b;->a:I

    if-ge v1, v2, :cond_2

    .line 61
    iget-object v1, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget v3, p0, Lme/timos/br/b/b;->a:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 62
    iget-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 63
    iget-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 64
    iget-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 65
    iget-object v1, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 66
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    .line 68
    :cond_2
    iget-object v1, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    :try_start_3
    iget-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 74
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lme/timos/br/b/b;->c:Ljava/io/FileOutputStream;

    .line 75
    iget-object v0, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_1

    .line 55
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/timos/br/b/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
