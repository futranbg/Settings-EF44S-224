.class Lcom/android/settings/wifi/WifiApEnabler$3;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->createDataAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 245
    .local v2, wifiState:I
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->val$enable:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->createWifiOffDialog()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$800(Lcom/android/settings/wifi/WifiApEnabler;)V

    .line 267
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->val$enable:Z

    if-nez v3, :cond_2

    .line 268
    const/4 v1, 0x0

    .line 270
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    :goto_1
    if-ne v1, v6, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 276
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 252
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->val$enable:Z

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler$3;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    const v4, 0x7f0b01db

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 271
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
