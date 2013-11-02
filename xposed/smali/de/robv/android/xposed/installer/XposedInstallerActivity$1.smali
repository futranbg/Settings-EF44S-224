.class Lde/robv/android/xposed/installer/XposedInstallerActivity$1;
.super Ljava/lang/Object;
.source "XposedInstallerActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/XposedInstallerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

.field private final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/XposedInstallerActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    iput-object p2, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->val$data:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 7
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v6, 0x1

    .line 65
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    iget v4, v4, Lde/robv/android/xposed/installer/XposedInstallerActivity;->currentNavItem:I

    if-ne v4, p1, :cond_0

    .line 86
    :goto_0
    return v6

    .line 68
    :cond_0
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->val$data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 70
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "fragment"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 71
    .local v0, fragment:Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 72
    const-string v4, "fragment_class"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, fragmentClass:Ljava/lang/String;
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    invoke-static {v4, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 74
    const-string v4, "fragment"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v1           #fragmentClass:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    invoke-virtual {v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 78
    .local v3, tx:Landroid/app/FragmentTransaction;
    const v4, 0x1020002

    invoke-virtual {v3, v4, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    iget v4, v4, Lde/robv/android/xposed/installer/XposedInstallerActivity;->currentNavItem:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 81
    :cond_2
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    iput p1, v4, Lde/robv/android/xposed/installer/XposedInstallerActivity;->currentNavItem:I

    .line 82
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 84
    iget-object v4, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;->this$0:Lde/robv/android/xposed/installer/XposedInstallerActivity;

    invoke-virtual {v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method
