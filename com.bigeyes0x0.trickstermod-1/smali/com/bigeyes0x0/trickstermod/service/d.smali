.class Lcom/bigeyes0x0/trickstermod/service/d;
.super Ljava/lang/Object;
.source "ServiceCheckPackage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;


# direct methods
.method private constructor <init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;Lcom/bigeyes0x0/trickstermod/service/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/bigeyes0x0/trickstermod/service/d;-><init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;Landroid/os/Messenger;)V

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->b(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 80
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->c(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->b(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 83
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->c(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/d;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;Landroid/os/Messenger;)V

    .line 90
    return-void
.end method
