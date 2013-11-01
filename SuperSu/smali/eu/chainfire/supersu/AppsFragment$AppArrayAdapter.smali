.class Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment;

.field private b:Landroid/view/LayoutInflater;

.field private c:I


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/AppsFragment;Landroid/content/Context;I[Leu/chainfire/supersu/Settings$App;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->b:Landroid/view/LayoutInflater;

    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->c:I

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->b:Landroid/view/LayoutInflater;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    const v1, 0x7f040032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f040034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Leu/chainfire/supersu/Settings$App;->n:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const v0, 0x7f02005a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f040035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Leu/chainfire/supersu/AppsFragment$AppArrayAdapter;->c:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_2
    iget v2, v0, Leu/chainfire/supersu/Settings$App;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-wide v2, v0, Leu/chainfire/supersu/Settings$App;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const v0, 0x7f020059

    goto :goto_0

    :cond_3
    const v0, 0x7f020057

    goto :goto_0

    :cond_4
    iget-wide v2, v0, Leu/chainfire/supersu/Settings$App;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const v0, 0x7f02005b

    goto :goto_0

    :cond_5
    const v0, 0x7f020058

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    goto :goto_1
.end method
