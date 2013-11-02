.class Lde/robv/android/xposed/installer/widget/DownloadView$4;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$4;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$4;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$10(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$4;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$10(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$4;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/widget/DownloadView$4;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v2}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;->onDownloadFinished(Landroid/content/Context;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V

    goto :goto_0
.end method
