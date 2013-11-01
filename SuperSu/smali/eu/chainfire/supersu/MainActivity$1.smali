.class Leu/chainfire/supersu/MainActivity$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu.action.UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "eu.chainfire.supersu.extra.FLAGS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->b()V

    :cond_0
    :goto_0
    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->b()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    iput-boolean v2, v1, Leu/chainfire/supersu/MainActivity;->b:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1;->a:Leu/chainfire/supersu/MainActivity;

    iput-boolean v2, v0, Leu/chainfire/supersu/MainActivity;->c:Z

    goto :goto_1
.end method
