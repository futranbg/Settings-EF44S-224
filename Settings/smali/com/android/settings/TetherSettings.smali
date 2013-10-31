.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private bOffUsbTether:Z

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mBtTetheringAvailable:Z

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->bOffUsbTether:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mBtTetheringAvailable:Z

    .line 247
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->bOffUsbTether:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->bOffUsbTether:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBtTetheringAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 666
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 667
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 668
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 673
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 667
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 666
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 673
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 13

    .prologue
    const v12, 0x7f0b0259

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, activity:Landroid/app/Activity;
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 206
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 209
    const-string v6, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 213
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v7, "AndroidAP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 215
    .local v3, model:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 216
    const-string v3, "xxxx"

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 221
    .local v2, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, number:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 224
    const-string v4, "0000"

    .line 228
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AndroidHotspot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 229
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 234
    .end local v2           #mgr:Landroid/telephony/TelephonyManager;
    .end local v3           #model:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_5

    .line 235
    const v6, 0x104041c

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v10

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v9, v9, v10

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    .end local v5           #s:Ljava/lang/String;
    :goto_2
    return-void

    .line 217
    .restart local v3       #model:Ljava/lang/String;
    :cond_3
    const-string v6, "IM-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 225
    .restart local v2       #mgr:Landroid/telephony/TelephonyManager;
    .restart local v4       #number:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 240
    .end local v2           #mgr:Landroid/telephony/TelephonyManager;
    .end local v3           #model:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 241
    .local v1, index:I
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v9, v9, v1

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 604
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 606
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0371

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 545
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 577
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 579
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 583
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 584
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 585
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 586
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 587
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 588
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0373

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 595
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 475
    const/4 v6, 0x0

    .line 476
    .local v6, bluetoothErrored:Z
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 477
    .local v15, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 478
    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 477
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 476
    .end local v14           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0

    .line 482
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v13           #len$:I
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 483
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    .line 484
    .local v8, btState:I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0087

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 524
    :goto_2
    return-void

    .line 490
    :cond_3
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0086

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 497
    :cond_4
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 498
    const/4 v7, 0x0

    .line 499
    .local v7, bluetoothTethered:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 501
    .local v9, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v9, :cond_5

    .line 502
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 506
    .end local v9           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 508
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v7, v0, :cond_6

    .line 509
    const v17, 0x7f0b0375

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 511
    .local v16, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 512
    .end local v16           #summary:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_7

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0374

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 514
    :cond_7
    if-eqz v6, :cond_8

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0377

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 517
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0373

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 520
    .end local v7           #bluetoothTethered:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0376

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 376
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 379
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 394
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 396
    .local v3, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 397
    .local v11, usbAvailable:Z
    :goto_0
    const/4 v12, 0x0

    .line 398
    .local v12, usbError:I
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v10, v1, v5

    .line 399
    .local v10, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v8, :cond_2

    aget-object v9, v2, v4

    .line 400
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 401
    if-nez v12, :cond_0

    .line 402
    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    .line 399
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 396
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .end local v9           #regex:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #usbAvailable:Z
    .end local v12           #usbError:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 398
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v11       #usbAvailable:Z
    .restart local v12       #usbError:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 407
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 408
    .local v14, usbTethered:Z
    move-object/from16 v1, p2

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v7, :cond_6

    aget-object v10, v1, v5

    .line 409
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v8, v2

    .restart local v8       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v8, :cond_5

    aget-object v9, v2, v4

    .line 410
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 409
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 408
    .end local v9           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_3

    .line 413
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    .line 414
    .local v13, usbErrored:Z
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v7, :cond_9

    aget-object v10, v1, v5

    .line 415
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v8, v2

    .restart local v8       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v8, :cond_8

    aget-object v9, v2, v4

    .line 416
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v13, 0x1

    .line 415
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 414
    .end local v9           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_5

    .line 420
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_a

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b036e

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    .end local v5           #i$:I
    :goto_7
    return-void

    .line 424
    .restart local v5       #i$:I
    :cond_a
    if-eqz v11, :cond_10

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, isAvailable:Z
    move-object/from16 v1, p1

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_8
    if-ge v4, v7, :cond_c

    aget-object v10, v1, v4

    .line 429
    .restart local v10       #s:Ljava/lang/String;
    const-string v15, "rndis"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 430
    const/4 v6, 0x1

    .line 428
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 432
    .end local v10           #s:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    array-length v15, v0

    if-eqz v15, :cond_d

    if-eqz v6, :cond_d

    .line 433
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 434
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b08a5

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 435
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->bOffUsbTether:Z

    if-eqz v15, :cond_e

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b08a6

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 439
    :cond_e
    if-nez v12, :cond_f

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b036d

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 444
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 442
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b0371

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_9

    .line 448
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #isAvailable:Z
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :cond_10
    if-eqz v13, :cond_11

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b0371

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 452
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_12

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b036f

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 457
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0b0370

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 703
    const v0, 0x7f0b08ab

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 538
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 556
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 557
    if-nez p1, :cond_0

    .line 558
    if-ne p2, v1, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 571
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 568
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 677
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 679
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 687
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 691
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 692
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0259

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 697
    .end local v0           #index:I
    :cond_0
    return-void

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v7, 0x7f050031

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 145
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v7, "bluetooth_pan"

    invoke-static {v7}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/TetherSettings;->mBtTetheringAvailable:Z

    .line 147
    if-eqz v1, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mBtTetheringAvailable:Z

    if-eqz v7, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 153
    :cond_0
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 156
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 162
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 163
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 164
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 166
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v4, v8

    .line 167
    .local v4, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_5

    move v6, v8

    .line 168
    .local v6, wifiAvailable:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_6

    move v2, v8

    .line 170
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_2
    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_7

    .line 175
    new-instance v7, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 176
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 186
    :goto_3
    if-eqz v2, :cond_3

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mBtTetheringAvailable:Z

    if-nez v7, :cond_8

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 200
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 201
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v4           #usbAvailable:Z
    .end local v6           #wifiAvailable:Z
    :cond_4
    move v4, v9

    .line 166
    goto :goto_0

    .restart local v4       #usbAvailable:Z
    :cond_5
    move v6, v9

    .line 167
    goto :goto_1

    .restart local v6       #wifiAvailable:Z
    :cond_6
    move v2, v9

    .line 168
    goto :goto_2

    .line 178
    .restart local v2       #bluetoothAvailable:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 190
    :cond_8
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 191
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 193
    :cond_9
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 259
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 262
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 265
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 710
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 712
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b08b5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b08ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 717
    .local v0, tips:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 719
    .end local v0           #tips:Landroid/app/AlertDialog;
    :cond_0
    const/4 v1, 0x1

    .line 721
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 527
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 529
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 534
    :goto_0
    return v2

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 619
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 622
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 623
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 626
    .local v4, newState:Z
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 628
    if-eqz v4, :cond_1

    .line 629
    invoke-direct {p0, v7}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 662
    .end local v4           #newState:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 632
    .restart local v4       #newState:Z
    :cond_1
    iput-boolean v7, p0, Lcom/android/settings/TetherSettings;->bOffUsbTether:Z

    .line 634
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 636
    .end local v4           #newState:Z
    :cond_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 637
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 639
    .local v1, bluetoothTetherState:Z
    if-eqz v1, :cond_3

    .line 640
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 642
    :cond_3
    const/4 v3, 0x0

    .line 644
    .local v3, errored:Z
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, tethered:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, bluetoothIface:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 648
    const/4 v3, 0x1

    .line 651
    :cond_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 652
    if-eqz v3, :cond_5

    .line 653
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b0377

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 655
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b0376

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 658
    .end local v0           #bluetoothIface:Ljava/lang/String;
    .end local v1           #bluetoothTetherState:Z
    .end local v3           #errored:Z
    .end local v5           #tethered:[Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v6, :cond_0

    .line 659
    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 329
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 333
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 334
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 338
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 362
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 373
    :cond_0
    return-void
.end method
