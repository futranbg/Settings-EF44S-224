.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$3;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$3;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 113
    const/4 v1, 0x1

    invoke-static {v1}, Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;->newInstance(Z)Lsg/ruqqq/XThemeEngine/dialog/ConfirmRebootDialog;

    move-result-object v0

    .line 114
    .local v0, newFragment:Landroid/app/DialogFragment;
    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$3;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-virtual {v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 115
    return-void
.end method
