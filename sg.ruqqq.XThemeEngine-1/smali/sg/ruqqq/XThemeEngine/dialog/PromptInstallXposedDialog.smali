.class public Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;
.super Landroid/app/DialogFragment;
.source "PromptInstallXposedDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-direct {v1}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;-><init>()V

    .line 26
    .local v1, frag:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 33
    const-string v2, "Action Needed"

    .line 34
    .local v2, title:Ljava/lang/String;
    const-string v1, "Xposed Installer need to be installed to use the app."

    .line 35
    .local v1, message:Ljava/lang/String;
    const-string v0, "Install"

    .line 37
    .local v0, buttonMsg:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;

    invoke-direct {v4, p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;-><init>(Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Quit"

    new-instance v5, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;

    invoke-direct {v5, p0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;-><init>(Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
