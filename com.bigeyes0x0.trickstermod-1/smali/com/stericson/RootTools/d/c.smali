.class public final Lcom/stericson/RootTools/d/c;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/stericson/RootTools/d/c;

    invoke-direct {v0}, Lcom/stericson/RootTools/d/c;-><init>()V

    invoke-static {v0}, Lcom/stericson/RootTools/a;->a(Lcom/stericson/RootTools/d/c;)V

    .line 66
    return-void
.end method

.method private a(Lcom/stericson/RootTools/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 1522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1524
    const-string v0, "RootTools v3.3"

    invoke-static {}, Lcom/stericson/RootTools/c/f;->f()Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootTools/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    monitor-enter p1

    .line 1528
    :try_start_0
    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1529
    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    sget-boolean v0, Lcom/stericson/RootTools/c/f;->a:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/stericson/RootTools/c/f;->b:Z

    if-nez v0, :cond_2

    .line 1538
    const-string v0, "RootTools v3.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for a command to be executed in a shell that is not executing and not reading! \n\n Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1540
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1541
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1542
    :cond_2
    sget-boolean v0, Lcom/stericson/RootTools/c/f;->a:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/stericson/RootTools/c/f;->b:Z

    if-nez v0, :cond_3

    .line 1543
    const-string v0, "RootTools v3.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for a command to be executed in a shell that is executing but not reading! \n\n Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1548
    :cond_3
    const-string v0, "RootTools v3.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for a command to be executed in a shell that is not reading! \n\n Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stericson/RootTools/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1551
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1556
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x2d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    aget-object v1, v0, v3

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_3

    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x77

    if-ne v0, v2, :cond_3

    .line 178
    :cond_2
    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/stericson/RootTools/a/b;

    invoke-direct {v0}, Lcom/stericson/RootTools/a/b;-><init>()V

    .line 182
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/a/b;->b(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/a/b;->c(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x7

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/a/b;->d(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stericson/RootTools/a/b;->e(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/d/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/d/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/d/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/d/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/a/b;->a(I)V

    .line 209
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1250
    sput-boolean v7, Lcom/stericson/RootTools/d/a;->c:Z

    .line 1253
    const-string v0, "toolbox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "busybox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 1288
    :goto_0
    return v0

    .line 1259
    :cond_0
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/d/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v1, "toolbox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/stericson/RootTools/d/e;-><init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->b(Z)Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 1277
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 1279
    sget-boolean v0, Lcom/stericson/RootTools/d/a;->c:Z

    if-eqz v0, :cond_2

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " util!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    move v0, v8

    .line 1281
    goto :goto_0

    .line 1259
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " --list"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1283
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box does not contain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " util!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 1284
    goto/16 :goto_0

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    move v0, v7

    .line 1288
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    .line 413
    if-eqz p2, :cond_0

    .line 414
    :try_start_0
    const-string v2, "RW"

    invoke-static {p1, v2}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 417
    :cond_0
    const-string v2, "rm"

    const-string v3, "toolbox"

    invoke-virtual {p0, v2, v3}, Lcom/stericson/RootTools/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    const-string v2, "rm command is available!"

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 420
    new-instance v2, Lcom/stericson/RootTools/c/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rm -r "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 422
    invoke-direct {p0, v2}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 424
    invoke-virtual {v2}, Lcom/stericson/RootTools/c/e;->f()I

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const-string v0, "target not exist or unable to delete file"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    move v0, v1

    .line 444
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 445
    const-string v2, "RO"

    invoke-static {p1, v2}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    move v1, v0

    .line 452
    :goto_1
    return v1

    .line 429
    :cond_3
    const-string v2, "busybox"

    invoke-virtual {p0, v2}, Lcom/stericson/RootTools/d/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "rm"

    const-string v3, "busybox"

    invoke-virtual {p0, v2, v3}, Lcom/stericson/RootTools/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const-string v2, "busybox cp command is available!"

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 432
    new-instance v2, Lcom/stericson/RootTools/c/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "busybox rm -rf "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 434
    invoke-direct {p0, v2}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 436
    invoke-virtual {v2}, Lcom/stericson/RootTools/c/e;->f()I

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    const-string v0, "target not exist or unable to delete file"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 438
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_0

    .line 215
    const/4 v0, 0x4

    .line 219
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    .line 223
    add-int/lit8 v0, v0, 0x2

    .line 227
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_2

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 235
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 238
    return v0

    :cond_0
    move v0, v1

    .line 217
    goto/16 :goto_0

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 233
    :cond_2
    add-int/lit8 v0, v0, 0x0

    goto :goto_2
.end method

.method public b()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    .line 75
    :try_start_0
    const-string v3, "/data/local/tmp"

    invoke-static {v3}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Lcom/stericson/RootTools/c/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "mkdir /data/local/tmp"

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5, v6}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 79
    invoke-direct {p0, v3}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 83
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/stericson/RootTools/d/a;->f:Ljava/util/Set;

    .line 85
    const-string v3, "/"

    invoke-static {v3}, Lcom/stericson/RootTools/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "/"

    const-string v5, "rw"

    invoke-static {v4, v5}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    new-instance v4, Lcom/stericson/RootTools/c/e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "chmod 0777 /init.rc"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 91
    new-instance v4, Lcom/stericson/RootTools/c/e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "dd if=/init.rc of=/data/local/tmp/init.rc"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 95
    new-instance v4, Lcom/stericson/RootTools/c/e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "chmod 0777 /data/local/tmp/init.rc"

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 98
    invoke-direct {p0, v4}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 100
    const-string v4, "/"

    invoke-static {v4, v3}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/local/tmp/init.rc"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    new-instance v4, Ljava/io/LineNumberReader;

    invoke-direct {v4, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 106
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 108
    const-string v5, "export PATH"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 110
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v6, Lcom/stericson/RootTools/d/a;->f:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 124
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    :goto_1
    return v0

    .line 124
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 128
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    move v0, v1

    .line 129
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    move-object v3, v2

    .line 117
    :goto_4
    :try_start_7
    sget-boolean v4, Lcom/stericson/RootTools/a;->a:Z

    if-eqz v4, :cond_3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 124
    :cond_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 128
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_6
    move v0, v1

    .line 129
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    move-object v4, v2

    .line 124
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 128
    :goto_8
    :try_start_b
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 129
    :goto_9
    throw v0

    .line 125
    :catch_1
    move-exception v1

    goto :goto_0

    .line 129
    :catch_2
    move-exception v1

    goto :goto_1

    .line 125
    :catch_3
    move-exception v0

    goto :goto_2

    .line 129
    :catch_4
    move-exception v0

    goto :goto_3

    .line 125
    :catch_5
    move-exception v0

    goto :goto_5

    .line 129
    :catch_6
    move-exception v0

    goto :goto_6

    .line 125
    :catch_7
    move-exception v1

    goto :goto_8

    .line 129
    :catch_8
    move-exception v1

    goto :goto_9

    .line 123
    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 116
    :catch_9
    move-exception v0

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4
.end method

.method public c(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x73

    .line 242
    const/4 v0, 0x0

    .line 243
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 244
    const/4 v0, 0x4

    .line 246
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 247
    add-int/lit8 v0, v0, 0x2

    .line 249
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 252
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "special permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 254
    return v0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 806
    :try_start_0
    const-string v2, "Checking for Root access"

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 807
    const/4 v2, 0x0

    sput-boolean v2, Lcom/stericson/RootTools/d/a;->a:Z

    .line 809
    new-instance v2, Lcom/stericson/RootTools/d/g;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "id"

    aput-object v7, v5, v6

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/stericson/RootTools/d/g;-><init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 830
    invoke-direct {p0, v2}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 832
    sget-boolean v2, Lcom/stericson/RootTools/d/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 840
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 835
    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 840
    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 941
    invoke-static {v6}, Lcom/stericson/RootTools/a;->b(Z)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/stericson/RootTools/c/e;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "cat /proc/mounts > /data/local/RootToolsMounts"

    aput-object v4, v3, v5

    const-string v4, "chmod 0777 /data/local/RootToolsMounts"

    aput-object v4, v3, v6

    invoke-direct {v1, v5, v5, v3}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 948
    invoke-direct {p0, v1}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 954
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v0, "/data/local/RootToolsMounts"

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 955
    :try_start_1
    new-instance v3, Ljava/io/LineNumberReader;

    invoke-direct {v3, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 957
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    :goto_0
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 960
    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 962
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 963
    new-instance v4, Lcom/stericson/RootTools/a/a;

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, v2, v7

    const/4 v8, 0x3

    aget-object v2, v2, v8

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/stericson/RootTools/a/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 978
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 983
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 985
    :goto_3
    throw v0

    .line 969
    :cond_0
    :try_start_5
    sput-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;

    .line 971
    sget-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 972
    sget-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 978
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 983
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 985
    :goto_5
    return-object v0

    .line 974
    :cond_1
    :try_start_8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 980
    :catch_0
    move-exception v1

    goto :goto_4

    .line 985
    :catch_1
    move-exception v1

    goto :goto_5

    .line 980
    :catch_2
    move-exception v1

    goto :goto_2

    .line 985
    :catch_3
    move-exception v1

    goto :goto_3

    .line 977
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-static {p1}, Lcom/stericson/RootTools/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    sget-object v1, Lcom/stericson/RootTools/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->c(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/stericson/RootTools/a/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 384
    invoke-virtual {v1}, Lcom/stericson/RootTools/a/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    :goto_0
    const-string v4, "755"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "777"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "775"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/a;->c:Ljava/lang/String;

    move v0, v2

    .line 397
    :goto_1
    return v0

    .line 386
    :cond_2
    invoke-virtual {v1}, Lcom/stericson/RootTools/a/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 397
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1033
    sget-object v0, Lcom/stericson/RootTools/d/a;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1034
    sget-object v0, Lcom/stericson/RootTools/d/a;->f:Ljava/util/Set;

    .line 1037
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/stericson/RootTools/d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    sget-object v0, Lcom/stericson/RootTools/d/a;->f:Ljava/util/Set;

    goto :goto_0

    .line 1039
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v0, Lcom/stericson/RootTools/d/d;

    new-array v4, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/stericson/RootTools/d/d;-><init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/util/List;)V

    .line 475
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/c/f;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    invoke-static {}, Lcom/stericson/RootTools/c/f;->j()Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 477
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v6

    .line 518
    :cond_1
    :goto_1
    return v2

    .line 481
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/c/f;->f()Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 482
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    goto :goto_1

    .line 495
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/stericson/RootTools/a;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 499
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 501
    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 502
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v6

    .line 514
    goto :goto_1

    .line 496
    :catch_1
    move-exception v1

    goto :goto_2

    .line 504
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 598
    .line 599
    sget-object v0, Lcom/stericson/RootTools/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 602
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "/sbin/"

    aput-object v0, v11, v9

    const-string v0, "/system/bin/"

    aput-object v0, v11, v8

    const/4 v0, 0x2

    const-string v1, "/system/xbin/"

    aput-object v1, v11, v0

    const/4 v0, 0x3

    const-string v1, "/data/local/xbin/"

    aput-object v1, v11, v0

    const/4 v0, 0x4

    const-string v1, "/data/local/bin/"

    aput-object v1, v11, v0

    const/4 v0, 0x5

    const-string v1, "/system/sd/xbin/"

    aput-object v1, v11, v0

    const/4 v0, 0x6

    const-string v1, "/system/bin/failsafe/"

    aput-object v1, v11, v0

    const/4 v0, 0x7

    const-string v1, "/data/local/"

    aput-object v1, v11, v0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 609
    :try_start_0
    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v7, v11, v10

    .line 610
    new-instance v0, Lcom/stericson/RootTools/d/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stat "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/stericson/RootTools/d/f;-><init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 623
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/stericson/RootTools/a;->b(Z)Lcom/stericson/RootTools/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 624
    invoke-direct {p0, v0}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 609
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 628
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    :goto_1
    move v1, v0

    .line 633
    :goto_2
    if-nez v1, :cond_4

    .line 634
    const-string v0, "Trying second method"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 636
    array-length v2, v11

    move v0, v1

    :goto_3
    if-ge v9, v2, :cond_3

    aget-object v1, v11, v9

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " was found here: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 639
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    .line 636
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    move v0, v9

    .line 628
    goto :goto_1

    .line 629
    :catch_0
    move-exception v0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    move v1, v9

    goto :goto_2

    .line 642
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was NOT found here: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move v1, v0

    .line 647
    :cond_4
    if-nez v1, :cond_6

    .line 648
    const-string v0, "Trying third method"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 651
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/a;->b()Ljava/util/Set;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_6

    .line 654
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found here: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 657
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    :goto_6
    move v1, v0

    .line 660
    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was NOT found here: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_6

    .line 664
    :catch_1
    move-exception v0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 669
    :cond_6
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 671
    sget-object v0, Lcom/stericson/RootTools/a;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 673
    return v1
.end method

.method public g(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking permissions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 876
    invoke-static {p1}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 880
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/d/h;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/failsafe/toolbox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toolbox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/stericson/RootTools/d/h;-><init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;)V

    .line 916
    invoke-static {}, Lcom/stericson/RootTools/c/f;->i()Lcom/stericson/RootTools/c/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 917
    invoke-direct {p0, v1}, Lcom/stericson/RootTools/d/c;->a(Lcom/stericson/RootTools/c/a;)V

    .line 919
    sget-object v0, Lcom/stericson/RootTools/d/a;->i:Lcom/stericson/RootTools/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    return-object v0

    .line 921
    :catch_0
    move-exception v1

    .line 922
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/stericson/RootTools/d/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;

    .line 1000
    sget-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1001
    sget-object v0, Lcom/stericson/RootTools/d/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/a/a;

    .line 1003
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/a;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1005
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1006
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    .line 1016
    :goto_0
    return-object v0

    .line 1014
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    :cond_2
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/a;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0}, Lcom/stericson/RootTools/a/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1020
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 1022
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
