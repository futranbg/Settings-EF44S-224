.class Lde/robv/android/xposed/installer/PackageChangeReceiver$1;
.super Landroid/os/AsyncTask;
.source "PackageChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/PackageChangeReceiver;->updateModulesList(Landroid/content/Context;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$enabledModules:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$enabledModules:Ljava/util/Set;

    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    .line 108
    :try_start_0
    const-string v8, "xposed_installer"

    const-string v9, "updating modules.list"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v8, 0x0

    invoke-static {v8}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    .local v3, installedXposedVersion:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 111
    const-string v8, "The xposed framework is not installed"

    .line 145
    .end local v3           #installedXposedVersion:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 113
    .restart local v3       #installedXposedVersion:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v8, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 114
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/io/PrintWriter;

    const-string v8, "/data/xposed/modules.list"

    invoke-direct {v5, v8}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, modulesList:Ljava/io/PrintWriter;
    iget-object v9, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$enabledModules:Ljava/util/Set;

    monitor-enter v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v8, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$enabledModules:Ljava/util/Set;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v2, enabledModulesClone:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 140
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 142
    iget-object v8, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    const v9, 0x7f080020

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    goto :goto_0

    .line 117
    .end local v2           #enabledModulesClone:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 143
    .end local v3           #installedXposedVersion:Ljava/lang/String;
    .end local v5           #modulesList:Ljava/io/PrintWriter;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/io/IOException;
    const-string v8, "xposed_installer"

    const-string v9, "cannot write /data/xposed/modules.list"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const-string v8, "cannot write /data/xposed/modules.list"

    goto :goto_0

    .line 120
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #enabledModulesClone:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3       #installedXposedVersion:Ljava/lang/String;
    .restart local v5       #modulesList:Ljava/io/PrintWriter;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 123
    .local v6, packageName:Ljava/lang/String;
    const/16 v9, 0x80

    :try_start_7
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    .line 128
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    :try_start_8
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    .line 129
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "xposedmodule"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "xposedminversion"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 133
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "xposedminversion"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, minVersion:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1

    .line 135
    sget-object v9, Lde/robv/android/xposed/installer/PackageChangeReceiver;->MIN_MODULE_VERSION:Ljava/lang/String;

    invoke-static {v4, v9}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 138
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 124
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v4           #minVersion:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 125
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 151
    iget-object v0, p0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method
