.class Lde/robv/android/xposed/installer/DownloadFragment$1;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$1;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$1;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v3}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    .line 92
    .local v1, item:Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;
    iget-object v3, v1, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->newInstance(Ljava/lang/String;)Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    move-result-object v0

    .line 94
    .local v0, fragment:Lde/robv/android/xposed/installer/DownloadDetailsFragment;
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$1;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 96
    .local v2, tx:Landroid/app/FragmentTransaction;
    const v3, 0x7f040001

    const v4, 0x7f040002

    .line 97
    const/high16 v5, 0x7f04

    const v6, 0x7f040003

    .line 96
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 98
    const v3, 0x1020002

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 99
    const-string v3, "downloads_overview"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 100
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    return-void
.end method
