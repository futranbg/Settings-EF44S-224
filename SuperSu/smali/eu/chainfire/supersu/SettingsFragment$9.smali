.class Leu/chainfire/supersu/SettingsFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$9;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$9;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$9;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$9;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$9$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$9$1;-><init>(Leu/chainfire/supersu/SettingsFragment$9;)V

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
