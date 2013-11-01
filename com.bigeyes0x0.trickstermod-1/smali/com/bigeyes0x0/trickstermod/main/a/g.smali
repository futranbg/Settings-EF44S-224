.class Lcom/bigeyes0x0/trickstermod/main/a/g;
.super Landroid/widget/ArrayAdapter;
.source "SettingsHelper.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/d;

.field private final synthetic b:[Lcom/bigeyes0x0/trickstermod/c;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/content/Context;II[Lcom/bigeyes0x0/trickstermod/c;[Lcom/bigeyes0x0/trickstermod/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/g;->a:Lcom/bigeyes0x0/trickstermod/main/a/d;

    iput-object p6, p0, Lcom/bigeyes0x0/trickstermod/main/a/g;->b:[Lcom/bigeyes0x0/trickstermod/c;

    .line 331
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 338
    if-nez p2, :cond_0

    .line 339
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 340
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 341
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/g;->b:[Lcom/bigeyes0x0/trickstermod/c;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/g;->b:[Lcom/bigeyes0x0/trickstermod/c;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    const/high16 v1, 0x40a0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/g;->a:Lcom/bigeyes0x0/trickstermod/main/a/d;

    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/main/a/d;->b(Lcom/bigeyes0x0/trickstermod/main/a/d;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 350
    mul-float/2addr v1, v2

    .line 351
    const/high16 v2, 0x3f00

    .line 350
    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 354
    return-object p2

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method
