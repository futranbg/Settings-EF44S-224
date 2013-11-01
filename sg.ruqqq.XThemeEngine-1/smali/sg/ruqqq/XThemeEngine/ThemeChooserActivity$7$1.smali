.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    const-string v1, "Theme applied successfully. Reboot to see changes."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 519
    invoke-static {v2}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->newInstance(Z)Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    iget-object v1, v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-virtual {v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 520
    return-void
.end method
