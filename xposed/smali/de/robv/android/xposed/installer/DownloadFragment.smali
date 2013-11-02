.class public Lde/robv/android/xposed/installer/DownloadFragment;
.super Landroid/app/Fragment;
.source "DownloadFragment.java"

# interfaces
.implements Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;,
        Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    }
.end annotation


# static fields
.field private static final SORT_CREATED:I = 0x2

.field private static final SORT_STATUS:I = 0x0

.field private static final SORT_UPDATED:I = 0x1


# instance fields
.field private mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

.field private mFilterText:Ljava/lang/String;

.field private mModuleUtil:Lde/robv/android/xposed/installer/util/ModuleUtil;

.field private mPref:Landroid/content/SharedPreferences;

.field private mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSortingOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/DownloadFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mFilterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I

    return v0
.end method

.method static synthetic access$3(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/util/ModuleUtil;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mModuleUtil:Lde/robv/android/xposed/installer/util/ModuleUtil;

    return-object v0
.end method

.method static synthetic access$4(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/util/RepoLoader;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    return-object v0
.end method

.method static synthetic access$5(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$6(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/DownloadFragment;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lde/robv/android/xposed/installer/DownloadFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I

    return-void
.end method

.method static synthetic access$8(Lde/robv/android/xposed/installer/DownloadFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setFilter(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 162
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mFilterText:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lde/robv/android/xposed/installer/XposedApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mPref:Landroid/content/SharedPreferences;

    .line 64
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    .line 65
    invoke-static {}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mModuleUtil:Lde/robv/android/xposed/installer/util/ModuleUtil;

    .line 66
    new-instance v0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-static {}, Lde/robv/android/xposed/installer/XposedApp;->getInstance()Lde/robv/android/xposed/installer/XposedApp;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    .line 67
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "download_sorting_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/DownloadFragment;->setHasOptionsMenu(Z)V

    .line 69
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 193
    invoke-static {p0, p3}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 127
    const/high16 v1, 0x7f09

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    const v1, 0x7f0a0026

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 131
    .local v0, searchItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;

    .line 132
    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 133
    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lde/robv/android/xposed/installer/DownloadFragment$3;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/DownloadFragment$3;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 147
    new-instance v1, Lde/robv/android/xposed/installer/DownloadFragment$4;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/installer/DownloadFragment$4;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 85
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lde/robv/android/xposed/installer/util/RepoLoader;->addListener(Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;Z)V

    .line 86
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v2, Lde/robv/android/xposed/installer/DownloadFragment$1;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/DownloadFragment$1;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v2, Lde/robv/android/xposed/installer/DownloadFragment$2;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/DownloadFragment$2;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 122
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    invoke-virtual {v0, p0}, Lde/robv/android/xposed/installer/util/RepoLoader;->removeListener(Lde/robv/android/xposed/installer/util/RepoLoader$RepoListener;)V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 171
    :pswitch_0
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    invoke-virtual {v2, v1}, Lde/robv/android/xposed/installer/util/RepoLoader;->triggerReload(Z)V

    goto :goto_0

    .line 174
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 176
    const/high16 v2, 0x7f06

    iget v3, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I

    new-instance v4, Lde/robv/android/xposed/installer/DownloadFragment$5;

    invoke-direct {v4, p0}, Lde/robv/android/xposed/installer/DownloadFragment$5;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f0a0027
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRepoReloaded(Lde/robv/android/xposed/installer/util/RepoLoader;)V
    .locals 4
    .parameter "loader"

    .prologue
    .line 198
    iget-object v2, p0, Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;>;"
    invoke-virtual {p1}, Lde/robv/android/xposed/installer/util/RepoLoader;->getModules()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lde/robv/android/xposed/installer/DownloadFragment$6;

    invoke-direct {v3, p0, v1}, Lde/robv/android/xposed/installer/DownloadFragment$6;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/ModuleGroup;

    .line 203
    .local v0, group:Lde/robv/android/xposed/installer/repo/ModuleGroup;
    new-instance v3, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    invoke-direct {v3, p0, v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;-><init>(Lde/robv/android/xposed/installer/DownloadFragment;Lde/robv/android/xposed/installer/repo/ModuleGroup;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
