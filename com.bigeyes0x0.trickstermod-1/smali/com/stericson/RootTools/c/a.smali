.class public abstract Lcom/stericson/RootTools/c/a;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field a:Lcom/stericson/RootTools/c/d;

.field b:Landroid/os/Handler;

.field c:Z

.field d:[Ljava/lang/String;

.field e:Z

.field f:Landroid/content/Context;

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:I

.field l:I


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->a:Lcom/stericson/RootTools/c/d;

    .line 39
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->c:Z

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->e:Z

    .line 44
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->f:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->g:Z

    .line 46
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->h:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/a;->i:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/c/a;->j:I

    .line 49
    iput v1, p0, Lcom/stericson/RootTools/c/a;->k:I

    .line 50
    sget v0, Lcom/stericson/RootTools/a;->e:I

    iput v0, p0, Lcom/stericson/RootTools/c/a;->l:I

    .line 90
    iput-object p3, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    .line 91
    iput p1, p0, Lcom/stericson/RootTools/c/a;->k:I

    .line 92
    iput p2, p0, Lcom/stericson/RootTools/c/a;->l:I

    .line 94
    sget-boolean v0, Lcom/stericson/RootTools/a;->d:Z

    invoke-direct {p0, v0}, Lcom/stericson/RootTools/c/a;->a(Z)V

    .line 95
    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->a:Lcom/stericson/RootTools/c/d;

    .line 39
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->c:Z

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->e:Z

    .line 44
    iput-object v2, p0, Lcom/stericson/RootTools/c/a;->f:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->g:Z

    .line 46
    iput-boolean v1, p0, Lcom/stericson/RootTools/c/a;->h:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/a;->i:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/stericson/RootTools/c/a;->j:I

    .line 49
    iput v1, p0, Lcom/stericson/RootTools/c/a;->k:I

    .line 50
    sget v0, Lcom/stericson/RootTools/a;->e:I

    iput v0, p0, Lcom/stericson/RootTools/c/a;->l:I

    .line 76
    iput-object p3, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/stericson/RootTools/c/a;->k:I

    .line 79
    invoke-direct {p0, p2}, Lcom/stericson/RootTools/c/a;->a(Z)V

    .line 80
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/stericson/RootTools/c/a;->i:Z

    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 161
    const-string v0, "CommandHandler created"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/stericson/RootTools/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/RootTools/c/c;-><init>(Lcom/stericson/RootTools/c/a;Lcom/stericson/RootTools/c/b;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "CommandHandler not created"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/a;->c:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/a;->g:Z

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    return-void
.end method

.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iput p1, p0, Lcom/stericson/RootTools/c/a;->j:I

    .line 215
    monitor-exit p0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a(II)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/c/f;->e()V

    .line 228
    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->h:Z

    if-nez v0, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->i:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v2, "action"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v1, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/stericson/RootTools/c/a;->a()V

    .line 152
    monitor-exit p0

    .line 154
    :cond_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/stericson/RootTools/c/a;->k:I

    iget v1, p0, Lcom/stericson/RootTools/c/a;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/stericson/RootTools/c/a;->a(II)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b(ILjava/lang/String;)V
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 234
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->i:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    iget-object v1, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/c/a;->a(I)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/c/a;->h:Z

    .line 252
    invoke-virtual {p0}, Lcom/stericson/RootTools/c/a;->a()V

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {p0, v0, p1}, Lcom/stericson/RootTools/c/a;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget-boolean v2, p0, Lcom/stericson/RootTools/c/a;->e:Z

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/stericson/RootTools/c/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dalvikvm -cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/anbuild.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " com.android.internal.util.WithFramework"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " com.stericson.RootTools.containers.RootClass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/stericson/RootTools/c/a;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->i:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    iget-object v1, p0, Lcom/stericson/RootTools/c/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stericson/RootTools/c/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/stericson/RootTools/c/a;->g:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/stericson/RootTools/c/a;->j:I

    return v0
.end method

.method protected g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    new-instance v0, Lcom/stericson/RootTools/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/RootTools/c/d;-><init>(Lcom/stericson/RootTools/c/a;Lcom/stericson/RootTools/c/b;)V

    iput-object v0, p0, Lcom/stericson/RootTools/c/a;->a:Lcom/stericson/RootTools/c/d;

    .line 220
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->a:Lcom/stericson/RootTools/c/d;

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/c/d;->setPriority(I)V

    .line 221
    iget-object v0, p0, Lcom/stericson/RootTools/c/a;->a:Lcom/stericson/RootTools/c/d;

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/d;->start()V

    .line 222
    iput-boolean v2, p0, Lcom/stericson/RootTools/c/a;->c:Z

    .line 223
    return-void
.end method
