.class Leu/chainfire/supersu/SettingsFragment$6$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment$6$2;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$6$2;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6$2$1;->a:Leu/chainfire/supersu/SettingsFragment$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6$2$1;->a:Leu/chainfire/supersu/SettingsFragment$6$2;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6$2;->a(Leu/chainfire/supersu/SettingsFragment$6$2;)Leu/chainfire/supersu/SettingsFragment$6;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment$6;->a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    const-string v1, "invisible"

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V

    return-void
.end method
