.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$4;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void
.end method
