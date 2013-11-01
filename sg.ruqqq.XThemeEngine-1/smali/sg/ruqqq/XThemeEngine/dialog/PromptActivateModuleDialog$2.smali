.class Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$2;
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


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "de.robv.android.xposed.installer"

    const-string v3, "de.robv.android.xposed.installer.XposedInstallerActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    invoke-virtual {v2, v1}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
