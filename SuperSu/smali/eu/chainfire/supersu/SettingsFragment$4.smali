.class Leu/chainfire/supersu/SettingsFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$4;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$4;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$4;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$4$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/SettingsFragment$4$1;-><init>(Leu/chainfire/supersu/SettingsFragment$4;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/SettingsFragment$4$1;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return v3
.end method
