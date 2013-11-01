.class Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;
.super Ljava/lang/Object;
.source "PromptMoveAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 46
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, command:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v3

    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 49
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-virtual {v3}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Please wait..."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-virtual {v5}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tmp.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    invoke-virtual {v3, v2}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
