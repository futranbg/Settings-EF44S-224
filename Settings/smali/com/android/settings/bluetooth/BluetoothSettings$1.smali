.class Lcom/android/settings/bluetooth/BluetoothSettings$1;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
