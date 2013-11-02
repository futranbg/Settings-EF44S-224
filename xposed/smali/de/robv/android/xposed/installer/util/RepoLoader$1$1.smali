.class Lde/robv/android/xposed/installer/util/RepoLoader$1$1;
.super Ljava/lang/Object;
.source "RepoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/util/RepoLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/robv/android/xposed/installer/util/RepoLoader$1;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/util/RepoLoader$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;->this$1:Lde/robv/android/xposed/installer/util/RepoLoader$1;

    iput-object p2, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;->val$message:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;->this$1:Lde/robv/android/xposed/installer/util/RepoLoader$1;

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader$1;->this$0:Lde/robv/android/xposed/installer/util/RepoLoader;
    invoke-static {v0}, Lde/robv/android/xposed/installer/util/RepoLoader$1;->access$0(Lde/robv/android/xposed/installer/util/RepoLoader$1;)Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v0

    #getter for: Lde/robv/android/xposed/installer/util/RepoLoader;->mApp:Lde/robv/android/xposed/installer/XposedApp;
    invoke-static {v0}, Lde/robv/android/xposed/installer/util/RepoLoader;->access$3(Lde/robv/android/xposed/installer/util/RepoLoader;)Lde/robv/android/xposed/installer/XposedApp;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/util/RepoLoader$1$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method
