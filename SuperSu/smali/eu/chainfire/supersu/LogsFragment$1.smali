.class Leu/chainfire/supersu/LogsFragment$1;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/LogsFragment;

.field private d:Landroid/widget/ListAdapter;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->d:Landroid/widget/ListAdapter;

    iput v1, p0, Leu/chainfire/supersu/LogsFragment$1;->e:I

    iput v1, p0, Leu/chainfire/supersu/LogsFragment$1;->f:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Leu/chainfire/supersu/LogsFragment$1;->e:I

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Leu/chainfire/supersu/LogsFragment$1;->f:I

    :cond_0
    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    new-instance v2, Leu/chainfire/supersu/Logs;

    iget-object v3, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v3}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v2}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->d:Landroid/widget/ListAdapter;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->b(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->b(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs$Log;

    move-result-object v0

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/LogsFragment$1;->a([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$1;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Leu/chainfire/supersu/LogsFragment$1;->e:I

    iget v2, p0, Leu/chainfire/supersu/LogsFragment$1;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/LogsFragment$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
