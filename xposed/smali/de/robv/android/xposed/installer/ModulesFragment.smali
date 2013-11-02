.class public Lde/robv/android/xposed/installer/ModulesFragment;
.super Landroid/app/ListFragment;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;,
        Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;
    }
.end annotation


# static fields
.field public static final SETTINGS_CATEGORY:Ljava/lang/String; = "de.robv.android.xposed.category.MODULE_SETTINGS"


# instance fields
.field private enabledModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installedXposedVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment;->installedXposedVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v4, "de.robv.android.xposed.category.MODULE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 38
    .local v7, activity:Landroid/app/Activity;
    instance-of v0, v7, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v0, :cond_0

    .line 39
    check-cast v7, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v7           #activity:Landroid/app/Activity;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment;->installedXposedVersion:Ljava/lang/String;

    .line 43
    new-instance v9, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, p0, v0}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;-><init>(Lde/robv/android/xposed/installer/ModulesFragment;Landroid/content/Context;)V

    .line 44
    .local v9, modules:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->getEnabledModules(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;

    .line 46
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 47
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/16 v0, 0x80

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Lde/robv/android/xposed/installer/ModulesFragment$1;

    invoke-direct {v0, p0}, Lde/robv/android/xposed/installer/ModulesFragment$1;-><init>(Lde/robv/android/xposed/installer/ModulesFragment;)V

    invoke-virtual {v9, v0}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->sort(Ljava/util/Comparator;)V

    .line 74
    invoke-virtual {p0, v9}, Lde/robv/android/xposed/installer/ModulesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/ModulesFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 81
    return-void

    .line 47
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 48
    .local v10, pkg:Landroid/content/pm/PackageInfo;
    iget-object v8, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .local v8, app:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xposedmodule"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xposedminversion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, minVersion:Ljava/lang/String;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xposeddescription"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, description:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 57
    :try_start_0
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xposeddescription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 58
    .local v12, resId:I
    if-eqz v12, :cond_3

    .line 59
    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 63
    .end local v12           #resId:I
    :cond_3
    :goto_1
    new-instance v0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v9, v0}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lde/robv/android/xposed/installer/ModulesFragment;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/ModulesFragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/ModulesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
