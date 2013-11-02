.class public Lde/robv/android/xposed/installer/util/RepoLoader;
.super Ljava/lang/Object;
.source "RepoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;
    }
.end annotation


# static fields
.field private static mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;


# instance fields
.field private mApp:Lde/robv/android/xposed/installer/XposedApp;

.field private mConMgr:Landroid/net/ConnectivityManager;

.field private mIsLoading:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/repo/ModuleGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPref:Landroid/content/SharedPreferences;

.field private mReloadTriggeredOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    .line 39
    iput-boolean v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z

    .line 40
    iput-boolean v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mReloadTriggeredOnce:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;

    .line 45
    invoke-static {}, Lde/robv/android/xposed/installer/XposedApp;->getInstance()Lde/robv/android/xposed/installer/XposedApp;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    .line 46
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    const-string v1, "repo"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/XposedApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mConMgr:Landroid/net/ConnectivityManager;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/util/RepoLoader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/util/RepoLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->downloadFiles()V

    return-void
.end method

.method static synthetic access$2(Lde/robv/android/xposed/installer/util/RepoLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->parseFiles()V

    return-void
.end method

.method static synthetic access$3(Lde/robv/android/xposed/installer/util/RepoLoader;)Lde/robv/android/xposed/installer/XposedApp;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    return-object v0
.end method

.method static synthetic access$4(Lde/robv/android/xposed/installer/util/RepoLoader;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5()Lde/robv/android/xposed/installer/util/RepoLoader;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;

    return-object v0
.end method

.method static synthetic access$6(Lde/robv/android/xposed/installer/util/RepoLoader;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z

    return-void
.end method

.method private downloadFiles()V
    .locals 29

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "last_update_check"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 204
    .local v10, lastUpdateCheck:J
    const v3, 0x5265c00

    .line 205
    .local v3, UPDATE_FREQUENCY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    int-to-long v0, v3

    move-wide/from16 v23, v0

    add-long v23, v23, v10

    cmp-long v21, v21, v23

    if-gez v21, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mConMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 209
    .local v13, netInfo:Landroid/net/NetworkInfo;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 212
    invoke-virtual/range {p0 .. p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->getRepositories()[Ljava/lang/String;

    move-result-object v18

    .line 213
    .local v18, repos:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    move/from16 v22, v21

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "last_update_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 213
    :cond_2
    aget-object v17, v18, v22

    .line 214
    .local v17, repo:Ljava/lang/String;
    const/4 v6, 0x0

    .line 215
    .local v6, connection:Ljava/net/URLConnection;
    const/4 v9, 0x0

    .line 216
    .local v9, in:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 218
    .local v14, out:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lde/robv/android/xposed/installer/util/RepoLoader;->getRepoCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 220
    .local v5, cacheFile:Ljava/io/File;
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 221
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 222
    const/16 v21, 0x7530

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 223
    const/16 v21, 0x7530

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 225
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 227
    const-string v21, ".gz"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 228
    const-string v21, "Accept-Encoding"

    const-string v24, "identity"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "repo_"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_modified"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, modified:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "repo_"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_etag"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, etag:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 235
    const-string v21, "If-Modified-Since"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_4
    if-eqz v7, :cond_5

    .line 237
    const-string v21, "If-None-Match"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v7}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v7           #etag:Ljava/lang/String;
    .end local v12           #modified:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 243
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 244
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 245
    .local v8, httpConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    move-result v19

    .line 246
    .local v19, responseCode:I
    const/16 v21, 0x130

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 277
    if-eqz v6, :cond_6

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v21, v6

    .line 278
    check-cast v21, Ljava/net/HttpURLConnection;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    :cond_6
    if-eqz v9, :cond_7

    .line 280
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 281
    :cond_7
    :goto_2
    if-eqz v14, :cond_8

    .line 282
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 213
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v8           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v19           #responseCode:I
    :cond_8
    :goto_3
    add-int/lit8 v21, v22, 0x1

    move/from16 v22, v21

    goto/16 :goto_1

    .line 248
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v8       #httpConnection:Ljava/net/HttpURLConnection;
    .restart local v19       #responseCode:I
    :cond_9
    const/16 v21, 0xc8

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    const/16 v21, 0x12c

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 249
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    move-object/from16 v24, v0

    const v25, 0x7f080058

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v17, v26, v27

    const/16 v27, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lde/robv/android/xposed/installer/XposedApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b

    .line 277
    if-eqz v6, :cond_b

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v21, v6

    .line 278
    check-cast v21, Ljava/net/HttpURLConnection;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    :cond_b
    if-eqz v9, :cond_c

    .line 280
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 281
    :cond_c
    :goto_4
    if-eqz v14, :cond_8

    .line 282
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v21

    goto :goto_3

    .line 254
    .end local v8           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v19           #responseCode:I
    :cond_d
    :try_start_6
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 255
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    .line 256
    .end local v14           #out:Ljava/io/FileOutputStream;
    .local v15, out:Ljava/io/FileOutputStream;
    const/16 v21, 0x400

    :try_start_7
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 258
    .local v4, buf:[B
    :goto_5
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, read:I
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 262
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 263
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 264
    .restart local v8       #httpConnection:Ljava/net/HttpURLConnection;
    const-string v21, "Last-Modified"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .restart local v12       #modified:Ljava/lang/String;
    const-string v21, "ETag"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .restart local v7       #etag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 268
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "repo_"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_modified"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 269
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "repo_"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_etag"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 270
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 277
    .end local v7           #etag:Ljava/lang/String;
    .end local v8           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v12           #modified:Ljava/lang/String;
    :cond_e
    if-eqz v6, :cond_f

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v21, v6

    .line 278
    check-cast v21, Ljava/net/HttpURLConnection;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    :cond_f
    if-eqz v9, :cond_10

    .line 280
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 281
    :cond_10
    :goto_6
    if-eqz v15, :cond_17

    .line 282
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 259
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :cond_11
    const/16 v21, 0x0

    :try_start_a
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    .line 273
    .end local v4           #buf:[B
    .end local v16           #read:I
    :catch_1
    move-exception v20

    move-object v14, v15

    .line 274
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .local v20, t:Ljava/lang/Throwable;
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    move-object/from16 v24, v0

    const v25, 0x7f080059

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v17, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lde/robv/android/xposed/installer/XposedApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 277
    if-eqz v6, :cond_12

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v21, v6

    .line 278
    check-cast v21, Ljava/net/HttpURLConnection;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    :cond_12
    if-eqz v9, :cond_13

    .line 280
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 281
    :cond_13
    :goto_8
    if-eqz v14, :cond_8

    .line 282
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v21

    goto/16 :goto_3

    .line 276
    .end local v20           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v21

    .line 277
    :goto_9
    if-eqz v6, :cond_14

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 278
    check-cast v6, Ljava/net/HttpURLConnection;

    .end local v6           #connection:Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    :cond_14
    if-eqz v9, :cond_15

    .line 280
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 281
    :cond_15
    :goto_a
    if-eqz v14, :cond_16

    .line 282
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 283
    :cond_16
    :goto_b
    throw v21

    .line 282
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #connection:Ljava/net/URLConnection;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :catch_3
    move-exception v21

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 280
    .end local v4           #buf:[B
    .end local v16           #read:I
    .restart local v8       #httpConnection:Ljava/net/HttpURLConnection;
    .restart local v19       #responseCode:I
    :catch_4
    move-exception v21

    goto/16 :goto_2

    .line 282
    :catch_5
    move-exception v21

    goto/16 :goto_3

    .line 280
    :catch_6
    move-exception v21

    goto/16 :goto_4

    .end local v5           #cacheFile:Ljava/io/File;
    .end local v8           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v19           #responseCode:I
    .restart local v20       #t:Ljava/lang/Throwable;
    :catch_7
    move-exception v21

    goto :goto_8

    .end local v6           #connection:Ljava/net/URLConnection;
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_8
    move-exception v22

    goto :goto_a

    .line 282
    :catch_9
    move-exception v22

    goto :goto_b

    .line 280
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #connection:Ljava/net/URLConnection;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :catch_a
    move-exception v21

    goto/16 :goto_6

    .line 276
    .end local v4           #buf:[B
    .end local v16           #read:I
    :catchall_1
    move-exception v21

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 273
    .end local v5           #cacheFile:Ljava/io/File;
    :catch_b
    move-exception v20

    goto :goto_7

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :cond_17
    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public static declared-synchronized getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lde/robv/android/xposed/installer/util/RepoLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lde/robv/android/xposed/installer/util/RepoLoader;

    invoke-direct {v0}, Lde/robv/android/xposed/installer/util/RepoLoader;-><init>()V

    sput-object v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;

    .line 53
    :cond_0
    sget-object v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mInstance:Lde/robv/android/xposed/installer/util/RepoLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRepoCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "repo"

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "repo_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lde/robv/android/xposed/installer/util/HashUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, filename:Ljava/lang/String;
    const-string v1, ".gz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/XposedApp;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private parseFiles()V
    .locals 20

    .prologue
    .line 299
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v6, modules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lde/robv/android/xposed/installer/repo/ModuleGroup;>;"
    invoke-virtual/range {p0 .. p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->getRepositories()[Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, repos:[Ljava/lang/String;
    array-length v13, v9

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    .line 334
    move-object/from16 v0, p0

    iput-object v6, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    .line 335
    return-void

    .line 302
    :cond_0
    aget-object v8, v9, v12

    .line 303
    .local v8, repo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 305
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lde/robv/android/xposed/installer/util/RepoLoader;->getRepoCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 306
    .local v1, cacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    if-nez v14, :cond_2

    .line 329
    if-eqz v3, :cond_1

    .line 330
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 302
    .end local v1           #cacheFile:Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 309
    .restart local v1       #cacheFile:Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_3
    const-string v14, ".gz"

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 311
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 313
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    new-instance v7, Lde/robv/android/xposed/installer/repo/RepoParser;

    invoke-direct {v7, v3}, Lde/robv/android/xposed/installer/repo/RepoParser;-><init>(Ljava/io/InputStream;)V

    .line 314
    .local v7, parser:Lde/robv/android/xposed/installer/repo/RepoParser;
    invoke-virtual {v7}, Lde/robv/android/xposed/installer/repo/RepoParser;->parse()Lde/robv/android/xposed/installer/repo/Repository;

    move-result-object v10

    .line 316
    .local v10, repository:Lde/robv/android/xposed/installer/repo/Repository;
    iget-object v14, v10, Lde/robv/android/xposed/installer/repo/Repository;->modules:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v15

    if-nez v15, :cond_3

    .line 329
    if-eqz v3, :cond_1

    .line 330
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v14

    goto :goto_1

    .line 316
    :cond_3
    :try_start_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/robv/android/xposed/installer/repo/Module;

    .line 317
    .local v5, mod:Lde/robv/android/xposed/installer/repo/Module;
    iget-object v15, v5, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/installer/repo/ModuleGroup;

    .line 318
    .local v2, existing:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    if-eqz v2, :cond_4

    .line 319
    invoke-virtual {v2, v5}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->addModule(Lde/robv/android/xposed/installer/repo/Module;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 324
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v2           #existing:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    .end local v5           #mod:Lde/robv/android/xposed/installer/repo/Module;
    .end local v7           #parser:Lde/robv/android/xposed/installer/repo/RepoParser;
    .end local v10           #repository:Lde/robv/android/xposed/installer/repo/Repository;
    :catch_1
    move-exception v11

    .line 325
    .local v11, t:Ljava/lang/Throwable;
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    const v16, 0x7f08005a

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lde/robv/android/xposed/installer/XposedApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lde/robv/android/xposed/installer/util/RepoLoader;->removeRepoFile(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 329
    if-eqz v3, :cond_1

    .line 330
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_2
    move-exception v14

    goto :goto_1

    .line 321
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v1       #cacheFile:Ljava/io/File;
    .restart local v2       #existing:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    .restart local v5       #mod:Lde/robv/android/xposed/installer/repo/Module;
    .restart local v7       #parser:Lde/robv/android/xposed/installer/repo/RepoParser;
    .restart local v10       #repository:Lde/robv/android/xposed/installer/repo/Repository;
    :cond_4
    :try_start_9
    iget-object v15, v5, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    new-instance v16, Lde/robv/android/xposed/installer/repo/ModuleGroup;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lde/robv/android/xposed/installer/repo/ModuleGroup;-><init>(Lde/robv/android/xposed/installer/repo/Module;)V

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 328
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v2           #existing:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    .end local v5           #mod:Lde/robv/android/xposed/installer/repo/Module;
    .end local v7           #parser:Lde/robv/android/xposed/installer/repo/RepoParser;
    .end local v10           #repository:Lde/robv/android/xposed/installer/repo/Repository;
    :catchall_0
    move-exception v12

    .line 329
    :goto_5
    if-eqz v3, :cond_5

    .line 330
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 331
    :cond_5
    :goto_6
    throw v12

    .line 330
    .restart local v1       #cacheFile:Ljava/io/File;
    :catch_3
    move-exception v14

    goto/16 :goto_1

    .end local v1           #cacheFile:Ljava/io/File;
    :catch_4
    move-exception v13

    goto :goto_6

    .line 328
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v1       #cacheFile:Ljava/io/File;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 324
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v11

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_4

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_6
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method private removeRepoFile(Ljava/lang/String;)V
    .locals 3
    .parameter "repo"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/util/RepoLoader;->getRepoCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "repo_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "repo_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_etag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method


# virtual methods
.method public addListener(Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;Z)V
    .locals 1
    .parameter "listener"
    .parameter "triggerImmediately"

    .prologue
    .line 339
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    if-eqz p2, :cond_1

    .line 343
    invoke-interface {p1, p0}, Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;->onRepoReloaded(Lde/robv/android/xposed/installer/util/RepoLoader;)V

    .line 344
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 141
    monitor-exit p0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    .line 139
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLatestVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;
    .locals 4
    .parameter "module"

    .prologue
    const/4 v1, 0x0

    .line 72
    if-eqz p1, :cond_0

    iget-object v2, p1, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v2, p1, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 76
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;

    .line 77
    .local v0, version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    iget-object v3, v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->downloadLink:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/repo/Module;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 65
    iget-object v1, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/ModuleGroup;

    .line 66
    .local v0, group:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v1

    goto :goto_0
.end method

.method public getModuleGroup(Ljava/lang/String;)Lde/robv/android/xposed/installer/repo/ModuleGroup;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 61
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/ModuleGroup;

    return-object v0
.end method

.method public getModules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/repo/ModuleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mModules:Ljava/util/Map;

    return-object v0
.end method

.method public getRepositories()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "repositories"

    const-string v2, "http://dl.xposed.info/repo.xml.gz"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFrameworkUpdate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/XposedApp;->areDownloadsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 184
    :cond_1
    invoke-static {}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v3

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getFramework()Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v1

    .line 185
    .local v1, installed:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    if-eqz v1, :cond_0

    .line 188
    iget-object v3, v1, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lde/robv/android/xposed/installer/util/RepoLoader;->getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    .line 189
    .local v0, download:Lde/robv/android/xposed/installer/repo/Module;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/util/RepoLoader;->getLatestVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->isUpdate(Lde/robv/android/xposed/installer/repo/ModuleVersion;)Z

    move-result v2

    goto :goto_0
.end method

.method public hasModuleUpdates()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v4, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v4}, Lde/robv/android/xposed/installer/XposedApp;->areDownloadsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 165
    :cond_1
    invoke-static {}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v4

    invoke-virtual {v4}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getModules()Ljava/util/Map;

    move-result-object v2

    .line 166
    .local v2, installedModules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    .line 167
    .local v1, installed:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    iget-boolean v5, v1, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->isFramework:Z

    if-nez v5, :cond_2

    .line 170
    iget-object v5, v1, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lde/robv/android/xposed/installer/util/RepoLoader;->getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    .line 171
    .local v0, download:Lde/robv/android/xposed/installer/repo/Module;
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/util/RepoLoader;->getLatestVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v5

    invoke-virtual {v1, v5}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->isUpdate(Lde/robv/android/xposed/installer/repo/ModuleVersion;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 347
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public resetLastUpdateCheck()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method public varargs setRepositories([Ljava/lang/String;)V
    .locals 5
    .parameter "repos"

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 158
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "repositories"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void

    .line 154
    :cond_0
    if-lez v0, :cond_1

    .line 155
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public triggerFirstLoadIfNecessary()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mReloadTriggeredOnce:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/util/RepoLoader;->triggerReload(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public triggerReload(Z)V
    .locals 2
    .parameter "force"

    .prologue
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mReloadTriggeredOnce:Z

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->resetLastUpdateCheck()V

    .line 89
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/XposedApp;->areDownloadsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :goto_0
    return-void

    .line 92
    :cond_1
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z

    if-eqz v0, :cond_2

    .line 94
    monitor-exit p0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 95
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z

    .line 92
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V

    .line 99
    new-instance v0, Lde/robv/android/xposed/installer/util/RepoLoader$1;

    const-string v1, "RepositoryReload"

    invoke-direct {v0, p0, v1}, Lde/robv/android/xposed/installer/util/RepoLoader$1;-><init>(Lde/robv/android/xposed/installer/util/RepoLoader;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lde/robv/android/xposed/installer/util/RepoLoader$1;->start()V

    goto :goto_0
.end method
