.class public Leu/chainfire/supersu/SuperUserIntentService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SuperUserIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leu/chainfire/supersu/SuperUserIntentService;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/supersu/SuperUserIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Leu/chainfire/supersu/Application;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_1
    instance-of v0, v1, Leu/chainfire/supersu/Application;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/Application;

    sget-object v0, Leu/chainfire/supersu/Application;->a:Landroid/os/Handler;

    new-instance v2, Leu/chainfire/supersu/SuperUserIntentService$1;

    invoke-direct {v2, v1, p1}, Leu/chainfire/supersu/SuperUserIntentService$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move-object v1, p0

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/SuperUserIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SuperUserIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v2, "last_boot_version"

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Leu/chainfire/supersu/Installer;

    invoke-direct {v6}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {v6, p0}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-virtual {v6}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "survival"

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, p0}, Leu/chainfire/supersu/Installer;->c(Landroid/content/Context;)Z

    invoke-virtual {p0}, Leu/chainfire/supersu/SuperUserIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f090026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Leu/chainfire/supersu/SuperUserIntentService;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-le v0, v5, :cond_1

    const-string v2, "survival"

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v6, p0, v2}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Z)Z

    const/16 v2, 0x9b

    if-gt v5, v2, :cond_1

    sget-boolean v2, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "echo 1 > %s"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "/system/etc/.has_su_daemon"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v5, "echo 1 > %s"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "/system/etc/.installed_su_daemon"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->a([Ljava/lang/String;)Ljava/util/List;

    :cond_1
    if-lez v0, :cond_2

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_boot_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    new-instance v0, Leu/chainfire/supersu/Logs;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6, p0}, Leu/chainfire/supersu/Installer;->c(Landroid/content/Context;)Z

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reauthenticate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/Settings$App;->f()V

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/SuperUserIntentService;->a()V

    goto :goto_0

    :cond_2
    const-string v1, "package_removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/SuperUserIntentService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
