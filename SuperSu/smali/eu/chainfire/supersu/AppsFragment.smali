.class public Leu/chainfire/supersu/AppsFragment;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Leu/chainfire/supersu/Settings;

.field private b:[Leu/chainfire/supersu/Settings$App;

.field private c:Leu/chainfire/supersu/Settings$App;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

.field private i:Leu/chainfire/supersu/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    iput-boolean v1, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/AppsFragment;->g:Z

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment;)Landroid/widget/ListAdapter;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->e()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment;Leu/chainfire/supersu/Settings;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic c(Leu/chainfire/supersu/AppsFragment;)[Leu/chainfire/supersu/Settings$App;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic d(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic e(Leu/chainfire/supersu/AppsFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method private e()Landroid/widget/ListAdapter;
    .locals 4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->a(Z)[Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    new-instance v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    invoke-direct {v0, p0, v1, v2, v3}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;-><init>(Leu/chainfire/supersu/AppsFragment;Landroid/content/Context;I[Leu/chainfire/supersu/Settings$App;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    invoke-virtual {v0, v4}, Leu/chainfire/supersu/AsyncTask;->a(Z)Z

    iput-object v3, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->d()V

    iput-object v3, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    :cond_1
    iput-object v3, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->a(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->c()V

    if-ltz p1, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    aget-object v0, v0, p1

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_5

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Leu/chainfire/supersu/AppsFragment$4;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Leu/chainfire/supersu/AppsFragment$4;-><init>(Leu/chainfire/supersu/AppsFragment;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v2, 0x7f04002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Leu/chainfire/supersu/AppsFragment$5;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/AppsFragment$5;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    iput-object v2, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->i:Leu/chainfire/supersu/AsyncTask;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Leu/chainfire/supersu/AsyncTask;->c([Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1100

    if-ne p1, v0, :cond_5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    iput-object v1, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->b()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    :cond_3
    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_0

    iput-object v1, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    goto :goto_0

    :cond_5
    const/16 v0, 0x1101

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1102

    if-ne p1, v0, :cond_0

    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->h:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0, p1, p2, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/AppsFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/AppsFragment$1;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Leu/chainfire/supersu/AppsFragment$1;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method a()Z
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->a:Z

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1}, Leu/chainfire/supersu/AppsFragment;->setListShown(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/AppsFragment;->a([Ljava/lang/Integer;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->f:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-boolean v2, p0, Leu/chainfire/supersu/AppsFragment;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    if-eqz v2, :cond_2

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->d()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->a()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->a([Ljava/lang/Integer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->c()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->f:Landroid/view/View;

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppsFragment$2;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppsFragment$3;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    aget-object v0, v0, p3

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0, p3}, Leu/chainfire/supersu/AppsFragment;->a(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    aget-object v1, v1, p3

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    const/16 v2, 0x1100

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/AppDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/AppsFragment;->g:Z

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->setListShown(Z)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->c()V

    return-void
.end method
