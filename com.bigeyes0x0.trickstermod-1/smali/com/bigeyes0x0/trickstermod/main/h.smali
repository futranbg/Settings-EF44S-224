.class Lcom/bigeyes0x0/trickstermod/main/h;
.super Ljava/lang/Object;
.source "FragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/g;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/g;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/h;->a:Lcom/bigeyes0x0/trickstermod/main/g;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/h;->b:Landroid/os/Bundle;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/h;->a:Lcom/bigeyes0x0/trickstermod/main/g;

    iget-object v0, v0, Lcom/bigeyes0x0/trickstermod/main/g;->P:Landroid/view/View;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/h;->b:Landroid/os/Bundle;

    .line 20
    const-string v2, "scroll_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    .line 21
    return-void
.end method
