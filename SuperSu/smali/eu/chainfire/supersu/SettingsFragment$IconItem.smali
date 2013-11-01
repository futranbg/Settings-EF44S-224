.class Leu/chainfire/supersu/SettingsFragment$IconItem;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field final synthetic c:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->c:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->a:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->c:Leu/chainfire/supersu/SettingsFragment;

    iget v1, p0, Leu/chainfire/supersu/SettingsFragment$IconItem;->a:I

    invoke-static {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->a(Leu/chainfire/supersu/SettingsFragment;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
