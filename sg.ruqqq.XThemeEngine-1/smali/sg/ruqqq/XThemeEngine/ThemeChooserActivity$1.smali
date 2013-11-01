.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;
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
    .line 95
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 98
    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$100(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$000(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #calls: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->tryAndApplyTheme(Landroid/content/pm/ApplicationInfo;)V
    invoke-static {v1, v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$200(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Landroid/content/pm/ApplicationInfo;)V

    .line 99
    return-void
.end method
