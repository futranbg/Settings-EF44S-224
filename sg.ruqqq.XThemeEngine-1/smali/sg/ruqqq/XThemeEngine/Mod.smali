.class public Lsg/ruqqq/XThemeEngine/Mod;
.super Ljava/lang/Object;
.source "Mod.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookInitPackageResources;


# static fields
.field private static MODULE_PATH:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

.field public static XSharedPrefs_IconThemer:Lde/robv/android/xposed/XSharedPreferences;

.field private static mIconThemer_IconPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIconThemer_IconReplacementsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPackageRedirectionItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPackageRedirections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mThemePackage:Ljava/lang/String;

.field private static mThemePackagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "XThemeEngine/Mod"

    sput-object v0, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirections:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirectionItems:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconPackages:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconReplacementsHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .locals 13
    .parameter "resparam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v8, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    const-string v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirections:Ljava/util/ArrayList;

    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 124
    sget-object v8, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirectionItems:Ljava/util/HashMap;

    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 126
    .local v6, redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    sget-object v8, Lsg/ruqqq/XThemeEngine/Mod;->mThemePackagePath:Ljava/lang/String;

    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    invoke-static {v8, v9}, Landroid/content/res/XModuleResources;->createInstance(Ljava/lang/String;Landroid/content/res/XResources;)Landroid/content/res/XModuleResources;

    move-result-object v7

    .line 127
    .local v7, themeRes:Landroid/content/res/XModuleResources;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    .line 129
    .local v4, it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :try_start_0
    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->isReplacementIsFromAnotherPackage()Z

    move-result v8

    if-nez v8, :cond_0

    .line 132
    iget-object v8, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 133
    .local v5, origId:I
    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/XModuleResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 135
    .local v3, id:I
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 136
    sget-object v8, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconReplacementsHashMap:Ljava/util/HashMap;

    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 138
    .local v2, iconReplacementItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v8, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconPackages:Ljava/util/ArrayList;

    iget-object v9, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \tINFO (IconThemer overriding): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 154
    .end local v2           #iconReplacementItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #id:I
    .end local v5           #origId:I
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \tFAILED (Orig Res Not Found): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #iconReplacementItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3       #id:I
    .restart local v5       #origId:I
    :cond_1
    :try_start_1
    iget-object v8, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v3}, Landroid/content/res/XModuleResources;->fwd(I)Landroid/content/res/XResForwarder;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/res/XResources;->setReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    .end local v2           #iconReplacementItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \tFAILED (Rep Res Not Found): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] \tFAILED (Orig Res Not Found): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 164
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    .end local v4           #it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .end local v5           #origId:I
    .end local v6           #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    .end local v7           #themeRes:Landroid/content/res/XModuleResources;
    :cond_4
    return-void
.end method

