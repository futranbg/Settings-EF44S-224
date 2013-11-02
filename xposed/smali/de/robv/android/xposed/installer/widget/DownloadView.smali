.class public Lde/robv/android/xposed/installer/widget/DownloadView;
.super Landroid/widget/LinearLayout;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/widget/DownloadView$DownloadMonitor;
    }
.end annotation


# instance fields
.field private final btnDownload:Landroid/widget/Button;

.field private final btnDownloadCancel:Landroid/widget/Button;

.field private final btnInstall:Landroid/widget/Button;

.field private mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

.field private mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final refreshViewRunnable:Ljava/lang/Runnable;

.field private final txtInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    .line 19
    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mTitle:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    .line 87
    new-instance v1, Lde/robv/android/xposed/installer/widget/DownloadView$1;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/installer/widget/DownloadView$1;-><init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewRunnable:Ljava/lang/Runnable;

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->setFocusable(Z)V

    .line 32
    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/widget/DownloadView;->setOrientation(I)V

    .line 34
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v1, 0x7f0a0005

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownload:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;

    .line 39
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;

    .line 41
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownload:Landroid/widget/Button;

    new-instance v2, Lde/robv/android/xposed/installer/widget/DownloadView$2;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/widget/DownloadView$2;-><init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;

    new-instance v2, Lde/robv/android/xposed/installer/widget/DownloadView$3;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/widget/DownloadView$3;-><init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;

    new-instance v2, Lde/robv/android/xposed/installer/widget/DownloadView$4;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/widget/DownloadView$4;-><init>(Lde/robv/android/xposed/installer/widget/DownloadView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;

    .line 74
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/widget/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;

    .line 76
    invoke-direct {p0}, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewFromUiThread()V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/widget/DownloadView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownload:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    return-object v0
.end method

.method static synthetic access$11(Lde/robv/android/xposed/installer/widget/DownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewFromUiThread()V

    return-void
.end method

.method static synthetic access$2(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnDownloadCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->btnInstall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lde/robv/android/xposed/installer/widget/DownloadView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->txtInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lde/robv/android/xposed/installer/widget/DownloadView;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    return-object v0
.end method

.method static synthetic access$7(Lde/robv/android/xposed/installer/widget/DownloadView;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    return-void
.end method

.method static synthetic access$8(Lde/robv/android/xposed/installer/widget/DownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshView()V

    return-void
.end method

.method static synthetic access$9(Lde/robv/android/xposed/installer/widget/DownloadView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/widget/DownloadView;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method private refreshViewFromUiThread()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    return-void
.end method


# virtual methods
.method public getDownloadFinishedCallback()Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadFinishedCallback(Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;)V
    .locals 0
    .parameter "downloadFinishedCallback"

    .prologue
    .line 172
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mCallback:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;

    .line 173
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 164
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mTitle:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 149
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/util/DownloadsUtil;->getLatestForUrl(Landroid/content/Context;Ljava/lang/String;)Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    .line 156
    :goto_0
    invoke-direct {p0}, Lde/robv/android/xposed/installer/widget/DownloadView;->refreshView()V

    .line 157
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/installer/widget/DownloadView;->mInfo:Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;

    goto :goto_0
.end method
