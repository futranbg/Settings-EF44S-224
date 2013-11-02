.class Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;
.super Ljava/lang/Object;
.source "DownloadDetailsFragment.java"

# interfaces
.implements Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/DownloadDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadModuleCallback"
.end annotation


# instance fields
.field private final moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/repo/ModuleVersion;)V
    .locals 0
    .parameter "moduleVersion"

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    .line 237
    return-void
.end method


# virtual methods
.method public onDownloadFinished(Landroid/content/Context;Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;)V
    .locals 12
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 241
    new-instance v3, Ljava/io/File;

    iget-object v6, p2, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->localFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v3, localFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v6, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v6, v6, Lde/robv/android/xposed/installer/repo/ModuleVersion;->md5sum:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v6, v6, Lde/robv/android/xposed/installer/repo/ModuleVersion;->md5sum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    :try_start_0
    invoke-static {v3}, Lde/robv/android/xposed/installer/util/HashUtil;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, actualMd5Sum:Ljava/lang/String;
    iget-object v6, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v6, v6, Lde/robv/android/xposed/installer/repo/ModuleVersion;->md5sum:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    const v6, 0x7f080054

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 250
    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v9, v9, Lde/robv/android/xposed/installer/repo/ModuleVersion;->md5sum:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 249
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 250
    const/4 v7, 0x1

    .line 249
    invoke-static {p1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 250
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v0           #actualMd5Sum:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    const v6, 0x7f080055

    new-array v7, v10, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 255
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 256
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 262
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p2, Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadInfo;->localFilename:Ljava/lang/String;

    invoke-virtual {v5, v6, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 264
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_2

    .line 265
    const v6, 0x7f080056

    invoke-static {p1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/ModuleVersion;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    const v6, 0x7f080057

    new-array v7, v8, [Ljava/lang/Object;

    .line 272
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v11

    iget-object v8, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;->moduleVersion:Lde/robv/android/xposed/installer/repo/ModuleVersion;

    iget-object v8, v8, Lde/robv/android/xposed/installer/repo/ModuleVersion;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v8, v8, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    aput-object v8, v7, v10

    .line 271
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-static {p1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 273
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 278
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, installIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v6, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
