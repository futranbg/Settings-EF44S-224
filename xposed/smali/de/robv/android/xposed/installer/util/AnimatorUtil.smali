.class public final Lde/robv/android/xposed/installer/util/AnimatorUtil;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSlideAnimation(Landroid/app/Fragment;I)Landroid/animation/Animator;
    .locals 2
    .parameter "fragment"
    .parameter "anim"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    invoke-static {p0, v1, v1}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;ZZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_1
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;ZZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_2
    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;ZZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    invoke-static {p0, v0, v0}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;ZZ)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x7f040000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static createSlideAnimation(Landroid/app/Fragment;ZZ)Landroid/animation/Animator;
    .locals 8
    .parameter "fragment"
    .parameter "left"
    .parameter "in"

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 27
    .local v2, parentWidth:I
    if-eqz p1, :cond_0

    .line 28
    neg-int v2, v2

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 32
    move v1, v2

    .line 33
    .local v1, from:I
    const/4 v3, 0x0

    .line 39
    .local v3, to:I
    :goto_0
    const-string v4, "x"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    int-to-float v7, v1

    aput v7, v5, v6

    const/4 v6, 0x1

    int-to-float v7, v3

    aput v7, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 40
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    return-object v0

    .line 35
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #from:I
    .end local v3           #to:I
    :cond_1
    const/4 v1, 0x0

    .line 36
    .restart local v1       #from:I
    move v3, v2

    .restart local v3       #to:I
    goto :goto_0
.end method
