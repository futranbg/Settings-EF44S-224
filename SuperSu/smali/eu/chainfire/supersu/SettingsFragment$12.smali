.class Leu/chainfire/supersu/SettingsFragment$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$12;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$12;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V

    const/4 v0, 0x0

    return v0
.end method
