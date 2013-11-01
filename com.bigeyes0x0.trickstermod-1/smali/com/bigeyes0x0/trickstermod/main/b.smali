.class Lcom/bigeyes0x0/trickstermod/main/b;
.super Landroid/widget/ArrayAdapter;
.source "ActivityDonate.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/b;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;

    .line 102
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 109
    if-nez p2, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 118
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 119
    const/high16 v1, 0x40a0

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/b;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f00

    add-float/2addr v1, v3

    float-to-int v3, v1

    .line 121
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/b;->a:Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 126
    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0
.end method
