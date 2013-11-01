.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iput-object p2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->b:Landroid/app/Activity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0, v3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$3;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void
.end method
