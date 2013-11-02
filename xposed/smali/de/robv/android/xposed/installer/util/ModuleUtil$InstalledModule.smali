.class public Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
.super Ljava/lang/Object;
.source "ModuleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/util/ModuleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstalledModule"
.end annotation


# instance fields
.field public app:Landroid/content/pm/ApplicationInfo;

.field private appName:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final isFramework:Z

.field public final minVersion:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lde/robv/android/xposed/installer/util/ModuleUtil;

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;Z)V
    .locals 5
    .parameter
    .parameter "pkg"
    .parameter "isFramework"

    .prologue
    .line 121
    iput-object p1, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->this$0:Lde/robv/android/xposed/installer/util/ModuleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    .line 123
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->packageName:Ljava/lang/String;

    .line 124
    iput-boolean p3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->isFramework:Z

    .line 125
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionName:Ljava/lang/String;

    .line 126
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionCode:I

    .line 128
    if-eqz p3, :cond_0

    .line 129
    const-string v3, ""

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->minVersion:Ljava/lang/String;

    .line 130
    const-string v3, ""

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->description:Ljava/lang/String;

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "xposedminversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->minVersion:Ljava/lang/String;

    .line 133
    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "xposeddescription"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, descriptionRaw:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 135
    .local v0, description:Ljava/lang/String;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 136
    check-cast v1, Ljava/lang/String;

    .end local v1           #descriptionRaw:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .end local v0           #description:Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->description:Ljava/lang/String;

    goto :goto_0

    .line 137
    .restart local v0       #description:Ljava/lang/String;
    .restart local v1       #descriptionRaw:Ljava/lang/Object;
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 139
    :try_start_0
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #descriptionRaw:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, resId:I
    if-eqz v2, :cond_1

    .line 141
    #getter for: Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->access$0(Lde/robv/android/xposed/installer/util/ModuleUtil;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 144
    .end local v2           #resId:I
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 142
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;ZLde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;-><init>(Lde/robv/android/xposed/installer/util/ModuleUtil;Landroid/content/pm/PackageInfo;Z)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->this$0:Lde/robv/android/xposed/installer/util/ModuleUtil;

    #getter for: Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->access$0(Lde/robv/android/xposed/installer/util/ModuleUtil;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->appName:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->this$0:Lde/robv/android/xposed/installer/util/ModuleUtil;

    #getter for: Lde/robv/android/xposed/installer/util/ModuleUtil;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->access$0(Lde/robv/android/xposed/installer/util/ModuleUtil;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isUpdate(Lde/robv/android/xposed/installer/repo/ModuleVersion;)Z
    .locals 3
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    iget v1, p1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->code:I

    iget v2, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionCode:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    const-string v0, "%s [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
