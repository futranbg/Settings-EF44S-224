.class Leu/chainfire/supersu/SettingsFragment$6$1;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment$6;

.field private final synthetic b:[Leu/chainfire/supersu/SettingsFragment$IconItem;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$6;Landroid/content/Context;II[Leu/chainfire/supersu/SettingsFragment$IconItem;[Leu/chainfire/supersu/SettingsFragment$IconItem;II)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    iput-object p6, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->b:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    iput p7, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->c:I

    iput p8, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->d:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$6;->a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->b:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    aget-object v3, v3, p1

    iget v3, v3, Leu/chainfire/supersu/SettingsFragment$IconItem;->b:I

    const/16 v4, 0x140

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v4}, Leu/chainfire/supersu/SettingsFragment$6;->a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v4

    invoke-virtual {v4}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->c:I

    iget v6, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->c:I

    const/4 v7, 0x1

    invoke-static {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object v2

    :cond_0
    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$6;->a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->b:[Leu/chainfire/supersu/SettingsFragment$IconItem;

    aget-object v3, v3, p1

    iget v3, v3, Leu/chainfire/supersu/SettingsFragment$IconItem;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
