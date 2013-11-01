.class public final La/a/a/a/a/c;
.super Ljava/lang/Object;
.source "Crouton.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:La/a/a/a/a/h;

.field private c:La/a/a/a/a/a;

.field private final d:Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:La/a/a/a/a/e;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;La/a/a/a/a/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object v0, p0, La/a/a/a/a/c;->c:La/a/a/a/a/a;

    .line 529
    iput-object v0, p0, La/a/a/a/a/c;->k:La/a/a/a/a/e;

    .line 543
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 545
    const-string v1, "Null parameters are not accepted"

    .line 544
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    iput-object p1, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    .line 549
    iput-object v0, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    .line 550
    iput-object p2, p0, La/a/a/a/a/c;->a:Ljava/lang/CharSequence;

    .line 551
    iput-object p3, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    .line 552
    iput-object v0, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    .line 553
    return-void
.end method

.method public static a(Landroid/app/Activity;ILa/a/a/a/a/h;)La/a/a/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, La/a/a/a/a/c;->a(Landroid/app/Activity;Ljava/lang/CharSequence;La/a/a/a/a/h;)La/a/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;La/a/a/a/a/h;)La/a/a/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v0, La/a/a/a/a/c;

    invoke-direct {v0, p0, p1, p2}, La/a/a/a/a/c;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;La/a/a/a/a/h;)V

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout;
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 755
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 756
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 757
    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 756
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->x:I

    .line 764
    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v2, v2, La/a/a/a/a/h;->y:I

    if-lez v2, :cond_0

    .line 766
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 768
    :cond_0
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 771
    const/4 v0, 0x0

    .line 772
    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget-object v2, v2, La/a/a/a/a/h;->o:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v2, v2, La/a/a/a/a/h;->p:I

    if-eqz v2, :cond_2

    .line 773
    :cond_1
    invoke-direct {p0}, La/a/a/a/a/c;->q()Landroid/widget/ImageView;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    :cond_2
    invoke-direct {p0, p1}, La/a/a/a/a/c;->c(Landroid/content/res/Resources;)Landroid/widget/TextView;

    move-result-object v2

    .line 779
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 781
    if-eqz v0, :cond_3

    .line 782
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 784
    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    return-object v1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/f;->b()V

    .line 62
    return-void
.end method

