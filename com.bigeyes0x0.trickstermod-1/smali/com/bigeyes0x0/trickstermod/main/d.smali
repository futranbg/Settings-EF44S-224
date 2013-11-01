.class Lcom/bigeyes0x0/trickstermod/main/d;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTricksterMod.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/d;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

    .line 182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/d;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/d;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

    iget-object v1, v1, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->a(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/d;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->a(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)V

    goto :goto_0
.end method
