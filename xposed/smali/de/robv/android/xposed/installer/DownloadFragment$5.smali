.class Lde/robv/android/xposed/installer/DownloadFragment$5;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$5;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$5;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #setter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v0, p2}, Lde/robv/android/xposed/installer/DownloadFragment;->access$7(Lde/robv/android/xposed/installer/DownloadFragment;I)V

    .line 180
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$5;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$8(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_sorting_order"

    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment$5;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v2}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$5;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->notifyDataSetChanged()V

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    return-void
.end method
