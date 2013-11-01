.class Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;
.super Ljava/lang/Object;
.source "PromptActivateModuleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

.field final synthetic val$cancelMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    iput-object p2, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;->val$cancelMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 60
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;->val$cancelMsg:Ljava/lang/String;

    const-string v1, "Quit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    invoke-virtual {v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    :cond_0
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$1;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    invoke-virtual {v0}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->dismiss()V

    .line 63
    return-void
.end method
