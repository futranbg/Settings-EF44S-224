.class public Lcom/bigeyes0x0/trickstermod/main/m;
.super Landroid/app/Fragment;
.source "FragmentSysctlEditorParam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/bigeyes0x0/trickstermod/main/a/m;
.implements Lcom/bigeyes0x0/trickstermod/main/a/t;


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Lcom/bigeyes0x0/trickstermod/main/a/o;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/app/AlertDialog;

.field private h:Lcom/bigeyes0x0/trickstermod/main/a/h;

.field private i:Landroid/view/ActionMode;

.field private j:Lcom/bigeyes0x0/trickstermod/main/a/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 42
    return-void
.end method

.method private a()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 252
    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 253
    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 257
    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, v0

    .line 262
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    .line 263
    :goto_0
    if-lt v1, v2, :cond_1

    .line 266
    return-void

    :cond_0
    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;[I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a(Ljava/util/ArrayList;)V

    .line 151
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void

    .line 137
    :cond_0
    aget v0, p2, v1

    .line 139
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 140
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 137
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v0, v4

    .line 145
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v4, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(I)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v4

    .line 146
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v5, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->c(I)V

    .line 148
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v4}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->notifyDataSetChanged()V

    .line 190
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void

    .line 185
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 186
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(Ljava/util/AbstractMap$SimpleEntry;)V

    .line 187
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->b()V

    .line 77
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->a()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->g:Landroid/app/AlertDialog;

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f060061
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a(Ljava/util/ArrayList;)V

    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->i:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 105
    return-void

    .line 85
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, v1, v0

    .line 93
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v4, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(I)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v5, v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->c(I)V

    .line 96
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v4}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->i:Landroid/view/ActionMode;

    .line 110
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->h:Lcom/bigeyes0x0/trickstermod/main/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    const v0, 0x7f030006

    .line 119
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a()V

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 126
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->h:Lcom/bigeyes0x0/trickstermod/main/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Z)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->i:Landroid/view/ActionMode;

    .line 132
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    const v0, 0x7f0800ad

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/m;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    const-string v1, "dialog_clear_state"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v0, "list_parcel"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/q;->b(Landroid/os/Bundle;)V

    .line 173
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v0, p1, p2}, Lcom/bigeyes0x0/trickstermod/main/a/q;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 179
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->h:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/bigeyes0x0/trickstermod/main/a/h;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 198
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sysctl"

    .line 199
    const/4 v2, 0x0

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->b:Landroid/content/SharedPreferences;

    .line 200
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->c:Landroid/content/SharedPreferences$Editor;

    .line 202
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    .line 203
    const v0, 0x7f060012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 207
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 208
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 210
    invoke-virtual {v4}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    :cond_0
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    .line 217
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/h;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-direct {v1, v2, p0}, Lcom/bigeyes0x0/trickstermod/main/a/h;-><init>(Landroid/widget/ListView;Lcom/bigeyes0x0/trickstermod/main/a/m;)V

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->h:Lcom/bigeyes0x0/trickstermod/main/a/h;

    .line 218
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/q;

    .line 219
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;-><init>(Landroid/content/Context;Lcom/bigeyes0x0/trickstermod/main/a/t;)V

    .line 218
    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    .line 221
    if-eqz p2, :cond_1

    .line 222
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    .line 223
    const-string v2, "list_parcel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v1, p2}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a(Landroid/os/Bundle;)V

    .line 225
    const-string v1, "dialog_clear_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->a()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->g:Landroid/app/AlertDialog;

    .line 229
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->j:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/main/a/q;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 244
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 245
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->h:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 247
    return-void

    .line 210
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    new-instance v6, Ljava/util/AbstractMap$SimpleEntry;

    .line 212
    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 232
    :cond_3
    if-nez p2, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 234
    const v2, 0x1090016

    .line 235
    const/4 v3, 0x0

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->f:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->f:Landroid/widget/TextView;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 237
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/m;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/m;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 239
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
