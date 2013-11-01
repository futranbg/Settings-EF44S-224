.class public Leu/chainfire/supersu/Settings;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static h:Ljava/lang/Boolean;

.field private static i:Ljava/lang/Boolean;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Leu/chainfire/supersu/Settings$Default;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    sput-object v0, Leu/chainfire/supersu/Settings;->b:Ljava/lang/Boolean;

    sput-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->d:Landroid/content/pm/PackageManager;

    new-instance v0, Leu/chainfire/supersu/Settings$Default;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    iput-boolean v4, p0, Leu/chainfire/supersu/Settings;->g:Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->d:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings;->g:Z

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$Default;->d()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "config_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "config_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_log"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "default"

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iput-boolean v4, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "invisible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "original"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02005e

    goto :goto_0

    :cond_1
    const-string v0, "superandy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02005f

    goto :goto_0

    :cond_2
    const-string v0, "chip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02005c

    goto :goto_0

    :cond_3
    const-string v0, "supersu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020060

    goto :goto_0

    :cond_4
    const-string v0, "emblem"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f02005d

    goto :goto_0

    :cond_5
    const-string v0, "emblem"

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const-string v0, "sh"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "getprop ro.cm.version"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    sget-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Leu/chainfire/supersu/Settings;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "eu.chainfire.supersu"

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/system/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Leu/chainfire/supersu/Settings;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x87

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_4

    :cond_0
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_6

    :cond_1
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-lt v2, v4, :cond_8

    :cond_2
    :goto_3
    move v0, v1

    :cond_3
    return v0

    :cond_4
    aget-object v6, v4, v2

    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    aget-object v6, v4, v2

    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    aget-object v5, v3, v2

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_9

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "freeload"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {p0, v4}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu.pro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ls -l /system/app/*uper*ro*"

    aput-object v1, v0, v3

    const-string v1, "ls -l /data/app/*uper*ro*"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "ls -l /data/app-asec/*uper*ro*"

    aput-object v2, v0, v1

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    :cond_9
    sget-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, " supersupro.apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, " eu.chainfire.supersu.pro-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "emblem"

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static b()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "sh"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "getprop persist.service.adb.enable"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supersu.salt."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".peppa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "eu.chainfire.supersu.nonag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    sput-object v0, Leu/chainfire/supersu/Settings;->i:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic f()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Leu/chainfire/supersu/Settings;->h:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a(Z)[Leu/chainfire/supersu/Settings$App;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Settings$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings$1;-><init>(Leu/chainfire/supersu/Settings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Leu/chainfire/supersu/Settings$App;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Settings$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings$2;-><init>(Leu/chainfire/supersu/Settings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public b(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supersu.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->c(Ljava/lang/String;)Ljava/util/List;

    :try_start_0
    const-string v0, "supersu.cfg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v5, "\n"

    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "default"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "notify"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "log"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "wait"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "access"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    iget-object v6, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v6, v6, Leu/chainfire/supersu/Settings$Default;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v1, "%s=%d%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v6, "respectcm"

    aput-object v6, v2, v0

    const/4 v6, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$Default;->o:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    aput-object v5, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v1, "%s=%d%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v6, "trustsystem"

    aput-object v6, v2, v0

    const/4 v6, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$Default;->p:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    aput-object v5, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {p1}, Leu/chainfire/supersu/User;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "%s=%d%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v6, "enablemultiuser"

    aput-object v6, v2, v0

    const/4 v6, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$Default;->q:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    aput-object v5, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chown 0.0 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chown 0:0 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chown root.root "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chown root:root "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chmod 600 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b([Ljava/lang/String;)Ljava/util/List;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-static {v0}, Leu/chainfire/supersu/Settings$App;->b(Leu/chainfire/supersu/Settings$App;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget v1, v0, Leu/chainfire/supersu/Settings$App;->i:I

    if-eqz v1, :cond_6

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "uid"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_6
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "notify"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->k:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_7
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "log"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->l:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    const-string v2, "%s=%d%s"

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v8, "nodefaultcontentlog"

    aput-object v8, v7, v1

    const/4 v8, 0x1

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    const-string v9, ""

    invoke-static {p1, v1, v9}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    aput-object v5, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_9
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "wait"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_a
    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "access"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->n:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-wide v1, v0, Leu/chainfire/supersu/Settings$App;->c:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_b

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "expire"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget-wide v8, v0, Leu/chainfire/supersu/Settings$App;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forceshell"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_c
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->f:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forceuser"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, v0, Leu/chainfire/supersu/Settings$App;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const-string v2, ""

    const/4 v1, 0x0

    move v10, v1

    move-object v1, v2

    move v2, v10

    :goto_6
    iget-object v7, v0, Leu/chainfire/supersu/Settings$App;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_10

    const-string v0, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "forcegroups"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v1, v2, v7

    const/4 v1, 0x2

    aput-object v5, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_10
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, v0, Leu/chainfire/supersu/Settings$App;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Leu/chainfire/supersu/Settings$App;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$App;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object p1, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->n:I

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->n:I

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    iget-object v2, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public d()Leu/chainfire/supersu/Settings$Default;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->e:Leu/chainfire/supersu/Settings$Default;

    return-object v0
.end method
