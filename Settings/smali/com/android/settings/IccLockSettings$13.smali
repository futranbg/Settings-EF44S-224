.class Lcom/android/settings/IccLockSettings$13;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->registerPUKSuccessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1487
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1503
    const-string v2, "com.android.settings.action.USIMREADINGDONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1506
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1508
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$2002(Lcom/android/settings/IccLockSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1511
    :cond_0
    const-string v2, "IccLockSettings"

    const-string v3, "USIM:USIMREADINGDONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2100(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$2200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 1515
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v3, 0x1

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    .line 1516
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->showPinDialog()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$1200(Lcom/android/settings/IccLockSettings;)V

    .line 1569
    :cond_1
    :goto_0
    return-void

    .line 1518
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2100(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1521
    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1523
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v3, 0x2

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    goto :goto_0

    .line 1529
    :cond_3
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2, v5}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    .line 1530
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1531
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2400(Lcom/android/settings/IccLockSettings;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0861

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1537
    :cond_4
    const-string v2, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1540
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1541
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1542
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$2002(Lcom/android/settings/IccLockSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1544
    :cond_5
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b087a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$2002(Lcom/android/settings/IccLockSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1546
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1548
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2100(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1551
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1552
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #setter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v2, v5}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    .line 1553
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1558
    :cond_6
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1560
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " intent.getStringExtra(IccCard.INTENT_KEY_ICC_STATE) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1564
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IccCard.INTENT_VALUE_ICC_ABSENT.equals : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$13;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/IccLockSettings;->finish()V

    goto/16 :goto_0
.end method
