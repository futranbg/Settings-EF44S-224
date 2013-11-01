.class public Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;
.super Lcom/bigeyes0x0/trickstermod/main/a;
.source "SettingScreen.java"


# instance fields
.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    const-string v1, "screen_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const-string v1, "_fragment_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    .line 54
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "_fragment_key"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "_fragment_live"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/n;

    invoke-direct {v1}, Lcom/bigeyes0x0/trickstermod/main/n;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->e()Landroid/support/v4/app/n;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/y;

    move-result-object v0

    .line 63
    const v2, 0x1020002

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/y;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/y;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/y;->a()I

    .line 66
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 88
    :goto_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 72
    :sswitch_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->finish()V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    const-string v1, "GOV_CTRL_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->b()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    const-string v1, "IO_SCHED_SCREEN_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->c()V

    .line 83
    :cond_1
    new-instance v0, Lcom/bigeyes0x0/trickstermod/i;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/i;-><init>()V

    .line 84
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bigeyes0x0/trickstermod/main/n;

    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060000 -> :sswitch_1
    .end sparse-switch
.end method
