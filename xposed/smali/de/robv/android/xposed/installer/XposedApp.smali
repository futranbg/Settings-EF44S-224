.class public Lde/robv/android/xposed/installer/XposedApp;
.super Landroid/app/Application;
.source "XposedApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static mInstance:Lde/robv/android/xposed/installer/XposedApp;

.field private static mMainHandler:Landroid/os/Handler;

.field private static mUiThread:Ljava/lang/Thread;


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;

.field private mIsUiLoaded:Z

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lde/robv/android/xposed/installer/XposedApp;->mInstance:Lde/robv/android/xposed/installer/XposedApp;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mIsUiLoaded:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/XposedApp;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lde/robv/android/xposed/installer/XposedApp;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lde/robv/android/xposed/installer/XposedApp;->mInstance:Lde/robv/android/xposed/installer/XposedApp;

    return-object v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lde/robv/android/xposed/installer/XposedApp;->mInstance:Lde/robv/android/xposed/installer/XposedApp;

    iget-object v0, v0, Lde/robv/android/xposed/installer/XposedApp;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lde/robv/android/xposed/installer/XposedApp;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 41
    sget-object v0, Lde/robv/android/xposed/installer/XposedApp;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public areDownloadsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    iget-object v2, p0, Lde/robv/android/xposed/installer/XposedApp;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "enable_downloads"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedApp;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mIsUiLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/util/RepoLoader;->triggerFirstLoadIfNecessary()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mIsUiLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 98
    return-void
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;

    .line 86
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 97
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 95
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 96
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    sput-object p0, Lde/robv/android/xposed/installer/XposedApp;->mInstance:Lde/robv/android/xposed/installer/XposedApp;

    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/installer/XposedApp;->mUiThread:Ljava/lang/Thread;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lde/robv/android/xposed/installer/XposedApp;->mMainHandler:Landroid/os/Handler;

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/XposedApp;->mPref:Landroid/content/SharedPreferences;

    .line 32
    invoke-virtual {p0, p0}, Lde/robv/android/xposed/installer/XposedApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    return-void
.end method

.method public updateProgressIndicator()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v1

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/util/RepoLoader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 63
    .local v0, isLoading:Z
    :goto_0
    new-instance v1, Lde/robv/android/xposed/installer/XposedApp$1;

    invoke-direct {v1, p0, v0}, Lde/robv/android/xposed/installer/XposedApp$1;-><init>(Lde/robv/android/xposed/installer/XposedApp;Z)V

    invoke-static {v1}, Lde/robv/android/xposed/installer/XposedApp;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 62
    .end local v0           #isLoading:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
