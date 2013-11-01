.class public Leu/chainfire/supersu/SpinnerHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final a:Landroid/widget/Spinner;

.field private b:I

.field private c:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    iput-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/Spinner;

    :goto_0
    iput-object p1, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    return-void

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget v0, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    if-eq p3, v0, :cond_0

    iput p3, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    if-eq v1, v0, :cond_0

    iput v1, p0, Leu/chainfire/supersu/SpinnerHelper;->b:I

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SpinnerHelper;->c:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method