.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0
    .parameter "lpparam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 29
    .parameter "startupParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-object v0, v0, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    move-object/from16 v25, v0

    sput-object v25, Lsg/ruqqq/XThemeEngine/Mod;->MODULE_PATH:Ljava/lang/String;

    .line 38
    new-instance v25, Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "sg.ruqqq.XThemeEngine"

    sget-object v27, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->SHARED_PREFERENCE_NAME:Ljava/lang/String;

    invoke-direct/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

    .line 39
    new-instance v25, Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "sg.ruqqq.IconThemer"

    const-string v27, "ICONTHEMER_PREFS"

    invoke-direct/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs_IconThemer:Lde/robv/android/xposed/XSharedPreferences;

    .line 41
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "theme_package_name"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mThemePackage:Ljava/lang/String;

    .line 42
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "theme_package_path"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mThemePackagePath:Ljava/lang/String;

    .line 44
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mThemePackage:Ljava/lang/String;

    if-eqz v25, :cond_3

    .line 46
    :try_start_0
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    .local v7, gson:Lcom/google/gson/Gson;
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "theme_redirection_packages"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-class v26, [Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 49
    .local v19, packages:[Ljava/lang/String;
    move-object/from16 v3, v19

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v16           #len$:I
    .local v9, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_1

    aget-object v20, v3, v9

    .line 51
    .local v20, pkg:Ljava/lang/String;
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirections:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs:Lde/robv/android/xposed/XSharedPreferences;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "theme_redirections_for_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-class v26, [Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    .line 54
    .local v21, redirectionItems:[Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    move-object/from16 v4, v21

    .local v4, arr$:[Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    aget-object v14, v4, v8

    .line 57
    .local v14, item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 60
    .end local v14           #item:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :cond_0
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirectionItems:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_0

    .line 63
    .end local v4           #arr$:[Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .end local v15           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    .end local v17           #len$:I
    .end local v20           #pkg:Ljava/lang/String;
    .end local v21           #redirectionItems:[Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :cond_1
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mPackageRedirectionItems:Ljava/util/HashMap;

    const-string v26, "android"

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 64
    .local v22, redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_5

    .line 65
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mThemePackagePath:Ljava/lang/String;

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/content/res/XModuleResources;->createInstance(Ljava/lang/String;Landroid/content/res/XResources;)Landroid/content/res/XModuleResources;

    move-result-object v24

    .line 67
    .local v24, themeRes:Landroid/content/res/XModuleResources;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .local v13, it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :try_start_1
    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->isReplacementIsFromAnotherPackage()Z

    move-result v25

    if-nez v25, :cond_2

    .line 72
    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementPackage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Landroid/content/res/XModuleResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 73
    .local v12, id:I
    if-eqz v12, :cond_4

    .line 74
    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalPackage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/content/res/XModuleResources;->fwd(I)Landroid/content/res/XResForwarder;

    move-result-object v28

    invoke-static/range {v25 .. v28}, Landroid/content/res/XResources;->setSystemWideReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 81
    .end local v12           #id:I
    :catch_0
    move-exception v5

    .line 82
    .local v5, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] \tFAILED (Orig Res Not Found): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 105
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #gson:Lcom/google/gson/Gson;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .end local v19           #packages:[Ljava/lang/String;
    .end local v22           #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    .end local v24           #themeRes:Landroid/content/res/XModuleResources;
    :catch_1
    move-exception v5

    .line 106
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v23, Ljava/io/StringWriter;

    invoke-direct/range {v23 .. v23}, Ljava/io/StringWriter;-><init>()V

    .line 107
    .local v23, sw:Ljava/io/StringWriter;
    new-instance v25, Ljava/io/PrintWriter;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual/range {v23 .. v23}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, exceptionAsString:Ljava/lang/String;
    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 112
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #exceptionAsString:Ljava/lang/String;
    .end local v23           #sw:Ljava/io/StringWriter;
    :cond_3
    :goto_3
    return-void

    .line 76
    .restart local v7       #gson:Lcom/google/gson/Gson;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v12       #id:I
    .restart local v13       #it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .restart local v19       #packages:[Ljava/lang/String;
    .restart local v22       #redirections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    .restart local v24       #themeRes:Landroid/content/res/XModuleResources;
    :cond_4
    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] \tFAILED (Rep Res Not Found): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getOriginalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 88
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #id:I
    .end local v13           #it:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    .end local v24           #themeRes:Landroid/content/res/XModuleResources;
    :cond_5
    :try_start_4
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs_IconThemer:Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "theme_icon_packages"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_3

    .line 89
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] Loading IconThemer Configs"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 90
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs_IconThemer:Lde/robv/android/xposed/XSharedPreferences;

    const-string v26, "theme_icon_packages"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-class v26, [Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 91
    .local v11, iconThemer_packages:[Ljava/lang/String;
    move-object v3, v11

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v16           #len$:I
    .restart local v9       #i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v9, v0, :cond_8

    aget-object v20, v3, v9

    .line 92
    .restart local v20       #pkg:Ljava/lang/String;
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->XSharedPrefs_IconThemer:Lde/robv/android/xposed/XSharedPreferences;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "theme_icon_for_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-class v26, [Lsg/ruqqq/IconThemer/theme/IconReplacementItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lsg/ruqqq/IconThemer/theme/IconReplacementItem;

    .line 95
    .local v10, iconReplacementItems:[Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v18, origResIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v4, v10

    .local v4, arr$:[Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    array-length v0, v4

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_5
    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    aget-object v14, v4, v8

    .line 97
    .local v14, item:Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    invoke-virtual {v14}, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->getOrigRes()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 98
    invoke-virtual {v14}, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->getOrigRes()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 101
    .end local v14           #item:Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    :cond_7
    sget-object v25, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconReplacementsHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_4

    .line 103
    .end local v4           #arr$:[Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    .end local v10           #iconReplacementItems:[Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    .end local v17           #len$:I
    .end local v18           #origResIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20           #pkg:Ljava/lang/String;
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lsg/ruqqq/XThemeEngine/Mod;->TAG:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] IconThemer Packages: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lsg/ruqqq/XThemeEngine/Mod;->mIconThemer_IconPackages:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3
.end method
