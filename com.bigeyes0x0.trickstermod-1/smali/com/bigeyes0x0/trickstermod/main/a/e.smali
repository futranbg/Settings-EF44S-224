.class Lcom/bigeyes0x0/trickstermod/main/a/e;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/d;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/e;->a:Lcom/bigeyes0x0/trickstermod/main/a/d;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/e;->b:Landroid/os/Bundle;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/e;->a:Lcom/bigeyes0x0/trickstermod/main/a/d;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(Lcom/bigeyes0x0/trickstermod/main/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/e;->b:Landroid/os/Bundle;

    .line 250
    const-string v2, "scroll_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScrollY(I)V

    .line 251
    return-void
.end method
