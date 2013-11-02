.class Lde/robv/android/xposed/installer/widget/DownloadView$3;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$3;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$3;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$3;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$3;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget-wide v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->id:J

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->removeById(Landroid/content/Context;J)V

    goto :goto_0
.end method
