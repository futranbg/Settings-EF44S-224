.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->refreshThemeListNoFilter()V
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
    .line 323
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 326
    iget-object v7, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-virtual {v7}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 327
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 329
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 336
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 337
    .local v6, r:Landroid/content/res/Resources;
    const-string v7, "redirections"

    const-string v8, "xml"

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, name:Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;
    invoke-static {v8}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$300(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " *"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v7, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    iget-object v8, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v8}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static {v7, v8}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$402(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;I)I

    .line 346
    :cond_1
    iget-object v7, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v7}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v7, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;
    invoke-static {v7}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$100(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v7, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    new-instance v8, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;

    invoke-direct {v8, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;)V

    invoke-virtual {v7, v8}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method
