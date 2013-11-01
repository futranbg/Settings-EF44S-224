.class public Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;
.super Landroid/app/Service;
.source "ServiceMakoColor.java"


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;->a:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    .line 16
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;->a:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-virtual {p0, v1, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;->a:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    return-void
.end method
