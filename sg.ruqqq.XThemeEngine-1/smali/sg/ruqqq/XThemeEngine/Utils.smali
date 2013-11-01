.class public Lsg/ruqqq/XThemeEngine/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static PACKAGE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "XThemeEngine/Utils"

    sput-object v0, Lsg/ruqqq/XThemeEngine/Utils;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "sg.ruqqq.XThemeEngine"

    sput-object v0, Lsg/ruqqq/XThemeEngine/Utils;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfModuleIsActivated(Ljava/lang/String;)Z
    .locals 6
    .parameter "modulePackageName"

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "cat /data/xposed/modules.whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 106
    .local v1, proc:Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v3, stdInput:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const/4 v4, 0x1

    .line 118
    .end local v1           #proc:Ljava/lang/Process;
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #stdInput:Ljava/io/BufferedReader;
    :goto_0
    return v4

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "filename"
    .parameter "dest"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 29
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 31
    .local v2, files:[Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    :goto_0
    const/4 v3, 0x0

    .line 36
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 38
    .local v4, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 39
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v3, v5}, Lsg/ruqqq/XThemeEngine/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 44
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    const/4 v4, 0x0

    .line 49
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 32
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/io/IOException;
    const-string v6, "tag"

    const-string v7, "Failed to get asset file list."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 47
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy asset file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 46
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static copyFdToFile(Ljava/io/FileDescriptor;Ljava/io/File;)V
    .locals 6
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 16
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 18
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 22
    :cond_0
    if-eqz v5, :cond_1

    .line 23
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 25
    :cond_1
    return-void

    .line 20
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 22
    :cond_2
    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    throw v1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 54
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static flushLogcatToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "filename"

    .prologue
    .line 81
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lsg/ruqqq/XThemeEngine/Utils;->getLogcat()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, logcat:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 89
    .local v1, data:[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 92
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 93
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v3           #f:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #logcat:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 8

    .prologue
    .line 60
    const-string v0, "logcat -v -d time XThemeEngine *:S"

    .line 61
    .local v0, baseCommand:Ljava/lang/String;
    const-string v4, ""

    .line 63
    .local v4, output:Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 66
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v6, reader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 72
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 73
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    return-object v4
.end method
