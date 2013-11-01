.class public Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;
.super Lcom/bigeyes0x0/trickstermod/main/a;
.source "ActivitySysctlEditor.java"


# instance fields
.field private p:Lcom/bigeyes0x0/trickstermod/main/j;

.field private q:Landroid/app/Fragment;

.field private r:Landroid/app/Fragment$SavedState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a;-><init>()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/main/j;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    .line 90
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/j;->setArguments(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->r:Landroid/app/Fragment$SavedState;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/j;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 92
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 93
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 94
    const v1, 0x1020002

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    const-string v3, "fragment_main"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/m;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/main/m;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    .line 100
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 101
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 102
    const v1, 0x1020002

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    const-string v3, "fragment_param"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 103
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 104
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->f()V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/a;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->f()V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "fragment_main"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/j;

    .line 47
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    .line 49
    const-string v0, "fragment_param"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 69
    :goto_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 57
    :sswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->q:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->f()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->finish()V

    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->p:Lcom/bigeyes0x0/trickstermod/main/j;

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->r:Landroid/app/Fragment$SavedState;

    .line 66
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->g()V

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060060 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "fragmain_saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment$SavedState;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->r:Landroid/app/Fragment$SavedState;

    .line 76
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "fragmain_saved_state"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;->r:Landroid/app/Fragment$SavedState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
