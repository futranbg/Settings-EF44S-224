.class public Lcom/bigeyes0x0/trickstermod/main/j;
.super Landroid/app/Fragment;
.source "FragmentSysctlEditorMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Lcom/bigeyes0x0/trickstermod/main/a/o;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/Filter;

.field private g:Landroid/widget/SearchView;

.field private h:Lcom/bigeyes0x0/trickstermod/a/b;

.field private i:Landroid/app/AlertDialog;

.field private j:Landroid/view/inputmethod/InputMethodManager;

.field private k:Ljava/util/HashMap;

.field private l:Ljava/util/AbstractMap$SimpleEntry;

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->k:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    .line 232
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/a/b;->a(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f080020

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/b;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/b;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 238
    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/j;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->c:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 220
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 223
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->n:Z

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 228
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/bigeyes0x0/trickstermod/main/j;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/bigeyes0x0/trickstermod/main/j;)Lcom/bigeyes0x0/trickstermod/main/a/o;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 72
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    move v0, v1

    .line 75
    :cond_1
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox sysctl -n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox sysctl -w "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string v2, " &> /dev/null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/bigeyes0x0/trickstermod/main/k;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/bigeyes0x0/trickstermod/main/k;-><init>(Lcom/bigeyes0x0/trickstermod/main/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    const v0, 0x7f0b0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    const v0, 0x7f06005f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    .line 119
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->b()V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const v0, 0x7f030006

    .line 126
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0, p3}, Lcom/bigeyes0x0/trickstermod/main/a/o;->a(I)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    .line 133
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/j;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->i:Landroid/app/AlertDialog;

    .line 135
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 136
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->f:Landroid/widget/Filter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->f:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const-string v0, "selected_item"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    const-string v0, "dialog_edit_value"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->h:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    const-string v0, "update_entries"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 164
    const-string v0, "search_text"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->g:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string v0, "list_parcel"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->j:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "keyboard_searchview"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/j;->setHasOptionsMenu(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sysctl"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->b:Landroid/content/SharedPreferences;

    .line 177
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->c:Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    const-string v1, "input_method"

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 181
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    .line 182
    const v0, 0x7f060012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    if-eqz p2, :cond_1

    .line 186
    const-string v0, "search_text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->m:Ljava/lang/CharSequence;

    .line 187
    const-string v0, "keyboard_searchview"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->n:Z

    .line 189
    const-string v0, "update_entries"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->k:Ljava/util/HashMap;

    .line 191
    const-string v0, "selected_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    .line 192
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->l:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    const-string v1, "dialog_edit_value"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/j;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->i:Landroid/app/AlertDialog;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    .line 197
    const-string v1, "list_parcel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    array-length v6, v4

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_2

    .line 212
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/bigeyes0x0/trickstermod/main/a/o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    .line 213
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/o;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->f:Landroid/widget/Filter;

    .line 214
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/j;->d:Lcom/bigeyes0x0/trickstermod/main/a/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    return-void

    .line 203
    :cond_2
    aget-object v0, v4, v2

    .line 204
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v3

    .line 205
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_3

    .line 210
    :goto_1
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, v7, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
