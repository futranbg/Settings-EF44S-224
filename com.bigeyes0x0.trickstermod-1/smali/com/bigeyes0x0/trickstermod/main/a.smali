.class public Lcom/bigeyes0x0/trickstermod/main/a;
.super Landroid/support/v4/app/h;
.source "ActivityBase.java"


# instance fields
.field protected n:Lcom/bigeyes0x0/trickstermod/TrApp;

.field protected o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    .line 14
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/a;->o:Z

    .line 12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 21
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->s()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a;->setTheme(I)V

    .line 22
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/c;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/a;->o:Z

    .line 28
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->c()V

    .line 29
    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V

    .line 30
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Errored startActivity: "

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
