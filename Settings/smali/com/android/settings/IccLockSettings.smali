.class public Lcom/android/settings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPckPreference$OnPckEnteredListener;
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final CARRIER:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field private static mPckCnt:I

.field private static mPinCnt:I


# instance fields
.field private bAlertPopStateOn:Z

.field dlg:Landroid/app/ProgressDialog;

.field intent:Landroid/content/Intent;

.field private mDialogState:I

.field private mDialogStatePck:I

.field private mError:Ljava/lang/String;

.field private mErrorPck:Ljava/lang/String;

.field private mHandelrUsingHandlerThread:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

.field private mNewPck:Ljava/lang/String;

.field private mNewPin:Ljava/lang/String;

.field private mOldPck:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

.field private mPck:Ljava/lang/String;

.field private mPckDialog:Lcom/android/settings/EditPckPreference;

.field private mPckToggle:Landroid/preference/CheckBoxPreference;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z

.field private mToStateMenu:Z

.field private mToStatePck:Z

.field subscription:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "ro.carrier"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 130
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 133
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 190
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 213
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 217
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;

    .line 220
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private DialogProgress()V
    .locals 4

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 1603
    :cond_0
    const-string v0, ""

    const v1, 0x7f0b0874

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    .line 1607
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1608
    new-instance v1, Lcom/android/settings/IccLockSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$14;-><init>(Lcom/android/settings/IccLockSettings;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1614
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/IccLockSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPckPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/IccLockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/IccLockSettings;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/IccLockSettings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/IccLockSettings;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/IccLockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPckLockChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPckChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    return v0
.end method

.method private getPinRemainCount()I
    .locals 4

    .prologue
    .line 666
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIccPin1RetryCount()I

    move-result v0

    .line 668
    .local v0, nPINRemainCount:I
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinRemainCount() nPINRemainCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v0
.end method

.method private handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "exception"
    .parameter "requestType"
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 949
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_4

    .line 950
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 951
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 953
    const/16 v2, 0x64

    if-ne p2, v2, :cond_1

    .line 954
    const v1, 0x7f0b02d5

    .line 958
    .local v1, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 959
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 986
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local v1           #id:I
    :cond_0
    :goto_1
    return-void

    .line 956
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f0b02d4

    .restart local v1       #id:I
    goto :goto_0

    .line 963
    .end local v1           #id:I
    :cond_2
    iget-object v2, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 965
    iget-object v2, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    sput v2, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    .line 966
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleException(). mPinCnt from ar.result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPin()V

    goto :goto_1

    .line 975
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIccPin1RetryCount()I

    move-result v2

    sput v2, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    .line 976
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleException(). mPinCnt from TelephonyManager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 982
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 983
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 984
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_1
.end method

.method private iccLockChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 1021
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccLockChanged() : mToState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1023
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b085d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1040
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1050
    :goto_1
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v1, 0x7f0b0861

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b085e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V

    goto :goto_1
.end method

.method private iccPckChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/16 v4, 0x6b

    .line 1123
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1127
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PCK Lock : Pck change Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object v1, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v2, "KT-KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    sget v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1134
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPck()V

    .line 1156
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-void

    .line 1142
    :cond_1
    sget-object v1, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v2, "KT-KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1147
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1152
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0873

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1154
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    goto :goto_0
.end method

.method private iccPckLockChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/16 v3, 0x6b

    const/4 v2, 0x0

    .line 1054
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1058
    :cond_0
    if-eqz p1, :cond_3

    .line 1060
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "KT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1065
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1072
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0870

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1081
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    .line 1098
    :goto_1
    return-void

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0871

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1084
    :cond_3
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "KT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1086
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 1089
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpPck()V

    goto :goto_1
.end method

.method private iccPinChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 1102
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/IccLockSettings;->handleException(Ljava/lang/Throwable;ILandroid/os/AsyncResult;)V

    .line 1119
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0859

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1114
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private makeAlertPopUpError(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b085f

    new-instance v2, Lcom/android/settings/IccLockSettings$10;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/IccLockSettings$10;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1443
    new-instance v1, Lcom/android/settings/IccLockSettings$11;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/IccLockSettings$11;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1462
    new-instance v1, Lcom/android/settings/IccLockSettings$12;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/IccLockSettings$12;-><init>(Lcom/android/settings/IccLockSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1480
    return-void
.end method

.method private makeAlertPopUpMenuAccept()V
    .locals 3

    .prologue
    .line 1620
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b087c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b087d

    new-instance v2, Lcom/android/settings/IccLockSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$17;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b087e

    new-instance v2, Lcom/android/settings/IccLockSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$16;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$15;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1654
    return-void
.end method

.method private makeAlertPopUpPck()V
    .locals 7

    .prologue
    const v2, 0x7f0b0876

    const v6, 0x7f0b085f

    const/4 v5, 0x1

    .line 1346
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1348
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "KT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    sget v0, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0878

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$7;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1411
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1372
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0877

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1373
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 1383
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 1384
    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-eq v2, v5, :cond_1

    .line 1385
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1386
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 1388
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/IccLockSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$8;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1404
    new-instance v1, Lcom/android/settings/IccLockSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$9;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b083f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b086f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private makeAlertPopUpPin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1266
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0840

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeAlertPopUpPin() : mPinCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sget v1, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1275
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 1335
    :cond_1
    :goto_0
    return-void

    .line 1297
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    .line 1300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 1301
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1302
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eq v1, v4, :cond_3

    .line 1303
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1304
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 1306
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/IccLockSettings;->mPinCnt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b083f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b085f

    new-instance v2, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1322
    sget-object v1, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v2, "SKT-KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1326
    new-instance v1, Lcom/android/settings/IccLockSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$6;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private reasonablePck(Ljava/lang/String;)Z
    .locals 2
    .parameter "pck"

    .prologue
    .line 1217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1219
    :cond_0
    const/4 v0, 0x0

    .line 1223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 1207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1208
    :cond_0
    const/4 v0, 0x0

    .line 1210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerPUKSuccessListener()V
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1484
    const-string v0, "IccLockSettings"

    const-string v1, "Broadcast receiver!! : Regist!! Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    new-instance v0, Lcom/android/settings/IccLockSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$13;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 1572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1574
    const-string v1, "com.android.settings.action.USIMREADINGDONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1575
    const-string v1, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1579
    :cond_0
    return-void
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 1230
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1231
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1232
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 1234
    return-void
.end method

.method private resetPckDialogState()V
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 1239
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 1242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 1243
    return-void
.end method

.method private setDialogValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0855

    .line 589
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 590
    const-string v0, ""

    .line 591
    .local v0, message:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 636
    :goto_0
    sget-object v3, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v4, "SKT-KOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 641
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 646
    :cond_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b085c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, strPinCntFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->getPinRemainCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, strShowText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 655
    return-void

    .line 600
    .end local v1           #strPinCntFormat:Ljava/lang/String;
    .end local v2           #strShowText:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b084f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0852

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 620
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0853

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 630
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0854

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setPckDialogValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0866

    .line 676
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setText(Ljava/lang/String;)V

    .line 677
    const-string v0, ""

    .line 678
    .local v0, message:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    packed-switch v3, :pswitch_data_0

    .line 700
    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 703
    iput-object v6, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 706
    :cond_0
    sget-object v3, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v4, "KT-KOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0879

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, strPckCntFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, strShowText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    .end local v1           #strPckCntFormat:Ljava/lang/String;
    .end local v2           #strShowText:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/EditPckPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 717
    return-void

    .line 680
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0867

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 687
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b086a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 691
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b086b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 695
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b086c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPckPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPckDialog()V
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setPckDialogValues()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPckPreference;->showPckDialog()V

    goto :goto_0
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 574
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 6

    .prologue
    .line 920
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)I

    move-result v2

    .line 927
    .local v2, err:I
    if-nez v2, :cond_0

    .line 929
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 937
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 940
    return-void

    .line 933
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 934
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private tryChangePck()V
    .locals 7

    .prologue
    .line 1186
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1189
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/TelephonyManager;->changePersoDck2(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1191
    .local v2, err:I
    if-nez v2, :cond_0

    .line 1193
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1201
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1203
    return-void

    .line 1197
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1198
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private tryChangePckLockState()V
    .locals 4

    .prologue
    .line 993
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryChangePckLockState : mPCK>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mToStatePck>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    .line 1014
    .local v0, PckThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1016
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->DialogProgress()V

    .line 1017
    return-void
.end method

.method private tryChangePin()V
    .locals 6

    .prologue
    .line 1160
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1167
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1170
    .local v2, err:I
    if-nez v2, :cond_0

    .line 1172
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1180
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1182
    return-void

    .line 1176
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1177
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v1, 0x7f0b0861

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "IccLockSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 407
    :goto_0
    return-void

    .line 305
    :cond_0
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 307
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 308
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 310
    const-string v0, "icc_pck"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPckPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    .line 311
    const-string v0, "icc_toggle_pck"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    .line 313
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "SKT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "menu_enter_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    .line 316
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dialogState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    :cond_2
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 321
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 323
    const-string v0, "dialogOldPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 324
    const-string v0, "dialogNewPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 326
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 327
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 329
    const-string v0, "dialogState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 330
    const-string v0, "dialogPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 331
    const-string v0, "dialogOldPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    .line 332
    const-string v0, "dialogNewPin_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    .line 333
    const-string v0, "dialogError_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 334
    const-string v0, "enableState_pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPckPreference;->setOnPckEnteredListener(Lcom/android/settings/EditPckPreference$OnPckEnteredListener;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->subscription:I

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 382
    sput-object p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    .line 383
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->registerPUKSuccessListener()V

    .line 387
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IccLockSettings"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    .line 388
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 390
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandelrUsingHandlerThread:Landroid/os/Handler;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1583
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1584
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPUKSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1586
    :cond_0
    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1592
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1659
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1660
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1662
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 1664
    const/4 v0, 0x1

    .line 1666
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 515
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    return-void
.end method

.method public onPckEntered(Lcom/android/settings/EditPckPreference;Z)V
    .locals 7
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v6, 0x7f0b086e

    const v5, 0x7f0b086d

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 792
    if-nez p2, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    .line 853
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPckPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 799
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "SKT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0875

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 809
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 810
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 815
    :cond_4
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 817
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePckLockState()V

    goto :goto_0

    .line 820
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    .line 821
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 822
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 823
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 824
    const-string v0, "IccLockSettings"

    const-string v1, "LockSet>>>OldMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    .line 829
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 830
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 831
    const-string v0, "IccLockSettings"

    const-string v1, "LockSet>>>NewMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 835
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 836
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 837
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPck:Ljava/lang/String;

    .line 838
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "SKT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 840
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 845
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto/16 :goto_0

    .line 848
    :cond_6
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    .line 849
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePck()V

    goto/16 :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0b0856

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    if-nez p2, :cond_0

    .line 722
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 788
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 734
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "SKT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b085b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 744
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 745
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 750
    :cond_4
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 752
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 755
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 756
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 757
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 758
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 759
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 763
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 764
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 765
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 768
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0857

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 774
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 775
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 777
    sget-object v0, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v1, "SKT-KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 780
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto/16 :goto_0

    .line 783
    :cond_6
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 784
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto/16 :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 857
    iput-object p2, p0, Lcom/android/settings/IccLockSettings;->mPreference:Landroid/preference/Preference;

    .line 858
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 860
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 862
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 868
    sget-object v1, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v3, "SKT-KOR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.ISUSIMREADING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, usimintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #usimintent:Landroid/content/Intent;
    :cond_1
    :goto_0
    move v1, v2

    .line 914
    :goto_1
    return v1

    .line 875
    :cond_2
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 876
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 879
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v3, :cond_5

    .line 884
    sget-object v2, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v3, "SKT-KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 886
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.ISUSIMREADING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .restart local v0       #usimintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 891
    .end local v0           #usimintent:Landroid/content/Intent;
    :cond_4
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_1

    .line 897
    :cond_5
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 898
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    .line 900
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    if-nez v4, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 901
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    .line 902
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_0

    .line 903
    :cond_7
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    if-ne p2, v3, :cond_8

    .line 904
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    goto :goto_1

    .line 909
    :cond_8
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStateMenu:Z

    .line 911
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->makeAlertPopUpMenuAccept()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f0b0878

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    const-string v3, "IccLockSettings"

    const-string v4, "onResume() : Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    .line 438
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->intent:Landroid/content/Intent;

    const-string v4, "subscription"

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/IccLockSettings;->subscription:I

    .line 445
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 447
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 448
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getPersoIndEnabled2(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    sget-object v3, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v4, "KT-KOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    sget-object v3, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pck_retry_count"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    .line 467
    sget v3, Lcom/android/settings/IccLockSettings;->mPckCnt:I

    if-nez v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/EditPckPreference;->setEnabled(Z)V

    .line 470
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/EditPckPreference;->setSummary(I)V

    .line 471
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 472
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPckToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 478
    :cond_0
    sget-object v3, Lcom/android/settings/IccLockSettings;->CARRIER:Ljava/lang/String;

    const-string v4, "SKT-KOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mMenuEnterToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usim_menu_enter_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 492
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->bAlertPopStateOn:Z

    if-ne v1, v2, :cond_4

    .line 510
    :goto_1
    return-void

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const v4, 0x7f0b0861

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setSummary(I)V

    goto :goto_0

    .line 495
    :cond_4
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_5

    .line 496
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 502
    :goto_2
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    if-eqz v1, :cond_6

    .line 503
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPckDialog()V

    goto :goto_1

    .line 499
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_2

    .line 506
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetPckDialogState()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "dialogOldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "dialogNewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPckPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    const-string v0, "dialogState_pck"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogStatePck:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string v0, "dialogPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPckDialog:Lcom/android/settings/EditPckPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPckPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "dialogOldPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "dialogNewPin_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "dialogError_pck"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mErrorPck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "enableState_pck"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToStatePck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 564
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
