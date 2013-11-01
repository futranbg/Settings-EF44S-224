.class public Lcom/bigeyes0x0/trickstermod/main/g;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBase.java"


# instance fields
.field protected P:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 15
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/g;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/g;->P:Landroid/view/View;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/h;

    invoke-direct {v1, p0, p1}, Lcom/bigeyes0x0/trickstermod/main/h;-><init>(Lcom/bigeyes0x0/trickstermod/main/g;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/g;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/g;->P:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
