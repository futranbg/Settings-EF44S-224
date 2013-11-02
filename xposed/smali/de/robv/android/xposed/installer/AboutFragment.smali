.class public Lde/robv/android/xposed/installer/AboutFragment;
.super Landroid/app/Fragment;
.source "AboutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 25
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 57
    invoke-static {p0, p3}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0a001a

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 31
    const v4, 0x7f030009

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 34
    .local v2, v:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 36
    .local v3, version:Ljava/lang/String;
    const v4, 0x7f0a001b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0           #packageName:Ljava/lang/String;
    .end local v3           #version:Ljava/lang/String;
    :goto_0
    const v4, 0x7f0a0018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    const v4, 0x7f0a001c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, translator:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const v4, 0x7f0a0019

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_1
    return-object v2

    .line 49
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 37
    .end local v1           #translator:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
