.class Lcom/android/settings/wifi/WifiApEnabler$6;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->createWifiOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$700(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$6;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0b01db

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
