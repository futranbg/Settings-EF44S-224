.class Leu/chainfire/supersu/SettingsFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$11;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$11;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$11;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$11;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000b

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$11$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$11$1;-><init>(Leu/chainfire/supersu/SettingsFragment$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0
.end method
