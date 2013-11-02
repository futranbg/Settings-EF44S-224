.class Lde/robv/android/xposed/installer/util/RepoLoader$1;
.super Ljava/lang/Thread;
.source "RepoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/util/RepoLoader;->triggerReload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/util/RepoLoader;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/util/RepoLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    .line 99
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/util/RepoLoader$1;)Lde/robv/android/xposed/installer/util/RepoLoader;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$0(Lde/robv/android/xposed/installer/util/RepoLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 103
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #calls: Lde/robv/android/xposed/installer/util/RepoLoader;->downloadFiles()V
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$1(Lde/robv/android/xposed/installer/util/RepoLoader;)V

    .line 104
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #calls: Lde/robv/android/xposed/installer/util/RepoLoader;->parseFiles()V
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$2(Lde/robv/android/xposed/installer/util/RepoLoader;)V

    .line 106
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mMessages:Ljava/util/List;
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$0(Lde/robv/android/xposed/installer/util/RepoLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$4(Lde/robv/android/xposed/installer/util/RepoLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    const/4 v3, 0x0

    #setter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mIsLoading:Z
    invoke-static {v2, v3}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$6(Lde/robv/android/xposed/installer/util/RepoLoader;Z)V

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$3(Lde/robv/android/xposed/installer/util/RepoLoader;)Lde/robv/android/xposed/installer/XposedApp;

    move-result-object v2

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V

    .line 121
    return-void

    .line 106
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;

    invoke-direct {v3, p0, v1}, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;-><init>(Lde/robv/android/xposed/installer/util/RepoLoader$1;Ljava/lang/String;)V

    invoke-static {v3}, Lde/robv/android/xposed/installer/XposedApp;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 114
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;

    .line 115
    .local v0, listener:Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$5()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v3

    invoke-interface {v0, v3}, Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;->onRepoReloaded(Lde/robv/android/xposed/installer/util/RepoLoader;)V

    goto :goto_1

    .line 117
    .end local v0           #listener:Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
