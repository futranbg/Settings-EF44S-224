.class Leu/chainfire/supersu/SettingsFragment$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment$9;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$9;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$9$1;->a:Leu/chainfire/supersu/SettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$9$1;->a:Leu/chainfire/supersu/SettingsFragment$9;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$9;->a(Leu/chainfire/supersu/SettingsFragment$9;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method
