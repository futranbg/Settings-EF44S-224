.class Lde/robv/android/xposed/installer/widget/DownloadView$2;
.super Ljava/lang/Object;
.source "DownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/widget/DownloadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/widget/DownloadView;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$9(Lde/robv/android/xposed/installer/widget/DownloadView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$0(Lde/robv/android/xposed/installer/widget/DownloadView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    invoke-static {v4}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$10(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    #setter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$7(Lde/robv/android/xposed/installer/widget/DownloadView;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    .line 45
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #calls: Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewFromUiThread()V
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$11(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    .line 47
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$2;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-direct {v0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;-><init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;->start()V

    .line 49
    :cond_0
    return-void
.end method
