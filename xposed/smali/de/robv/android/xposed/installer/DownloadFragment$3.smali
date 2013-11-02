.class Lde/robv/android/xposed/installer/DownloadFragment$3;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$3;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 143
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$3;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #calls: Lde/robv/android/xposed/installer/DownloadFragment;->setFilter(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lde/robv/android/xposed/installer/DownloadFragment;->access$6(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 136
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$3;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #calls: Lde/robv/android/xposed/installer/DownloadFragment;->setFilter(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lde/robv/android/xposed/installer/DownloadFragment;->access$6(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$3;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$5(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method
