.class Lde/robv/android/xposed/installer/widget/DownloadView$1;
.super Ljava/lang/Object;
.source "DownloadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/widget/DownloadView;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 90
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$0(Lde/robv/android/xposed/installer/widget/DownloadView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownload:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$1(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownload:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$1(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    iget v0, v0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 112
    :sswitch_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    iget v0, v0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->totalSize:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    iget v0, v0, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->status:I

    if-eq v0, v3, :cond_3

    .line 117
    :cond_2
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 118
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 121
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->totalSize:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 122
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v1

    iget v1, v1, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->bytesDownloaded:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080050

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v4}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v4

    iget v4, v4, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->bytesDownloaded:I

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v4}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v4

    iget v4, v4, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->totalSize:I

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :sswitch_1
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080053

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    invoke-static {v4}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v4

    iget v4, v4, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->reason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    :sswitch_2
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView$1;->this$0:Lde/robv/android/xposed/installer/widget/DownloadView;

    #getter for: Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
