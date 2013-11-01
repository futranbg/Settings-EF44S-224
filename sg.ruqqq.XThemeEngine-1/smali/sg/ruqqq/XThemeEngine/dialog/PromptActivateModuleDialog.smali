.class public Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;
.super Landroid/app/DialogFragment;
.source "PromptActivateModuleDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;
    .locals 3
    .parameter "quitIfNotActivated"

    .prologue
    .line 21
    new-instance v1, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    invoke-direct {v1}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;-><init>()V

    .line 22
    .local v1, frag:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "quitIfNotActivated"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v1, v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 30
    const-string v3, "Action Needed"

    .line 31
    .local v3, title:Ljava/lang/String;
    const-string v2, "You need to click Install/Update in Xposed Installer and activate Icon Themer module in Module tab."

    .line 32
    .local v2, message:Ljava/lang/String;
    const-string v0, "Open Xposed Installer"

    .line 35
    .local v0, buttonMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "quitIfNotActivated"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v1, "Quit"

    .line 40
    .local v1, cancelMsg:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$2;

    invoke-direct {v5, p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$2;-><init>(Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;

    invoke-direct {v5, p0, v1}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;-><init>(Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 38
    .end local v1           #cancelMsg:Ljava/lang/String;
    :cond_0
    const-string v1, "Cancel"

    .restart local v1       #cancelMsg:Ljava/lang/String;
    goto :goto_0
.end method
