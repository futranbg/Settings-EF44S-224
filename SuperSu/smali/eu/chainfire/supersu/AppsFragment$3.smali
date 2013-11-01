.class Leu/chainfire/supersu/AppsFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->d(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->d(Leu/chainfire/supersu/AppsFragment;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b()V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    const/16 v1, 0x1100

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/AppsFragment;->a(IILandroid/content/Intent;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$3;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/AppsFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->a(I)V

    :cond_0
    return-void
.end method
