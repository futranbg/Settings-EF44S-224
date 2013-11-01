.class Lcom/bigeyes0x0/trickstermod/service/c;
.super Landroid/os/Handler;
.source "ServiceCheckPackage.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/c;->a:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 40
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 64
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    .line 67
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->stopSelf()V

    .line 70
    :cond_0
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {v1, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {v1, v4}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {v1, v4}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V

    .line 49
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 53
    :pswitch_4
    const v2, 0x7f080047

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {v1, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Z)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 49
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
