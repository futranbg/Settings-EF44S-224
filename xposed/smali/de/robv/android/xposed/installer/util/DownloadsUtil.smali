.class public Lde/robv/android/xposed/installer/util/DownloadsUtil;
.super Ljava/lang/Object;
.source "DownloadsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;,
        Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    }
.end annotation


# static fields
.field public static final MIME_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/installer/util/DownloadsUtil;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 22
    invoke-static {p0, p2}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->removeAllForUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    sget-object v5, Lde/robv/android/xposed/installer/util/DownloadsUtil;->mCallbacks:Ljava/util/Map;

    monitor-enter v5

    .line 25
    :try_start_0
    sget-object v4, Lde/robv/android/xposed/installer/util/DownloadsUtil;->mCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 29
    .local v0, dm:Landroid/app/DownloadManager;
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 30
    .local v3, request:Landroid/app/DownloadManager$Request;
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 31
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 33
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    .line 35
    .local v1, id:J
    invoke-static {p0, v1, v2}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->getById(Landroid/content/Context;J)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v4

    return-object v4

    .line 24
    .end local v0           #dm:Landroid/app/DownloadManager;
    .end local v1           #id:J
    .end local v3           #request:Landroid/app/DownloadManager$Request;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static getAllForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v1, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/DownloadManager;

    .line 80
    .local v24, dm:Landroid/app/DownloadManager;
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v14

    .line 81
    .local v14, c:Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 82
    .local v17, columnId:I
    const-string v1, "uri"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 83
    .local v23, columnUri:I
    const-string v1, "title"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 84
    .local v21, columnTitle:I
    const-string v1, "last_modified_timestamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 85
    .local v18, columnLastMod:I
    const-string v1, "local_filename"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 86
    .local v16, columnFilename:I
    const-string v1, "status"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 87
    .local v20, columnStatus:I
    const-string v1, "total_size"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 88
    .local v22, columnTotalSize:I
    const-string v1, "bytes_so_far"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 89
    .local v15, columnBytesDownloaded:I
    const-string v1, "reason"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 91
    .local v19, columnReason:I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v25, downloads:Ljava/util/List;,"Ljava/util/List<Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 116
    return-object v25

    .line 93
    :cond_1
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, localFilename:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .line 102
    :cond_2
    new-instance v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    .line 103
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 104
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 108
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 109
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 110
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 111
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIILde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    .line 102
    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getById(Landroid/content/Context;J)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    .locals 25
    .parameter "context"
    .parameter "id"

    .prologue
    .line 39
    const-string v1, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/DownloadManager;

    .line 40
    .local v24, dm:Landroid/app/DownloadManager;
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v14

    .line 41
    .local v14, c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 44
    :cond_0
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 45
    .local v17, columnId:I
    const-string v1, "uri"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 46
    .local v23, columnUri:I
    const-string v1, "title"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 47
    .local v21, columnTitle:I
    const-string v1, "last_modified_timestamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 48
    .local v18, columnLastMod:I
    const-string v1, "local_filename"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 49
    .local v16, columnFilename:I
    const-string v1, "status"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 50
    .local v20, columnStatus:I
    const-string v1, "total_size"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 51
    .local v22, columnTotalSize:I
    const-string v1, "bytes_so_far"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 52
    .local v15, columnBytesDownloaded:I
    const-string v1, "reason"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 54
    .local v19, columnReason:I
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, localFilename:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 57
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    .line 61
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 62
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 66
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 67
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 68
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 69
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 60
    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIILde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    goto/16 :goto_0
.end method

.method public static getLatestForUrl(Landroid/content/Context;Ljava/lang/String;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 74
    invoke-static {p0, p1}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->getAllForUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, all:Ljava/util/List;,"Ljava/util/List<Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    goto :goto_0
.end method

.method public static removeAllForUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "url"

    .prologue
    .line 125
    const-string v7, "download"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 126
    .local v3, dm:Landroid/app/DownloadManager;
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, columnId:I
    const-string v7, "uri"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, columnUri:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v6, idsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 136
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    :goto_1
    return-void

    .line 132
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [J

    .line 140
    .local v5, ids:[J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v7, v5

    if-lt v4, v7, :cond_3

    .line 143
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_1

    .line 141
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static removeById(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 120
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 121
    .local v0, dm:Landroid/app/DownloadManager;
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 122
    return-void
.end method

.method public static removeOutdated(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "cutoff"

    .prologue
    .line 148
    const-string v7, "download"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 149
    .local v3, dm:Landroid/app/DownloadManager;
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, columnId:I
    const-string v7, "last_modified_timestamp"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, columnLastMod:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, idsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 159
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    :goto_1
    return-void

    .line 155
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-gez v7, :cond_0

    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [J

    .line 163
    .local v5, ids:[J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v7, v5

    if-lt v4, v7, :cond_3

    .line 166
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_1

    .line 164
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v4

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static triggerDownloadFinishedCallback(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->getById(Landroid/content/Context;J)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v2

    .line 172
    .local v2, info:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v1, 0x0

    .line 176
    .local v1, callback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    sget-object v4, Lde/robv/android/xposed/installer/util/DownloadsUtil;->mCallbacks:Ljava/util/Map;

    monitor-enter v4

    .line 177
    :try_start_0
    sget-object v3, Lde/robv/android/xposed/installer/util/DownloadsUtil;->mCallbacks:Ljava/util/Map;

    iget-object v5, v2, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->url:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    move-object v1, v0

    .line 176
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v1, p0, v2}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;->onDownloadFinished(Landroid/content/Context;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
