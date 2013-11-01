.class public Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmRebootDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;
    .locals 3
    .parameter "fullReboot"

    .prologue
    .line 21
    new-instance v1, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;

    invoke-direct {v1}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;-><init>()V

    .line 22
    .local v1, frag:Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "fullReboot"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v1, v0}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "fullReboot"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 31
    .local v1, fullReboot:Z
    const-string v3, "Confirm?"

    .line 32
    .local v3, title:Ljava/lang/String;
    const-string v2, "A soft reboot will only restart the phone interface."

    .line 33
    .local v2, message:Ljava/lang/String;
    const-string v0, "Soft Reboot"

    .line 35
    .local v0, buttonMsg:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 36
    const-string v2, "A reboot will perform a full restart of your device."

    .line 37
    const-string v0, "Reboot"

    .line 40
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;

    invoke-direct {v5, p0, v1}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;-><init>(Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;Z)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$1;

    invoke-direct {v6, p0}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$1;-><init>(Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
