.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->refreshThemeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 259
    iget-object v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-virtual {v9}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 260
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v9, 0x80

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 262
    .local v6, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 264
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v10, "/data/app/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    :try_start_0
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x1000

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 271
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 273
    .local v8, requestedPermissions:[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 274
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_0

    .line 275
    aget-object v9, v8, v2

    const-string v10, "sg.ruqqq.XThemeEngine.permission.SYSTEM_THEME"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 276
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, name:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;
    invoke-static {v10}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$300(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " *"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    iget-object v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    iget-object v10, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v10}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static {v9, v10}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$402(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;I)I

    .line 283
    :cond_1
    iget-object v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v9}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$100(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v9, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v2           #i:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #requestedPermissions:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 296
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    new-instance v10, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4$1;

    invoke-direct {v10, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4$1;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;)V

    invoke-virtual {v9, v10}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method
