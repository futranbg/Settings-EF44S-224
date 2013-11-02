.class Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;
.super Ljava/lang/Thread;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/widget/DownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/widget/DownloadView;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 181
    const-string v0, "DownloadMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 188
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    iget-object v2, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v3}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v3

    iget-wide v3, v3, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->id:J

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->getById(Landroid/content/Context;J)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v2

    #setter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1, v2}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$7(Lde/robv/android/xposed/installer/widget/DownloadView;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    .line 194
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #calls: Lde/robv/android/xposed/installer/widget/DownloadView;->refreshView()V
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$8(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    .line 195
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 200
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method
