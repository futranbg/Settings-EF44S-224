.class public Lde/robv/android/xposed/installer/InstallerFragment;
.super Landroid/app/Fragment;
.source "InstallerFragment.java"


# static fields
.field private static PATTERN_APP_PROCESS_VERSION:Ljava/util/regex/Pattern;


# instance fields
.field private APP_PROCESS_NAME:Ljava/lang/String;

.field private final BINARIES_FOLDER:Ljava/lang/String;

.field private XPOSEDTEST_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ".*with Xposed support \\(version (.+)\\).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/installer/InstallerFragment;->PATTERN_APP_PROCESS_VERSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 36
    iput-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    .line 38
    invoke-static {}, Lde/robv/android/xposed/installer/InstallerFragment;->getBinariesFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->install()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->uninstall()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->cleanup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lde/robv/android/xposed/installer/InstallerFragment;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lde/robv/android/xposed/installer/InstallerFragment;->areYouSure(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$6(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 380
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->reboot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 376
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->softReboot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private areYouSure(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageTextId"
    .parameter "yesHandler"

    .prologue
    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 200
    return-void
.end method

.method private checkAppProcessCompatibility()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    :try_start_0
    iget-object v7, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v5

    .line 249
    :cond_1
    iget-object v7, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    const-string v8, "app_process"

    invoke-direct {p0, v7, v8}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 250
    .local v4, testFile:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 253
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/io/File;->setExecutable(Z)Z

    .line 254
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "--xposedversion"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 256
    .local v1, p:Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 257
    .local v3, stdout:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 259
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 262
    if-eqz v2, :cond_0

    const-string v7, "Xposed version: "

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 263
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #stdout:Ljava/io/BufferedReader;
    .end local v4           #testFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private checkCompatibility()Z
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->checkXposedTestCompatibility()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->checkAppProcessCompatibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkXposedTestCompatibility()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    :try_start_0
    iget-object v7, p0, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v5

    .line 225
    :cond_1
    iget-object v7, p0, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    const-string v8, "xposedtest"

    invoke-direct {p0, v7, v8}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 226
    .local v4, testFile:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 229
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/io/File;->setExecutable(Z)Z

    .line 230
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 232
    .local v1, p:Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v3, stdout:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 235
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 238
    if-eqz v2, :cond_0

    const-string v7, "OK"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 239
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #stdout:Ljava/io/BufferedReader;
    .end local v4           #testFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private cleanup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "cleanup.sh"

    invoke-direct {p0, v0}, Lde/robv/android/xposed/installer/InstallerFragment;->executeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "name"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 385
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 386
    .local v5, scriptFile:Ljava/io/File;
    if-nez v5, :cond_0

    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not find asset \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 427
    :goto_0
    return-object v9

    .line 389
    :cond_0
    const-string v9, "busybox-xposed"

    invoke-direct {p0, v9}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 390
    .local v0, busybox:Ljava/io/File;
    if-nez v0, :cond_1

    .line 391
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 392
    const-string v9, "Could not find asset \"busybox-xposed\""

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v5, v11, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 396
    invoke-virtual {v5, v11, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 398
    invoke-virtual {v0, v11, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 399
    invoke-virtual {v0, v11, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 402
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 403
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 404
    const-string v12, "su"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 405
    const-string v12, "-c"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 406
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cd "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 407
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " 2>&1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 406
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 402
    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 409
    .local v3, p:Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 410
    .local v7, stdout:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 411
    .local v6, stderr:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 417
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 421
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 422
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 414
    :cond_2
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 424
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #stderr:Ljava/io/BufferedReader;
    .end local v7           #stdout:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 426
    .local v8, sw:Ljava/io/StringWriter;
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 427
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 418
    .end local v1           #e:Ljava/io/IOException;
    .end local v8           #sw:Ljava/io/StringWriter;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #stderr:Ljava/io/BufferedReader;
    .restart local v7       #stdout:Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 428
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #stderr:Ljava/io/BufferedReader;
    .end local v7           #stdout:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 431
    throw v9
.end method

.method private getAppProcessVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "is"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 295
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 304
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 305
    .end local p2
    :goto_0
    return-object p2

    .line 296
    .restart local p2
    :cond_1
    const-string v3, "Xposed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    sget-object v3, Lde/robv/android/xposed/installer/InstallerFragment;->PATTERN_APP_PROCESS_VERSION:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 299
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 301
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static getBinariesFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lde/robv/android/xposed/installer/XposedApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_armv5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "armv5te/"

    .line 212
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const-string v0, "armv7-a/"

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "armv5te/"

    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string v0, "armv5te/"

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 270
    .line 271
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/bin/app_process"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->getAppProcessVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/io/IOException;
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 310
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/xposed/XposedBridge.jar.newversion"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/data/xposed/XposedBridge.jar.newversion"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 315
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-object p0

    .line 313
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/data/xposed/XposedBridge.jar"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private getJarLatestVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "XposedBridge.jar"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 323
    .end local p1
    :goto_0
    return-object p1

    .line 322
    .restart local p1
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getJarVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "is"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v2, Ljava/util/jar/JarInputStream;

    invoke-direct {v2, p0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 331
    .local v2, jis:Ljava/util/jar/JarInputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, entry:Ljava/util/jar/JarEntry;
    if-nez v1, :cond_1

    .line 343
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v3, p1

    .line 346
    :goto_1
    return-object v3

    .line 332
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "assets/VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 336
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, version:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 338
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 344
    :catch_0
    move-exception v4

    goto :goto_1

    .line 341
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #entry:Ljava/util/jar/JarEntry;
    .end local v3           #version:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 343
    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 345
    :goto_2
    throw v4

    .line 344
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v1       #entry:Ljava/util/jar/JarEntry;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private getLatestAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 279
    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 287
    .end local p1
    :goto_0
    return-object p1

    .line 284
    .restart local p1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 283
    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->getAppProcessVersion(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private install()Ljava/lang/String;
    .locals 5

    .prologue
    .line 350
    iget-object v3, p0, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-direct {p0, v3, v4}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, appProcessFile:Ljava/io/File;
    if-nez v0, :cond_0

    .line 352
    const-string v2, "Could not find asset \"app_process\""

    .line 365
    :goto_0
    return-object v2

    .line 354
    :cond_0
    const-string v3, "XposedBridge.jar"

    invoke-direct {p0, v3}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 355
    .local v1, jarFile:Ljava/io/File;
    if-nez v1, :cond_1

    .line 356
    const-string v2, "Could not find asset \"XposedBridge.jar\""

    goto :goto_0

    .line 358
    :cond_1
    const-string v3, "Xposed-Disabler-CWM.zip"

    invoke-direct {p0, v3}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToSdcardFile(Ljava/lang/String;)Z

    .line 360
    const-string v3, "install.sh"

    invoke-direct {p0, v3}, Lde/robv/android/xposed/installer/InstallerFragment;->executeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 363
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private reboot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string v0, "reboot.sh"

    invoke-direct {p0, v0}, Lde/robv/android/xposed/installer/InstallerFragment;->executeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 186
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 189
    return-void
.end method

.method private softReboot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string v0, "soft_reboot.sh"

    invoke-direct {p0, v0}, Lde/robv/android/xposed/installer/InstallerFragment;->executeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private uninstall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "uninstall.sh"

    invoke-direct {p0, v0}, Lde/robv/android/xposed/installer/InstallerFragment;->executeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeAssetToCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 435
    invoke-direct {p0, p1, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private writeAssetToCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "assetName"
    .parameter "fileName"

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 442
    .local v4, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 445
    .local v6, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 447
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-gtz v5, :cond_0

    .line 450
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 451
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    move-object v2, v3

    .line 459
    .end local v0           #buffer:[B
    .end local v3           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #len:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    return-object v3

    .line 448
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #buffer:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #len:I
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 454
    .end local v0           #buffer:[B
    .end local v5           #len:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 455
    .end local v3           #file:Ljava/io/File;
    .end local v4           #in:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 456
    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 459
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 454
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private writeAssetToSdcardFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 464
    invoke-direct {p0, p1, p1}, Lde/robv/android/xposed/installer/InstallerFragment;->writeAssetToSdcardFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private writeAssetToSdcardFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "assetName"
    .parameter "fileName"

    .prologue
    const/4 v8, 0x0

    .line 468
    const/4 v3, 0x0

    .line 470
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 471
    .local v5, in:Ljava/io/InputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 472
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 473
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 476
    .local v7, out:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 478
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    if-gtz v6, :cond_1

    .line 481
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 482
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 484
    const/4 v8, 0x1

    move-object v3, v4

    .line 490
    .end local v0           #buffer:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    :goto_1
    return v8

    .line 479
    .end local v3           #file:Ljava/io/File;
    .restart local v0       #buffer:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 485
    .end local v0           #buffer:[B
    .end local v6           #len:I
    .end local v7           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 486
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/InputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #file:Ljava/io/File;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 485
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const v20, 0x7f03000b

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 53
    .local v19, v:Landroid/view/View;
    const v20, 0x7f0a001e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 54
    .local v15, txtAppProcessInstalledVersion:Landroid/widget/TextView;
    const v20, 0x7f0a001f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 55
    .local v16, txtAppProcessLatestVersion:Landroid/widget/TextView;
    const v20, 0x7f0a0020

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 56
    .local v17, txtJarInstalledVersion:Landroid/widget/TextView;
    const v20, 0x7f0a0021

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 58
    .local v18, txtJarLatestVersion:Landroid/widget/TextView;
    const v20, 0x7f0a0007

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 59
    .local v7, btnInstall:Landroid/widget/Button;
    const v20, 0x7f0a0022

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 60
    .local v10, btnUninstall:Landroid/widget/Button;
    const v20, 0x7f0a0023

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 61
    .local v6, btnCleanup:Landroid/widget/Button;
    const v20, 0x7f0a0024

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 62
    .local v9, btnSoftReboot:Landroid/widget/Button;
    const v20, 0x7f0a0025

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 64
    .local v8, btnReboot:Landroid/widget/Button;
    const/4 v11, 0x0

    .line 65
    .local v11, isCompatible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 67
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 68
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "app_process_xposed_sdk15"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    .line 69
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "xposedtest_sdk15"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    .line 70
    invoke-direct/range {p0 .. p0}, Lde/robv/android/xposed/installer/InstallerFragment;->checkCompatibility()Z

    move-result v11

    .line 87
    :cond_0
    :goto_0
    const v20, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 88
    .local v14, none:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lde/robv/android/xposed/installer/InstallerFragment;->getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, appProcessInstalledVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lde/robv/android/xposed/installer/InstallerFragment;->getLatestAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, appProcessLatestVersion:Ljava/lang/String;
    invoke-static {v14}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, jarInstalledVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarLatestVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, jarLatestVersion:Ljava/lang/String;
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 99
    invoke-static {v4, v5}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_5

    .line 100
    :cond_1
    const/high16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_1
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 105
    invoke-static {v12, v13}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_6

    .line 106
    :cond_2
    const/high16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :goto_2
    if-eqz v11, :cond_7

    .line 112
    new-instance v20, Lde/robv/android/xposed/installer/InstallerFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v14, v2}, Lde/robv/android/xposed/installer/InstallerFragment$1;-><init>(Lde/robv/android/xposed/installer/InstallerFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_3
    new-instance v20, Lde/robv/android/xposed/installer/InstallerFragment$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v14, v2}, Lde/robv/android/xposed/installer/InstallerFragment$2;-><init>(Lde/robv/android/xposed/installer/InstallerFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v20, Lde/robv/android/xposed/installer/InstallerFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v14, v2}, Lde/robv/android/xposed/installer/InstallerFragment$3;-><init>(Lde/robv/android/xposed/installer/InstallerFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v20, Lde/robv/android/xposed/installer/InstallerFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment$4;-><init>(Lde/robv/android/xposed/installer/InstallerFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v20, Lde/robv/android/xposed/installer/InstallerFragment$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment$5;-><init>(Lde/robv/android/xposed/installer/InstallerFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v19

    .line 72
    .end local v4           #appProcessInstalledVersion:Ljava/lang/String;
    .end local v5           #appProcessLatestVersion:Ljava/lang/String;
    .end local v12           #jarInstalledVersion:Ljava/lang/String;
    .end local v13           #jarLatestVersion:Ljava/lang/String;
    .end local v14           #none:Ljava/lang/String;
    :cond_3
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x12

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 73
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "app_process_xposed_sdk16"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    .line 74
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "xposedtest_sdk16"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    .line 75
    invoke-direct/range {p0 .. p0}, Lde/robv/android/xposed/installer/InstallerFragment;->checkCompatibility()Z

    move-result v11

    .line 77
    goto/16 :goto_0

    :cond_4
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x12

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 78
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "app_process_xposed_sdk16"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->APP_PROCESS_NAME:Ljava/lang/String;

    .line 79
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/InstallerFragment;->BINARIES_FOLDER:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "xposedtest_sdk16"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/robv/android/xposed/installer/InstallerFragment;->XPOSEDTEST_NAME:Ljava/lang/String;

    .line 80
    invoke-direct/range {p0 .. p0}, Lde/robv/android/xposed/installer/InstallerFragment;->checkCompatibility()Z

    move-result v11

    .line 81
    if-eqz v11, :cond_0

    .line 82
    const v20, 0x7f08001b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/16 v20, -0x100

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 102
    .restart local v4       #appProcessInstalledVersion:Ljava/lang/String;
    .restart local v5       #appProcessLatestVersion:Ljava/lang/String;
    .restart local v12       #jarInstalledVersion:Ljava/lang/String;
    .restart local v13       #jarLatestVersion:Ljava/lang/String;
    .restart local v14       #none:Ljava/lang/String;
    :cond_5
    const v20, -0xff0100

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 108
    :cond_6
    const v20, -0xff0100

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 126
    :cond_7
    const v20, 0x7f08001a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/high16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3
.end method
