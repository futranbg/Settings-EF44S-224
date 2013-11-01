.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->tryAndApplyTheme(Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

.field final synthetic val$themePackage:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    iput-object p2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 408
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v25 .. v25}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$800(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 410
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 412
    .local v20, themePackagePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "/data/app/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 413
    sget-object v25, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Original Theme APK is at "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/16 v25, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "cat \""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\" > /data/data/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/current_theme.apk && chmod 644 /data/data/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/current_theme.apk"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 415
    .local v4, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 416
    invoke-virtual {v4}, Lcom/stericson/RootTools/CommandCapture;->exitCode()I

    move-result v25

    if-eqz v25, :cond_0

    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Failed to copy theme to internal storage"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #themePackagePath:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 523
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    new-instance v26, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$2;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V

    invoke-virtual/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    new-instance v26, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V

    invoke-virtual/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    .end local v5           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 417
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v20       #themePackagePath:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/data/data/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/current_theme.apk"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 418
    sget-object v25, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Copied Theme APK is at "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    .line 425
    .local v9, gson:Lcom/google/gson/Gson;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v13, mPackageRedirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v19, redirectionsFor:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    .line 429
    .local v16, r:Landroid/content/res/Resources;
    const-string v25, "redirections"

    const-string v26, "xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v24

    .line 432
    .local v24, xrp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v25 .. v25}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$800(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 433
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "theme_redirections_for_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 434
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    sget-object v26, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Found "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "... cleared!"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 532
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #gson:Lcom/google/gson/Gson;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #mPackageRedirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #r:Landroid/content/res/Resources;
    .end local v19           #redirectionsFor:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;>;"
    .end local v20           #themePackagePath:Ljava/lang/String;
    .end local v24           #xrp:Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v26, v0

    new-instance v27, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V

    invoke-virtual/range {v26 .. v27}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v25

    .line 420
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v20       #themePackagePath:Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/16 v25, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "rm /data/data/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/current_theme.apk"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 421
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    goto/16 :goto_1

    .line 438
    .restart local v9       #gson:Lcom/google/gson/Gson;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v13       #mPackageRedirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #r:Landroid/content/res/Resources;
    .restart local v19       #redirectionsFor:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;>;"
    .restart local v24       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    invoke-static/range {v24 .. v24}, Lsg/ruqqq/XThemeEngine/theme/Util;->ParsePackageRedirections(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v14

    .line 442
    .local v14, packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;

    .line 443
    .local v15, pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceManufacturer()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_5

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceManufacturer()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 444
    :cond_5
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceModel()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_6

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceModel()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 445
    :cond_6
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceId()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_7

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceId()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v25

    if-eqz v25, :cond_4

    .line 447
    :cond_7
    const/16 v17, 0x0

    .line 449
    .local v17, r2:Landroid/content/res/Resources;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v17

    .line 452
    :goto_3
    if-eqz v17, :cond_4

    .line 454
    :try_start_5
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getResId()I

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lsg/ruqqq/XThemeEngine/theme/Util;->ParseRedirections(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v18

    .line 458
    .local v18, redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 460
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    .line 461
    .local v12, item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_8

    .line 462
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 467
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .end local v15           #pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    .end local v17           #r2:Landroid/content/res/Resources;
    .end local v18           #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    :cond_9
    const-string v25, "xthemeengine_redirections"

    const-string v26, "xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 468
    .local v22, x_redirections_xml_id:I
    if-eqz v22, :cond_12

    .line 470
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    .line 472
    .local v23, x_xrp:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v23 .. v23}, Lsg/ruqqq/XThemeEngine/theme/Util;->ParsePackageRedirections(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v21

    .line 473
    .local v21, x_packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;

    .line 474
    .restart local v15       #pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceManufacturer()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_b

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceManufacturer()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 475
    :cond_b
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceModel()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_c

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceModel()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 476
    :cond_c
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceId()Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_d

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getDeviceId()Ljava/util/ArrayList;

    move-result-object v25

    sget-object v26, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v25

    if-eqz v25, :cond_a

    .line 478
    :cond_d
    const/16 v17, 0x0

    .line 480
    .restart local v17       #r2:Landroid/content/res/Resources;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v17

    .line 483
    :goto_6
    if-eqz v17, :cond_a

    .line 485
    :try_start_7
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 486
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_e
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getResId()I

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lsg/ruqqq/XThemeEngine/theme/Util;->ParseRedirections(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v18

    .line 489
    .restart local v18       #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-nez v25, :cond_f

    .line 490
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    .line 493
    .restart local v12       #item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v12}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_10

    .line 494
    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 497
    .end local v12           #item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :cond_11
    sget-object v25, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "XThemeEngine ONLY mod for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v15}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 501
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    .end local v17           #r2:Landroid/content/res/Resources;
    .end local v18           #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    .end local v21           #x_packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    .end local v23           #x_xrp:Landroid/content/res/XmlResourceParser;
    :cond_12
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 503
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;>;"
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "theme_redirections_for_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 506
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;>;"
    :cond_13
    const-string v25, "theme_redirection_packages"

    invoke-virtual {v13}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    const-string v25, "theme_package_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v25, "theme_package_path"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$302(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v26, v0

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$100(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->val$themePackage:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$402(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;I)I

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    new-instance v26, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$1;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V

    invoke-virtual/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    move-object/from16 v25, v0

    new-instance v26, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V

    invoke-virtual/range {v25 .. v26}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 481
    .end local v10           #i$:Ljava/util/Iterator;
    .restart local v15       #pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    .restart local v17       #r2:Landroid/content/res/Resources;
    .restart local v21       #x_packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    .restart local v23       #x_xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v25

    goto/16 :goto_6

    .line 450
    .end local v21           #x_packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    .end local v22           #x_redirections_xml_id:I
    .end local v23           #x_xrp:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v25

    goto/16 :goto_3
.end method
