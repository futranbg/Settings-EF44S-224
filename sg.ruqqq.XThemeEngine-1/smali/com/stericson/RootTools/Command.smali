.class public abstract Lcom/stericson/RootTools/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field final command:[Ljava/lang/String;

.field exitCode:I

.field finished:Z

.field id:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "command"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    .line 41
    iput-object p2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    .line 42
    iput p1, p0, Lcom/stericson/RootTools/Command;->id:I

    .line 43
    return-void
.end method


# virtual methods
.method public commandFinished(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public exitCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    if-eqz v0, :cond_0

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget v0, p0, Lcom/stericson/RootTools/Command;->exitCode:I

    return v0

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public exitCode(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iput p1, p0, Lcom/stericson/RootTools/Command;->exitCode:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    .line 70
    iget v0, p0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->commandFinished(I)V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p0

    .line 73
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending command(s): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract output(ILjava/lang/String;)V
.end method

.method public terminated()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->exitCode(I)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/stericson/RootTools/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " did not finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public waitForFinish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    if-eqz v0, :cond_0

    .line 82
    monitor-exit p0

    .line 87
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeCommand(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/stericson/RootTools/Command;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 57
    return-void
.end method
