.class public Lcom/stericson/RootTools/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static customShell:Lcom/stericson/RootTools/Shell; = null

.field private static rootShell:Lcom/stericson/RootTools/Shell; = null

.field private static shell:Lcom/stericson/RootTools/Shell; = null

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericson/RootTools/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private input:Ljava/lang/Runnable;

.field private final out:Ljava/io/DataOutputStream;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    .line 49
    sput-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 50
    sput-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    .line 45
    iput-boolean v3, p0, Lcom/stericson/RootTools/Shell;->close:Z

    .line 197
    new-instance v1, Lcom/stericson/RootTools/Shell$1;

    invoke-direct {v1, p0}, Lcom/stericson/RootTools/Shell$1;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    .line 238
    new-instance v1, Lcom/stericson/RootTools/Shell$2;

    invoke-direct {v1, p0}, Lcom/stericson/RootTools/Shell$2;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting shell: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/lang/ProcessBuilder;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    .line 173
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    .line 174
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    .line 176
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    const-string v2, "echo Started\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 182
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 183
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    const-string v3, "Shell Input"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 194
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    const-string v3, "Shell Output"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 195
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 189
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start shell, unexpected output \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$0(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$1(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->readOutput()V

    return-void
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeShell()V

    .line 128
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeRootShell()V

    .line 129
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeCustomShell()V

    .line 130
    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 158
    sget-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    sget-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOutput()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, command:Lcom/stericson/RootTools/Command;
    const/4 v5, 0x0

    .line 254
    .local v5, read:I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 287
    :goto_1
    const-string v6, "Read all output"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 289
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 290
    const-string v6, "Shell destroyed"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 292
    :goto_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 299
    return-void

    .line 261
    :cond_1
    if-nez v0, :cond_3

    .line 262
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 264
    iget-boolean v6, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 268
    :cond_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/Command;
    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 271
    .restart local v0       #command:Lcom/stericson/RootTools/Command;
    :cond_3
    const-string v6, "F*D^W@#FGF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 272
    .local v4, pos:I
    if-lez v4, :cond_4

    .line 273
    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    .line 274
    :cond_4
    if-ltz v4, :cond_5

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, fields:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, id:I
    if-ne v2, v5, :cond_5

    .line 279
    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Command;->exitCode(I)V

    .line 280
    add-int/lit8 v5, v5, 0x1

    .line 281
    const/4 v0, 0x0

    .line 282
    goto :goto_0

    .line 285
    .end local v1           #fields:[Ljava/lang/String;
    .end local v2           #id:I
    :cond_5
    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {v0, v6, v3}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v4           #pos:I
    :cond_6
    if-nez v0, :cond_7

    .line 294
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/Command;
    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 295
    .restart local v0       #command:Lcom/stericson/RootTools/Command;
    :cond_7
    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->terminated()V

    .line 296
    const/4 v0, 0x0

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static runCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 105
    return-void
.end method

.method public static runRootCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 101
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/stericson/RootTools/Shell;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 86
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    return-object v0

    .line 84
    :cond_0
    const-string v0, "Using Existing Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRootShell()Lcom/stericson/RootTools/Shell;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v8, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v8, :cond_2

    .line 54
    const-string v8, "Starting Root Shell!"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 55
    const-string v0, "su"

    .line 58
    .local v0, cmd:Ljava/lang/String;
    const/4 v4, 0x0

    .line 59
    .local v4, retries:I
    :goto_0
    sget-object v8, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-eqz v8, :cond_0

    .line 75
    .end local v0           #cmd:Ljava/lang/String;
    .end local v4           #retries:I
    :goto_1
    sget-object v8, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    return-object v8

    .line 60
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v4       #retries:I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 62
    .local v6, start:J
    :try_start_0
    new-instance v8, Lcom/stericson/RootTools/Shell;

    invoke-direct {v8, v0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    .line 64
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v8, v6

    .line 65
    .local v1, delay:J
    const-wide/16 v8, 0x1f4

    cmp-long v8, v1, v8

    if-ltz v8, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #retries:I
    .local v5, retries:I
    const/16 v8, 0xa

    if-lt v4, v8, :cond_3

    move v4, v5

    .line 66
    .end local v5           #retries:I
    .restart local v4       #retries:I
    :cond_1
    throw v3

    .line 72
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #delay:J
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #retries:I
    .end local v6           #start:J
    :cond_2
    const-string v8, "Using Existing Root Shell!"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #delay:J
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v5       #retries:I
    .restart local v6       #start:J
    :cond_3
    move v4, v5

    .end local v5           #retries:I
    .restart local v4       #retries:I
    goto :goto_0
.end method

.method public static startShell()Lcom/stericson/RootTools/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "Starting Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/stericson/RootTools/Shell;

    const-string v1, "/system/bin/sh"

    invoke-direct {v0, v1}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 96
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    return-object v0

    .line 95
    :cond_0
    const-string v0, "Using Existing Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCommands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v4, 0x0

    .line 212
    .local v4, write:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    .line 212
    .local v3, out:Ljava/io/DataOutputStream;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 219
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericson/RootTools/Command;

    .line 220
    .local v2, next:Lcom/stericson/RootTools/Command;
    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/Command;->writeCommand(Ljava/io/OutputStream;)V

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\necho F*D^W@#FGF "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 223
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #next:Lcom/stericson/RootTools/Command;
    .end local v3           #out:Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 236
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 225
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_5
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v5, :cond_0

    .line 226
    const-string v5, "\nexit 0\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 227
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 228
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 229
    const-string v5, "Closing shell"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    const-string v1, "Unable to add commands to a closed shell"

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 305
    monitor-exit v1

    .line 310
    return-object p1

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 314
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_0

    .line 315
    sput-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    .line 316
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_1

    .line 317
    sput-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 319
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    .line 320
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 318
    monitor-exit v1

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countCommands()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public waitFor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/stericson/RootTools/Shell;->close()V

    .line 330
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 333
    .local v0, command:Lcom/stericson/RootTools/Command;
    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->exitCode()I

    .line 335
    .end local v0           #command:Lcom/stericson/RootTools/Command;
    :cond_0
    return-void
.end method
