.class public final Lde/robv/android/xposed/installer/util/ModuleUtil;
.super Ljava/lang/Object;
.source "ModuleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    }
.end annotation


# static fields
.field private static mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;


# instance fields
.field private final mApp:Lde/robv/android/xposed/installer/XposedApp;

.field private final mFrameworkPackage:Ljava/lang/String;

.field private mInstalledModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReloading:Z

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mIsReloading:Z

    .line 24
    invoke-static {}, Lde/robv/android/xposed/installer/XposedApp;->getInstance()Lde/robv/android/xposed/installer/XposedApp;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    .line 25
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/XposedApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;

    .line 26
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/XposedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mFrameworkPackage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/util/ModuleUtil;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lde/robv/android/xposed/installer/util/ModuleUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lde/robv/android/xposed/installer/util/ModuleUtil;

    invoke-direct {v0}, Lde/robv/android/xposed/installer/util/ModuleUtil;-><init>()V

    sput-object v0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;

    .line 32
    sget-object v0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/util/ModuleUtil;->reloadInstalledModules()V

    .line 34
    :cond_0
    sget-object v0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstance:Lde/robv/android/xposed/installer/util/ModuleUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFramework()Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mFrameworkPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v0

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 101
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    return-object v0
.end method

.method public getModules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    return-object v0
.end method

.method public isFramework(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 93
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mFrameworkPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 97
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mIsReloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadInstalledModules()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mIsReloading:Z

    if-eqz v3, :cond_0

    .line 40
    monitor-exit p0

    .line 62
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mIsReloading:Z

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v1, modules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;>;"
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    iput-object v1, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    .line 58
    monitor-enter p0

    .line 59
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mIsReloading:Z

    .line 58
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mApp:Lde/robv/android/xposed/installer/XposedApp;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/XposedApp;->updateProgressIndicator()V

    goto :goto_0

    .line 38
    .end local v1           #modules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 47
    .restart local v1       #modules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 48
    .local v2, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "xposedmodule"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    invoke-direct {v5, p0, v2, v6, v8}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;-><init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;ZLde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_3
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lde/robv/android/xposed/installer/util/ModuleUtil;->isFramework(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    invoke-direct {v5, p0, v2, v7, v8}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;-><init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;ZLde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pkg:Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public reloadSingleModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 67
    :try_start_0
    iget-object v5, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 73
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "xposedmodule"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v2, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v5, v4}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;-><init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;ZLde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;)V

    .line 76
    .local v2, module:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    iget-object v4, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #module:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    .end local v3           #pkg:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 70
    goto :goto_0

    .line 79
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pkg:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v5, p0, Lde/robv/android/xposed/installer/util/ModuleUtil;->mInstalledModules:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 80
    goto :goto_0
.end method
