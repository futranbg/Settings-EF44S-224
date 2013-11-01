.class Leu/chainfire/supersu/SettingsFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$8;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f09000b

    const v2, 0x7f090005

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/superuser.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/Superuser.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/SuperUser.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/supersu.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/Supersu.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    const-string v1, "/system/app/SuperSU.apk"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->b(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$8$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$8$1;-><init>(Leu/chainfire/supersu/SettingsFragment$8;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$8$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$8$2;-><init>(Leu/chainfire/supersu/SettingsFragment$8;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
