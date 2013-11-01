.class Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;
.super Ljava/lang/Object;
.source "ConfirmRebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;

.field final synthetic val$fullReboot:Z


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;

    iput-boolean p2, p0, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;->val$fullReboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 50
    :try_start_0
    iget-boolean v2, p0, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog$2;->val$fullReboot:Z

    if-nez v2, :cond_0

    .line 51
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "export PATH=/system/bin:$PATH && setprop ctl.restart surfaceflinger && setprop ctl.restart zygote"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 56
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 60
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "reboot"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    goto :goto_0

    .line 57
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
