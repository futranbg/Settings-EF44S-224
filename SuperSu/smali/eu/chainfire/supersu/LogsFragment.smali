.class public Leu/chainfire/supersu/LogsFragment;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Leu/chainfire/supersu/Logs;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Leu/chainfire/supersu/Logs$Log;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->b:Z

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->e:Z

    iput-object v1, p0, Leu/chainfire/supersu/LogsFragment;->f:Leu/chainfire/supersu/Logs$Log;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;Ljava/util/List;)Landroid/widget/ListAdapter;
    .locals 1

    invoke-direct {p0, p1}, Leu/chainfire/supersu/LogsFragment;->a(Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Landroid/widget/ListAdapter;
    .locals 2

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Leu/chainfire/supersu/Logs;->a(Landroid/app/Activity;Ljava/util/List;Z)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/LogsFragment;->b:Z

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->f:Leu/chainfire/supersu/Logs$Log;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->f:Leu/chainfire/supersu/Logs$Log;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->a(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->c()V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->f:Leu/chainfire/supersu/Logs$Log;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Logs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Leu/chainfire/supersu/LogDetailActivity;->a(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public varargs a(Z[Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Leu/chainfire/supersu/LogsFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/LogsFragment$1;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p2}, Leu/chainfire/supersu/LogsFragment$1;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    goto :goto_0
.end method

.method a()Z
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->a:Z

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v4, v3}, Leu/chainfire/supersu/LogsFragment;->a(Z[Ljava/lang/Integer;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-boolean v2, p0, Leu/chainfire/supersu/LogsFragment;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v2, v2, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v2, v2, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->d()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->a(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    invoke-virtual {v0}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->a()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    new-array v0, v2, [Ljava/lang/Integer;

    invoke-virtual {p0, v2, v0}, Leu/chainfire/supersu/LogsFragment;->a(Z[Ljava/lang/Integer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->d:Landroid/view/View;

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f04003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/LogsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogsFragment$2;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    const v1, 0x7f04003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/LogsFragment$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogsFragment$3;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p3}, Leu/chainfire/supersu/LogsFragment;->a(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    sput-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x1200

    invoke-static {v0, p3, v1}, Leu/chainfire/supersu/LogDetailActivity;->a(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListShown(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/LogsFragment;->e:Z

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->setListShown(Z)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->c()V

    return-void
.end method
