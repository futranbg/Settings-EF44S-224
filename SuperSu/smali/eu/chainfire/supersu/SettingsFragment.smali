.class public Leu/chainfire/supersu/SettingsFragment;
.super Leu/chainfire/supersu/PreferenceListFragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;

.field private e:Landroid/preference/ListPreference;

.field private f:Landroid/preference/ListPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/ListPreference;

.field private j:Landroid/preference/CheckBoxPreference;

.field private k:Landroid/preference/Preference;

.field private l:Landroid/preference/ListPreference;

.field private m:Landroid/preference/ListPreference;

.field private n:Landroid/preference/ListPreference;

.field private o:Landroid/preference/Preference;

.field private p:Landroid/preference/CheckBoxPreference;

.field private q:Landroid/preference/CheckBoxPreference;

.field private r:Landroid/preference/ListPreference;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->i:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->r:Landroid/preference/ListPreference;

    iput-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->u:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kill -9 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->b([Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/supersu/SettingsFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/supersu/SettingsFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const v3, 0x7f090068

    const v4, 0x7f090067

    const v1, 0x7f090065

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$16;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$16;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$17;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$17;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$18;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$18;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-direct {p0, v3}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v4}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$19;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$19;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    const-string v0, "eu.chainfire.supersu.MainActivity-Original"

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "original"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v0, "eu.chainfire.supersu.MainActivity-SuperAndy"

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "superandy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v0, "eu.chainfire.supersu.MainActivity-Chip"

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "chip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v0, "eu.chainfire.supersu.MainActivity-SuperSU"

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "supersu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "eu.chainfire.supersu.MainActivity-Emblem"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "emblem"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v4, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    const-string v0, "icon"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Leu/chainfire/supersu/SettingsFragment;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
    .locals 12

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->u:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/User;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    const-string v0, "SuperSU"

    iget-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " Pro"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Copyright (C) 2012-2013 - Chainfire\nTwitter: @ChainfireXDA\nG+: http://google.com/+Chainfire\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f090027

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "copyright"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/SettingsFragment$1;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$2;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09002c

    const/4 v3, 0x0

    const-string v4, "superuser"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_1
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09002f

    const/4 v3, 0x0

    const-string v4, "survival"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    :goto_2
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090032

    const/4 v3, 0x0

    const-string v4, "reauthenticate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->d:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090035

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090036

    const/4 v3, 0x0

    const v4, 0x7f090037

    const-string v5, "config_%s_access"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prompt"

    const/high16 v7, 0x7f0b

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "prompt"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "grant"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "deny"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09009d

    const/4 v3, 0x0

    const v4, 0x7f09009d

    const-string v5, "config_%s_wait"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const v9, 0x7f09009f

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f0900a0

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f0900a1

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const v9, 0x7f0900a2

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const v9, 0x7f0900a3

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const v9, 0x7f0900a4

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "10"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "20"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "30"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "60"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "120"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "300"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/ListPreference;

    :goto_3
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090038

    const/4 v3, 0x0

    const-string v4, "config_%s_notify"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003c

    const/4 v3, 0x0

    const v4, 0x7f09003d

    const-string v5, "config_%s_log"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    const v7, 0x7f0b0001

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "content"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "access"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "none"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    :goto_4
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003e

    const/4 v3, 0x0

    const v4, 0x7f09003f

    const-string v5, "config_%s_logage"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "0"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "14"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "7"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "3"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "2"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "1"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090040

    const v3, 0x7f090041

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$4;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$4;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090043

    const/4 v3, 0x0

    const v4, 0x7f090044

    const-string v5, "config_%s_logformat"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "31122359"

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "31122359"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "12312359"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "31121159PM"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "12311159PM"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0900a5

    const/4 v3, 0x0

    const-string v4, "refresh"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090046

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090047

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$5;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$5;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    :goto_5
    invoke-static {}, Leu/chainfire/supersu/User;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0900af

    const/4 v3, 0x0

    const-string v4, "config_%s_enablemultiuser"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    :cond_4
    :goto_6
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09008f

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$6;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$6;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090096

    const/4 v3, 0x0

    const v4, 0x7f090096

    const-string v5, "theme"

    const-string v6, "light"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const v9, 0x7f090098

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f090099

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f09009a

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const v9, 0x7f09009b

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "dark"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "light"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "light_darkbar"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "devicedefault"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->i:Landroid/preference/ListPreference;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v3, :cond_16

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$7;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/SettingsFragment$7;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v2, 0x7f09006e

    invoke-direct {p0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v8, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_18

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09008d

    const/4 v3, 0x0

    const v4, 0x7f09006d

    const-string v5, "locale"

    const-string v6, ""

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->r:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090075

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090076

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1a

    const v3, 0x7f090077

    :goto_9
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    :goto_a
    new-instance v5, Leu/chainfire/supersu/SettingsFragment$8;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$8;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v2, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_5
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09007c

    const/4 v3, 0x0

    const-string v4, "config_%s_trustsystem"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-static {}, Leu/chainfire/supersu/Settings;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090082

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090083

    const/4 v3, 0x0

    const-string v4, "config_%s_respectcm"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->j:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090085

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090086

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$9;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$9;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_6
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0900bb

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0900bc

    const/4 v3, 0x0

    const-string v4, "dev_permisison_warning"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090054

    const v3, 0x7f090055

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$10;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$10;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v2, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_7
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090051

    const v3, 0x7f090052

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$11;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$11;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v2, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_8
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0900c9

    const v3, 0x7f0900ca

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$12;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$12;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v2, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v2, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_9
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09004e

    const v3, 0x7f09004f

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$13;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$13;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v1, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_a
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-static {v0, v10, v1}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09004b

    const v3, 0x7f09004c

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$14;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$14;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090063

    const v3, 0x7f090064

    const/4 v4, 0x1

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$15;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$15;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    if-nez v0, :cond_b

    :cond_b
    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->t:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0900c2

    const/4 v3, 0x0

    const-string v4, "freeload"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IILjava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    :cond_c
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v1, "shown_follow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_follow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Z)V

    :cond_d
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-object v10

    :cond_e
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002d

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002e

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->b:Landroid/preference/CheckBoxPreference;

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$3;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$3;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->c:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09009d

    const v3, 0x7f09002a

    const v4, 0x7f09009d

    const-string v5, "config_%s_wait"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const v9, 0x7f09009f

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f0900a0

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f0900a1

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const v9, 0x7f0900a2

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const v9, 0x7f0900a3

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const v9, 0x7f0900a4

    invoke-direct {p0, v9}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "10"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "20"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "30"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "60"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "120"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "300"

    aput-object v11, v8, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/ListPreference;

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    const v0, 0x7f0b0001

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v0, v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    aput-object v0, v7, v2

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f09003c

    const/4 v3, 0x0

    const v4, 0x7f09003d

    const-string v5, "config_%s_log"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "default"

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v11, "access"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "none"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->a(Landroid/content/Context;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    goto/16 :goto_4

    :cond_14
    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_16
    aget-object v5, v2, v0

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v2, Ljava/util/Locale;

    const/4 v5, 0x0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    add-int/lit8 v2, v3, 0x1

    aput-object v0, v8, v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_8

    :cond_19
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const v3, 0x7f090078

    goto/16 :goto_9

    :cond_1b
    const/4 v4, 0x1

    goto/16 :goto_a

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "config_%s_access"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_0
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "config_%s_access"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prompt"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->a(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_29

    move v2, v1

    :goto_1
    if-eqz p1, :cond_1

    const-string v3, "config_%s_wait"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->f:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "settings_access_countdown_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v8, "config_%s_wait"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "default"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09009e

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_3

    move v2, v1

    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "config_%s_notify"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    move v2, v1

    :cond_5
    if-eqz p1, :cond_6

    const-string v3, "config_%s_log"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v4, "config_%s_log"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "access"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->c(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_2
    if-eqz p1, :cond_7

    move v2, v1

    :cond_7
    if-eqz p1, :cond_8

    const-string v3, "config_%s_logage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v4, "config_%s_logage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_3
    if-eqz p1, :cond_9

    move v2, v1

    :cond_9
    if-eqz p1, :cond_a

    const-string v3, "config_%s_logformat"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_a
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v4, "config_%s_logformat"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "31122359"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "31122359"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    const-string v5, "[ %s ]\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f0b0003

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x7f090045

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    const-string v4, "12312359"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    const-string v5, "[ %s ]\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f0b0003

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x7f090045

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    const-string v4, "31121159PM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    const-string v5, "[ %s ]\n%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f0b0003

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x7f090045

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    const-string v4, "12311159PM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->n:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0003

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f090045

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    if-eqz p1, :cond_f

    move v2, v1

    :cond_f
    if-nez p1, :cond_10

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Leu/chainfire/supersu/SettingsFragment;->s:Z

    if-nez v3, :cond_23

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_10
    :goto_4
    if-eqz p1, :cond_11

    const-string v3, "config_%s_respectcm"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    if-eqz p1, :cond_12

    move v2, v1

    :cond_12
    if-nez p1, :cond_13

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    if-eqz v3, :cond_13

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/addon.d/99-supersu.sh"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_13
    :goto_5
    if-eqz p1, :cond_14

    const-string v3, "config_%s_trustsystem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    if-eqz p1, :cond_15

    move v2, v1

    :cond_15
    if-eqz p1, :cond_16

    const-string v3, "survival"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Leu/chainfire/supersu/Installer;

    invoke-direct {v3}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v6, "survival"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Z)Z

    :cond_16
    if-eqz p1, :cond_17

    const-string v3, "locale"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v4, "locale"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->r:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ %s ]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f09006e

    invoke-direct {p0, v8}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "SuperSU"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09006f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090004

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$20;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$20;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$21;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$21;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_18
    if-eqz p1, :cond_19

    const-string v3, "icon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->h:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "settings_custom_icon_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v8, "icon"

    const-string v9, "emblem"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1a
    if-eqz p1, :cond_1b

    const-string v3, "theme"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->i:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/supersu/SettingsFragment;->w:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "settings_custom_theme_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v8, "theme"

    const-string v9, "light"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090097

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "SuperSU"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09009c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090004

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$22;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$22;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Leu/chainfire/supersu/SettingsFragment$23;

    invoke-direct {v4, p0}, Leu/chainfire/supersu/SettingsFragment$23;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1c
    if-eqz p1, :cond_1d

    const-string v3, "config_%s_enablemultiuser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "default"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1d
    if-eqz p1, :cond_1e

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "SuperSU"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1e
    if-eqz p1, :cond_1f

    move v2, v1

    :cond_1f
    if-eqz p1, :cond_20

    const-string v3, "freeload"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "SuperSU"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090004

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$24;

    invoke-direct {v5, p0}, Leu/chainfire/supersu/SettingsFragment$24;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_20
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_21

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->q:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->a:Landroid/content/SharedPreferences;

    const-string v5, "freeload"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_28

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_21
    if-eqz v2, :cond_22

    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    :cond_22
    :goto_8
    return-void

    :pswitch_0
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_8

    :pswitch_1
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->e:Landroid/preference/ListPreference;

    const-string v3, "[ %s ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f0b

    invoke-direct {p0, v6}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0001

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0001

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->l:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0001

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :sswitch_0
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_1
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_2
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_3
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_4
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_5
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->m:Landroid/preference/ListPreference;

    const-string v4, "[ %s ]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0b0002

    invoke-direct {p0, v7}, Leu/chainfire/supersu/SettingsFragment;->b(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_23
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_24
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->o:Landroid/preference/Preference;

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_25
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v4, 0x7f090088

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_26
    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->k:Landroid/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_27
    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->r:Landroid/preference/ListPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ %s ]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-direct {p0, v5}, Leu/chainfire/supersu/SettingsFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_28
    move v0, v1

    goto/16 :goto_7

    :cond_29
    move v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x7 -> :sswitch_2
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Leu/chainfire/supersu/PreferenceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
