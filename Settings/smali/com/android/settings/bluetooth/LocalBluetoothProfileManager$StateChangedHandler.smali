.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 234
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 237
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 238
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 239
    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateChangedHandler found new device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 243
    :cond_0
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, newState:I
    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 245
    .local v2, oldState:I
    if-nez v1, :cond_1

    if-ne v2, v9, :cond_1

    .line 247
    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v5, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 253
    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateChangedHandler.onReceive: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-nez v1, :cond_2

    .line 255
    const-string v5, "android.bluetooth.profile.input.extra.CONN_STATUS"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 256
    .local v4, status:I
    if-le v4, v9, :cond_2

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, resId:I
    packed-switch v4, :pswitch_data_0

    .line 275
    :goto_0
    if-eqz v3, :cond_2

    .line 276
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$200(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 281
    .end local v3           #resId:I
    .end local v4           #status:I
    :cond_2
    return-void

    .line 260
    .restart local v3       #resId:I
    .restart local v4       #status:I
    :pswitch_0
    const v3, 0x7f0b06d2

    .line 261
    goto :goto_0

    .line 263
    :pswitch_1
    const v3, 0x7f0b06d3

    .line 264
    goto :goto_0

    .line 266
    :pswitch_2
    const v3, 0x7f0b06d4

    .line 267
    goto :goto_0

    .line 269
    :pswitch_3
    const v3, 0x7f0b06d5

    .line 270
    goto :goto_0

    .line 272
    :pswitch_4
    const v3, 0x7f0b06d6

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
