.class Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;
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
    .line 43
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v2}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Please click install when dialog appears, and then click done..."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 47
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v2}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "XposedInstaller.apk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v5}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/xposedinstaller.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lsg/ruqqq/XThemeEngine/Utils;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xposedinstaller.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog$2;->this$0:Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    invoke-virtual {v2, v1}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
