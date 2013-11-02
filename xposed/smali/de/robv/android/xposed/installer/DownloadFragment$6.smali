.class Lde/robv/android/xposed/installer/DownloadFragment$6;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onRepoReloaded(Lde/robv/android/xposed/installer/util/RepoLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;

.field private final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    iput-object p2, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->val$items:Ljava/util/List;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v1

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->setNotifyOnChange(Z)V

    .line 211
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v0

    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->val$items:Ljava/util/List;

    invoke-virtual {v0, v2}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->setItems(Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$6;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->notifyDataSetChanged()V

    .line 209
    monitor-exit v1

    .line 214
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
