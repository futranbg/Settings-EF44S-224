.class public Lcom/android/settings/TimeValidPopup;
.super Landroid/app/Activity;
.source "TimeValidPopup.java"


# instance fields
.field public mJobType:I

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lcom/android/settings/TimeValidPopup$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TimeValidPopup$1;-><init>(Lcom/android/settings/TimeValidPopup;)V

    iput-object v0, p0, Lcom/android/settings/TimeValidPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeValidPopup;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeValidPopup;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/TimeValidPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_jobtype_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/TimeValidPopup;->mJobType:I

    .line 47
    iget v0, p0, Lcom/android/settings/TimeValidPopup;->mJobType:I

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeValidPopup;->showDialog(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TimeValidPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0b08b8

    const v2, 0x7f0b08b7

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b08b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$4;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$4;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$3;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$3;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$2;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$2;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b08ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$7;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$7;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$6;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$6;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$5;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$5;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b08bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$10;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$10;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$9;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$9;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$8;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$8;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b08bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$13;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$13;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$12;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$12;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$11;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$11;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b08bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$16;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$16;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$15;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$15;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/TimeValidPopup$14;

    invoke-direct {v1, p0}, Lcom/android/settings/TimeValidPopup$14;-><init>(Lcom/android/settings/TimeValidPopup;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeValidPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
