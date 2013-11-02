.class public Lde/robv/android/xposed/installer/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 18
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/SettingsFragment;->addPreferencesFromResource(I)V

    .line 28
    const-string v1, "enable_downloads"

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lde/robv/android/xposed/installer/SettingsFragment$1;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/SettingsFragment$1;-><init>(Lde/robv/android/xposed/installer/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "armeabi-v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "group_experimental"

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 44
    .local v0, parent:Landroid/preference/PreferenceGroup;
    const-string v1, "use_armv5"

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 45
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    .end local v0           #parent:Landroid/preference/PreferenceGroup;
    :cond_0
    return-void
.end method
