.class Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTALL_STATUS_HAS_UPDATE:I = 0x2

.field public static final INSTALL_STATUS_INSTALLED:I = 0x1

.field public static final INSTALL_STATUS_NOT_INSTALLED:I


# instance fields
.field public final group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

.field public final isFramework:Z

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;Lde/robv/android/xposed/installer/repo/ModuleGroup;)V
    .locals 2
    .parameter
    .parameter "group"

    .prologue
    .line 394
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    .line 396
    iget-object v0, p2, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->packageName:Ljava/lang/String;

    .line 397
    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mModuleUtil:Lde/robv/android/xposed/installer/util/ModuleUtil;
    invoke-static {p1}, Lde/robv/android/xposed/installer/DownloadFragment;->access$3(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v0

    iget-object v1, p2, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->isFramework(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->isFramework:Z

    .line 398
    return-void
.end method

.method private stringContainsText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "value"
    .parameter "text"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 483
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;)I
    .locals 11
    .parameter "other"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    .line 439
    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v3

    .line 442
    :cond_1
    iget-object v5, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v5}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 443
    invoke-virtual {p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLastUpdate()J

    move-result-wide v5

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLastUpdate()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 444
    .local v1, updateDiff:J
    cmp-long v5, v1, v9

    if-eqz v5, :cond_3

    .line 445
    cmp-long v5, v1, v9

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 446
    .end local v1           #updateDiff:J
    :cond_2
    iget-object v5, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v5}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 447
    invoke-virtual {p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getCreationDate()J

    move-result-wide v5

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getCreationDate()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 448
    .restart local v1       #updateDiff:J
    cmp-long v5, v1, v9

    if-eqz v5, :cond_3

    .line 449
    cmp-long v5, v1, v9

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 452
    .end local v1           #updateDiff:J
    :cond_3
    iget-boolean v5, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->isFramework:Z

    iget-boolean v6, p1, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->isFramework:Z

    if-eq v5, v6, :cond_5

    .line 453
    iget-boolean v5, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->isFramework:Z

    if-eqz v5, :cond_4

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    .line 455
    :cond_5
    invoke-virtual {p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstallStatus()I

    move-result v3

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstallStatus()I

    move-result v4

    sub-int v0, v3, v4

    .line 456
    .local v0, order:I
    if-eqz v0, :cond_6

    move v3, v0

    .line 457
    goto :goto_0

    .line 459
    :cond_6
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 460
    if-eqz v0, :cond_7

    move v3, v0

    .line 461
    goto :goto_0

    .line 463
    :cond_7
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 464
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->compareTo(Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;)I

    move-result v0

    return v0
.end method

.method public containsText(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 469
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->stringContainsText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v1

    iget-object v1, v1, Lde/robv/android/xposed/installer/repo/Module;->summary:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->stringContainsText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v1

    iget-object v1, v1, Lde/robv/android/xposed/installer/repo/Module;->description:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->stringContainsText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v1

    iget-object v1, v1, Lde/robv/android/xposed/installer/repo/Module;->author:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->stringContainsText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreationDate()J
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-wide v0, v0, Lde/robv/android/xposed/installer/repo/Module;->created:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-object v0, v0, Lde/robv/android/xposed/installer/repo/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallStatus()I
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstalled()Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v0

    .line 414
    .local v0, installed:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    if-nez v0, :cond_0

    .line 415
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLatestVersion()Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->isUpdate(Lde/robv/android/xposed/installer/repo/ModuleVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getInstalled()Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mModuleUtil:Lde/robv/android/xposed/installer/util/ModuleUtil;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$3(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    iget-object v1, v1, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdate()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-wide v0, v0, Lde/robv/android/xposed/installer/repo/Module;->updated:J

    return-wide v0
.end method

.method public getLatestVersion()Lde/robv/android/xposed/installer/repo/ModuleVersion;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mRepoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$4(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/util/RepoLoader;->getLatestVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Lde/robv/android/xposed/installer/repo/Module;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->group:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
