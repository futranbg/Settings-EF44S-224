.class public Lcom/bigeyes0x0/trickstermod/main/n;
.super Lcom/bigeyes0x0/trickstermod/main/g;
.source "FragmentTab.java"


# static fields
.field static Q:Lcom/bigeyes0x0/trickstermod/TrApp;

.field static R:Lcom/bigeyes0x0/trickstermod/h;


# instance fields
.field private S:Landroid/view/ViewStub;

.field private T:Landroid/widget/LinearLayout;

.field private U:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->Q:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 65
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->R:Lcom/bigeyes0x0/trickstermod/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/g;-><init>()V

    return-void
.end method

.method private F()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->E()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return-object v1

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 82
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private G()V
    .locals 5

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    .line 204
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 214
    :cond_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    instance-of v3, v0, Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v3, :cond_2

    .line 209
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 210
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->S:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->G()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    return-object v0
.end method

.method public E()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->G()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const-string v2, "_fragment_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v3, "_fragment_live"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 131
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->Q:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/main/n;)V

    .line 133
    const v0, 0x7f030007

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 135
    const v0, 0x7f060013

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->S:Landroid/view/ViewStub;

    .line 137
    const v0, 0x7f060014

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    .line 138
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->P:Landroid/view/View;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    .line 140
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->R:Lcom/bigeyes0x0/trickstermod/h;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/bigeyes0x0/trickstermod/h;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/n;->c(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->R:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0, v2, v3}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    sget-object v2, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 148
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 150
    array-length v6, v2

    :goto_0
    if-lt v1, v6, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->F()Ljava/util/HashMap;

    move-result-object v1

    .line 164
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    if-nez p3, :cond_0

    .line 170
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/main/n;->a(Ljava/util/List;)V

    .line 173
    :cond_0
    return-object v4

    .line 150
    :cond_1
    aget-object v7, v2, v1

    .line 151
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->d()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    iget-object v8, p0, Lcom/bigeyes0x0/trickstermod/main/n;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v8, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/List;)V

    .line 156
    instance-of v7, v0, Lcom/bigeyes0x0/trickstermod/template/i;

    if-eqz v7, :cond_2

    .line 157
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/i;

    .line 165
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->b(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->D()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    return-object v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    const/high16 v0, 0x7f06

    .line 115
    const v1, 0x7f080021

    .line 114
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    const v1, 0x7f02003a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    invoke-super {p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/main/g;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 119
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/o;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/o;-><init>(Ljava/lang/String;)V

    .line 184
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 183
    invoke-virtual {v1, v2, v0}, Lcom/bigeyes0x0/trickstermod/main/o;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 191
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 192
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->E()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 194
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/n;->U:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 88
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 89
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->Q:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->c(Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/g;->s()V

    .line 180
    return-void
.end method
