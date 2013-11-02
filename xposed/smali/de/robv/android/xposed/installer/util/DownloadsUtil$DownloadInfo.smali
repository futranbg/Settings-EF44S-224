.class public Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadsUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/util/DownloadsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final bytesDownloaded:I

.field public final id:J

.field public final lastModification:J

.field public final localFilename:Ljava/lang/String;

.field public final reason:I

.field public final status:I

.field public final title:Ljava/lang/String;

.field public final totalSize:I

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIII)V
    .locals 0
    .parameter "id"
    .parameter "url"
    .parameter "title"
    .parameter "lastModification"
    .parameter "localFilename"
    .parameter "status"
    .parameter "totalSize"
    .parameter "bytesDownloaded"
    .parameter "reason"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-wide p1, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->id:J

    .line 200
    iput-object p3, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->url:Ljava/lang/String;

    .line 201
    iput-object p4, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->title:Ljava/lang/String;

    .line 202
    iput-wide p5, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->lastModification:J

    .line 203
    iput-object p7, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->localFilename:Ljava/lang/String;

    .line 204
    iput p8, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    .line 205
    iput p9, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->totalSize:I

    .line 206
    iput p10, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->bytesDownloaded:I

    .line 207
    iput p11, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->reason:I

    .line 208
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIILde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct/range {p0 .. p11}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public compareTo(Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 212
    iget-wide v1, p1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->lastModification:J

    iget-wide v3, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->lastModification:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 213
    .local v0, compare:I
    if-eqz v0, :cond_0

    .line 215
    .end local v0           #compare:I
    :goto_0
    return v0

    .restart local v0       #compare:I
    :cond_0
    iget-object v1, p0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->url:Ljava/lang/String;

    iget-object v2, p1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->compareTo(Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)I

    move-result v0

    return v0
.end method
