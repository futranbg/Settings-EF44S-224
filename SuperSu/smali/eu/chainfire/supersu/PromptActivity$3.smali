.class Leu/chainfire/supersu/PromptActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PromptActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$3;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$3;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$3;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$3;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$3;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