.method private a(Landroid/content/res/Resources;Landroid/widget/TextView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->s:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 910
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->t:F

    .line 911
    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v2, v2, La/a/a/a/a/h;->v:F

    .line 912
    iget-object v3, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v3, v3, La/a/a/a/a/h;->u:F

    .line 913
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 915
    return-void
.end method

.method private b(Landroid/content/res/Resources;)Landroid/widget/FrameLayout;
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 799
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 801
    iget-object v0, p0, La/a/a/a/a/c;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, La/a/a/a/a/c;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_0
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->k:I

    if-lez v0, :cond_3

    .line 808
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->k:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 814
    :goto_0
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->m:I

    if-lez v1, :cond_4

    .line 815
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->m:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 820
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 821
    if-eqz v1, :cond_5

    :goto_2
    invoke-direct {v4, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 820
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->g:I

    if-eq v0, v2, :cond_6

    .line 825
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->g:I

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 833
    :goto_3
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->f:I

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->f:I

    .line 834
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 836
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 837
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget-boolean v0, v0, La/a/a/a/a/h;->h:Z

    if-eqz v0, :cond_1

    .line 838
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 839
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 838
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 841
    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    :cond_2
    return-object v3

    .line 810
    :cond_3
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->j:I

    goto :goto_0

    .line 817
    :cond_4
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->l:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 821
    goto :goto_2

    .line 828
    :cond_6
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v0, v0, La/a/a/a/a/h;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 827
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3
.end method

.method private c(Landroid/content/res/Resources;)Landroid/widget/TextView;
    .locals 3
    .parameter

    .prologue
    .line 877
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 878
    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 879
    iget-object v1, p0, La/a/a/a/a/c;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 881
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 884
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->i:I

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->i:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 891
    :cond_0
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->r:I

    if-eqz v1, :cond_1

    .line 892
    const/4 v1, 0x2

    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v2, v2, La/a/a/a/a/h;->r:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 896
    :cond_1
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->s:I

    if-eqz v1, :cond_2

    .line 897
    invoke-direct {p0, p1, v0}, La/a/a/a/a/c;->a(Landroid/content/res/Resources;Landroid/widget/TextView;)V

    .line 901
    :cond_2
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->w:I

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v2, v2, La/a/a/a/a/h;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 904
    :cond_3
    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 791
    invoke-direct {p0, v0}, La/a/a/a/a/c;->b(Landroid/content/res/Resources;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    .line 794
    invoke-direct {p0, v0}, La/a/a/a/a/c;->a(Landroid/content/res/Resources;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 795
    iget-object v1, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 796
    return-void
.end method

.method private q()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 848
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 849
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 850
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 851
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget-object v1, v1, La/a/a/a/a/h;->q:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 854
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget-object v1, v1, La/a/a/a/a/h;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget-object v1, v1, La/a/a/a/a/h;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    :cond_0
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->p:I

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    iget v1, v1, La/a/a/a/a/h;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 866
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 869
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 871
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    return-object v0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    .line 935
    invoke-virtual {p0}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v1

    .line 937
    iget-object v0, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 938
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 946
    :goto_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 948
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 941
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method b()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    .line 659
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/c;->k:La/a/a/a/a/e;

    .line 664
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    .line 669
    return-void
.end method

.method e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    return-object v0
.end method

.method f()La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, La/a/a/a/a/c;->c:La/a/a/a/a/a;

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, La/a/a/a/a/c;->j()La/a/a/a/a/h;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/a/h;->d:La/a/a/a/a/a;

    iput-object v0, p0, La/a/a/a/a/c;->c:La/a/a/a/a/a;

    .line 681
    :cond_0
    iget-object v0, p0, La/a/a/a/a/c;->c:La/a/a/a/a/a;

    return-object v0
.end method

.method public g()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, La/a/a/a/a/c;->i:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v0

    iget v0, v0, La/a/a/a/a/a;->c:I

    if-lez v0, :cond_1

    .line 687
    invoke-virtual {p0}, La/a/a/a/a/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 688
    invoke-virtual {p0}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v1

    iget v1, v1, La/a/a/a/a/a;->c:I

    .line 687
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/c;->i:Landroid/view/animation/Animation;

    .line 696
    :cond_0
    :goto_0
    iget-object v0, p0, La/a/a/a/a/c;->i:Landroid/view/animation/Animation;

    return-object v0

    .line 690
    :cond_1
    invoke-direct {p0}, La/a/a/a/a/c;->t()V

    .line 692
    invoke-virtual {p0}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/d;->a(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 691
    iput-object v0, p0, La/a/a/a/a/c;->i:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method h()La/a/a/a/a/e;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, La/a/a/a/a/c;->k:La/a/a/a/a/e;

    return-object v0
.end method

.method public i()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, La/a/a/a/a/c;->j:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v0

    iget v0, v0, La/a/a/a/a/a;->d:I

    if-lez v0, :cond_1

    .line 713
    invoke-virtual {p0}, La/a/a/a/a/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v1

    iget v1, v1, La/a/a/a/a/a;->d:I

    .line 713
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/c;->j:Landroid/view/animation/Animation;

    .line 721
    :cond_0
    :goto_0
    iget-object v0, p0, La/a/a/a/a/c;->j:Landroid/view/animation/Animation;

    return-object v0

    .line 717
    :cond_1
    invoke-virtual {p0}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/d;->b(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 716
    iput-object v0, p0, La/a/a/a/a/c;->j:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method j()La/a/a/a/a/h;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    return-object v0
.end method

.method k()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, La/a/a/a/a/c;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method l()Landroid/view/View;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    .line 746
    :goto_0
    return-object v0

    .line 742
    :cond_0
    iget-object v0, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 743
    invoke-direct {p0}, La/a/a/a/a/c;->p()V

    .line 746
    :cond_1
    iget-object v0, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method m()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 931
    invoke-direct {p0}, La/a/a/a/a/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, La/a/a/a/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 992
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->a(La/a/a/a/a/c;)V

    .line 993
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crouton{text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/c;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 998
    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->c:La/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 999
    iget-object v1, p0, La/a/a/a/a/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1000
    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1001
    const-string v1, ", croutonView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1002
    iget-object v1, p0, La/a/a/a/a/c;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1003
    const-string v1, ", lifecycleCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/c;->k:La/a/a/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
