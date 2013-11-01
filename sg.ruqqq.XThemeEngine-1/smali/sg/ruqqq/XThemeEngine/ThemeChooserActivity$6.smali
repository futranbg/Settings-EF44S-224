.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;
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


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 379
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$800(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "theme_package_name"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v3, "theme_package_path"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$800(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "theme_redirections_for_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    sget-object v4, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "... cleared!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    const-string v3, "theme_redirection_packages"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    const/4 v4, 0x0

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;
    invoke-static {v3, v4}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$302(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    const/4 v4, 0x0

    #setter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static {v3, v4}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$402(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;I)I

    .line 393
    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    new-instance v4, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6$1;

    invoke-direct {v4, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6$1;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;)V

    invoke-virtual {v3, v4}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method
