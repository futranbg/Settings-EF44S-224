.class public Lde/robv/android/xposed/installer/XposedInstallerActivity;
.super Landroid/app/Activity;
.source "XposedInstallerActivity.java"


# static fields
.field static final EXTRA_OPEN_TAB:Ljava/lang/String; = "opentab"

.field static final NOTIFICATION_MODULE_NOT_ACTIVATED_YET:I = 0x1

.field static final TAB_ABOUT:I = 0x4

.field static final TAB_DOWNLOAD:I = 0x2

.field static final TAB_INSTALL:I = 0x0

.field static final TAB_MODULES:I = 0x1

.field static final TAB_SETTINGS:I = 0x3

.field static final TAG:Ljava/lang/String; = "xposed_installer"


# instance fields
.field currentNavItem:I

.field popToStateOnUp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->currentNavItem:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->popToStateOnUp:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "fragment_class"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 152
    const/high16 v0, 0x7f04

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->overridePendingTransition(II)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->requestWindowFeature(I)Z

    .line 42
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 43
    .local v11, nm:Landroid/app/NotificationManager;
    invoke-virtual {v11}, Landroid/app/NotificationManager;->cancelAll()V

    .line 45
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 46
    .local v7, bar:Landroid/app/ActionBar;
    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 47
    invoke-virtual {v7, v13}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 48
    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lde/robv/android/xposed/installer/InstallerFragment;

    invoke-direct {p0, v2, v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lde/robv/android/xposed/installer/ModulesFragment;

    invoke-direct {p0, v2, v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lde/robv/android/xposed/installer/DownloadFragment;

    invoke-direct {p0, v2, v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lde/robv/android/xposed/installer/SettingsFragment;

    invoke-direct {p0, v2, v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lde/robv/android/xposed/installer/AboutFragment;

    invoke-direct {p0, v2, v4}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->makeNavigationItem(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Landroid/widget/SimpleAdapter;

    .line 58
    const v4, 0x1090009

    .line 59
    new-array v5, v6, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v5, v13

    .line 60
    new-array v6, v6, [I

    const v2, 0x1020014

    aput v2, v6, v13

    move-object v2, p0

    .line 57
    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 62
    .local v1, adapter:Landroid/widget/SimpleAdapter;
    new-instance v2, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;

    invoke-direct {v2, p0, v3}, Lde/robv/android/xposed/installer/XposedInstallerActivity$1;-><init>(Lde/robv/android/xposed/installer/XposedInstallerActivity;Ljava/util/List;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 90
    const/4 v12, -0x1

    .line 91
    .local v12, selectTabIndex:I
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "opentab"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "opentab"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 93
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "opentab"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 95
    .local v9, extra:Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 96
    :try_start_0
    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 114
    .end local v9           #extra:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-ltz v12, :cond_1

    invoke-virtual {v7}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "opentab"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 116
    :cond_1
    return-void

    .line 97
    .restart local v9       #extra:Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 98
    .local v8, e:Ljava/lang/ClassCastException;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, extraS:Ljava/lang/String;
    const-string v2, "install"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v12, 0x0

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "modules"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const/4 v12, 0x1

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "download"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    const/4 v12, 0x2

    goto :goto_0

    .line 105
    :cond_4
    const-string v2, "settings"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    const/4 v12, 0x3

    goto :goto_0

    .line 107
    :cond_5
    const-string v2, "about"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v12, 0x4

    .line 110
    goto :goto_0

    .end local v8           #e:Ljava/lang/ClassCastException;
    .end local v9           #extra:Ljava/lang/Object;
    .end local v10           #extraS:Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_0

    .line 111
    const-string v2, "tab"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->popToStateOnUp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->popToStateOnUp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "tab"

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method setNavItem(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "popToStateOnUp"

    .prologue
    .line 132
    iput p1, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->currentNavItem:I

    .line 133
    iput-object p2, p0, Lde/robv/android/xposed/installer/XposedInstallerActivity;->popToStateOnUp:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 135
    return-void
.end method
