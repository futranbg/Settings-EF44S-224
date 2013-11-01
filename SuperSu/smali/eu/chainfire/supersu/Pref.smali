.class public Leu/chainfire/supersu/Pref;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;Z)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;Z)Landroid/preference/CheckBoxPreference;
    .locals 1

    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_1
    invoke-virtual {v0, p6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;
    .locals 1

    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(I)V

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setSummary(I)V

    :cond_1
    invoke-virtual {v0, p9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    if-lez p4, :cond_2

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    :cond_2
    invoke-virtual {v0, p7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 1

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    :cond_0
    if-lez p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz p5, :cond_2

    invoke-virtual {v0, p5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;
    .locals 1

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method
