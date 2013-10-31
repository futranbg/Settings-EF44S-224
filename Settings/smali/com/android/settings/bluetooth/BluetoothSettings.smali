.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field private static final mShowAdvancedSettings:Z


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, showAdvancedSettings:Z
    :try_start_0
    const-string v4, "com.broadcom.bt.service.framework.BluetoothServiceConfig"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 68
    const-string v4, "BluetoothSettings"

    const-string v5, "Advanced settings configuration not found (BluetoothServiceConfig not found)..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0           #c:Ljava/lang/Class;
    :goto_0
    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowAdvancedSettings:Z

    .line 81
    const-string v4, "BluetoothSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show advanced settings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowAdvancedSettings:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 70
    .restart local v0       #c:Ljava/lang/Class;
    :cond_0
    :try_start_1
    const-string v4, "SHOW_ADVANCED_SETTINGS"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 71
    .local v1, f:Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    .line 72
    const-string v4, "BluetoothSettings"

    const-string v5, "Advanced settings configuration not found (SHOW_ADVANCED_SETTINGS field not found)..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 77
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 78
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothSettings"

    const-string v5, "Unable to load advanced settings configuration"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v3           #t:Ljava/lang/Throwable;
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #f:Ljava/lang/reflect/Field;
    :cond_1
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 367
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 379
    return-void
.end method

.method private onAdvancedSettingsSelected(I)Z
    .locals 3
    .parameter "menuId"

    .prologue
    .line 93
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mShowAdvancedSettings:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.settings.ServiceCfgActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    const/4 v1, 0x1

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 348
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 383
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 385
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 470
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 472
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 474
    :goto_1
    return-void

    .line 387
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 388
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 389
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 392
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 393
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 395
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f02004e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 401
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 402
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 403
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    .line 406
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 408
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 414
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_5

    .line 415
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 419
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b0190

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 422
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 424
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 427
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_6

    .line 428
    new-instance v4, Lcom/android/settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 432
    :goto_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b0191

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 435
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 436
    .local v1, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 438
    if-nez v1, :cond_2

    .line 439
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 443
    :cond_2
    if-nez v2, :cond_3

    .line 444
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    if-ne p2, v8, :cond_7

    .line 446
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 447
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 454
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 399
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020054

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 417
    :cond_5
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 430
    .restart local v2       #numberOfPairedDevices:I
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 449
    .restart local v1       #numberOfAvailableDevices:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_3

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 458
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0b0087

    .line 459
    goto/16 :goto_0

    .line 462
    :pswitch_2
    const v0, 0x7f0b019a

    .line 463
    goto/16 :goto_0

    .line 466
    :pswitch_3
    const v0, 0x7f0b0086

    goto/16 :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 191
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 195
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 198
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 199
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 202
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 203
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 205
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 212
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 214
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 215
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 544
    const v0, 0x7f0b069a

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 535
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 536
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 187
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 480
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 485
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 491
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    .line 495
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 496
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    .line 289
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 265
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 266
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0b018e

    .line 268
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 271
    const/4 v3, 0x2

    const v5, 0x7f0b0068

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 274
    const/4 v3, 0x3

    const v5, 0x7f0b005e

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    const/4 v3, 0x4

    const v5, 0x7f0b007e

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_1
    move v0, v4

    .line 264
    goto :goto_1

    .line 266
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_2
    const v2, 0x7f0b018d

    goto :goto_2

    .restart local v2       #textId:I
    :cond_3
    move v5, v4

    .line 268
    goto :goto_3
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 508
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 509
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 4
    .parameter "btPreference"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 354
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "BluetoothSettings"

    const-string v2, "Discovery ongoing, post delayed MESSAGE_DEVICE_CLICKED..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onAdvancedSettingsSelected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 295
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->dismiss()V

    .line 305
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    .line 307
    :cond_1
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    .line 308
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNameDialogFragment:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    .line 321
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    .line 323
    :cond_2
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    .line 324
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothVisibilityTimeoutFragment:Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 259
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 233
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 503
    return-void
.end method
