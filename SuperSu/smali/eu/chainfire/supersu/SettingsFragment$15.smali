.class Leu/chainfire/supersu/SettingsFragment$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$15;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(Leu/chainfire/supersu/SettingsFragment;Z)V

    return v1
.end method
