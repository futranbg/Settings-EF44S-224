.class Leu/chainfire/supersu/AppDetailActivity$1;
.super Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppDetailActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$1;->a:Leu/chainfire/supersu/AppDetailActivity;

    invoke-direct {p0, p2, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->a:Leu/chainfire/supersu/AppDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->a:Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$1;->a:Leu/chainfire/supersu/AppDetailActivity;

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
