.class public Lde/robv/android/xposed/installer/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    const-string v3, "extra_download_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 15
    .local v1, downloadId:J
    invoke-static {p1, v1, v2}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->triggerDownloadFinishedCallback(Landroid/content/Context;J)V

    .line 17
    .end local v1           #downloadId:J
    :cond_0
    return-void
.end method
