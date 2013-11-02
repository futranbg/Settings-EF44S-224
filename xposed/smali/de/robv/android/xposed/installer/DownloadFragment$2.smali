.class Lde/robv/android/xposed/installer/DownloadFragment$2;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$2;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    const/16 v2, 0x54

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment$2;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lde/robv/android/xposed/installer/DownloadFragment;->access$5(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/widget/SearchView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment$2;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lde/robv/android/xposed/installer/DownloadFragment;->access$5(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
