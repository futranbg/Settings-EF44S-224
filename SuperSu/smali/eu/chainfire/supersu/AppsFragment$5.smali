.class Leu/chainfire/supersu/AppsFragment$5;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Leu/chainfire/supersu/Logs;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/Logs;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->f:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/AppsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Landroid/view/View;)Landroid/widget/ListAdapter;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->d:Landroid/widget/ListView;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->e:Landroid/view/View;

    new-instance v0, Leu/chainfire/supersu/Logs;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v2}, Leu/chainfire/supersu/AppsFragment;->b(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/Settings$App;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->f:Leu/chainfire/supersu/Logs;

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->f:Leu/chainfire/supersu/Logs;

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Logs;->a(Landroid/app/Activity;Ljava/util/List;Z)Landroid/widget/ListAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AppsFragment$5;->a([Landroid/view/View;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/widget/ListAdapter;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->f:Leu/chainfire/supersu/Logs;

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->d:Landroid/widget/ListView;

    new-instance v1, Leu/chainfire/supersu/AppsFragment$5$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/AppsFragment$5$1;-><init>(Leu/chainfire/supersu/AppsFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->e:Landroid/view/View;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->d:Landroid/widget/ListView;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$5;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AppsFragment$5;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method
