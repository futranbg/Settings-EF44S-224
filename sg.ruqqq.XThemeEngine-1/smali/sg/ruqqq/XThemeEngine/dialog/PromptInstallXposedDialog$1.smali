.class Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;
.super Ljava/lang/Object;
.source "PromptInstallXposedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 62
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 63
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->dismiss()V

    .line 64
    return-void
.end method
