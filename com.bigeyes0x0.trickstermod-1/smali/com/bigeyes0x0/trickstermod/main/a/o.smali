.class public Lcom/bigeyes0x0/trickstermod/main/a/o;
.super Landroid/widget/BaseAdapter;
.source "SysctlArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->d:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lcom/bigeyes0x0/trickstermod/main/a/o;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/bigeyes0x0/trickstermod/main/a/o;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/AbstractMap$SimpleEntry;
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/AbstractMap$SimpleEntry;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    monitor-enter v5

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    move v0, v4

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    if-ltz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    monitor-exit v5

    .line 159
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v3

    .line 154
    goto :goto_1

    .line 151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 157
    goto :goto_2

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 109
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 114
    :goto_0
    return p1

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/util/AbstractMap$SimpleEntry;)I
    .locals 5
    .parameter

    .prologue
    .line 162
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 163
    const/4 v3, -0x1

    .line 164
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    move v0, v3

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->b(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    monitor-exit v4

    return v0

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 167
    goto :goto_1

    .line 164
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    monitor-exit v1

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/p;

    invoke-direct {v0, p0}, Lcom/bigeyes0x0/trickstermod/main/a/p;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/o;)V

    .line 93
    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(I)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f060052

    const v3, 0x7f060051

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/o;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    const v1, 0x7f030027

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    invoke-virtual {p2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(I)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0
.end method
