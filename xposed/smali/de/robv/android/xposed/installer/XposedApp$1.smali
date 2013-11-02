.class Lde/robv/android/xposed/installer/XposedApp$1;
.super Ljava/lang/Object;
.source "XposedApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/XposedApp;

.field private final synthetic val$isLoading:Z


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/XposedApp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/XposedApp$1;->this$0:Lde/robv/android/xposed/installer/XposedApp;

    iput-boolean p2, p0, Lde/robv/android/xposed/installer/XposedApp$1;->val$isLoading:Z

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lde/robv/android/xposed/installer/XposedApp$1;->this$0:Lde/robv/android/xposed/installer/XposedApp;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/XposedApp$1;->this$0:Lde/robv/android/xposed/installer/XposedApp;

    #getter for: Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lde/robv/android/xposed/installer/XposedApp;->access$0(Lde/robv/android/xposed/installer/XposedApp;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lde/robv/android/xposed/installer/XposedApp$1;->this$0:Lde/robv/android/xposed/installer/XposedApp;

    #getter for: Lde/robv/android/xposed/installer/XposedApp;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lde/robv/android/xposed/installer/XposedApp;->access$0(Lde/robv/android/xposed/installer/XposedApp;)Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, p0, Lde/robv/android/xposed/installer/XposedApp$1;->val$isLoading:Z

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 66
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
