.class Lde/robv/android/xposed/installer/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/SettingsFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/SettingsFragment$1;->this$0:Lde/robv/android/xposed/installer/SettingsFragment;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 31
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 32
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable_downloads"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lde/robv/android/xposed/installer/util/RepoLoader;->triggerReload(Z)V

    .line 38
    :goto_0
    return v3

    .line 36
    :cond_0
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v1

    invoke-virtual {v1}, Lde/robv/android/xposed/installer/util/RepoLoader;->clear()V

    goto :goto_0
.end method
