.class public Lde/robv/android/xposed/installer/DownloadDetailsFragment;
.super Landroid/app/Fragment;
.source "DownloadDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;,
        Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;
    }
.end annotation


# static fields
.field public static final ARGUMENT_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private module:Lde/robv/android/xposed/installer/repo/Module;

.field private moduleGroup:Lde/robv/android/xposed/installer/repo/ModuleGroup;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)Lde/robv/android/xposed/installer/repo/Module;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    return-object v0
.end method

.method static synthetic access$1(Lde/robv/android/xposed/installer/DownloadDetailsFragment;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->parseSimpleHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lde/robv/android/xposed/installer/DownloadDetailsFragment;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 43
    new-instance v1, Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    invoke-direct {v1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;-><init>()V

    .line 45
    .local v1, fragment:Lde/robv/android/xposed/installer/DownloadDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method

.method private parseSimpleHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 6
    .parameter "source"

    .prologue
    .line 100
    const-string v4, "<li>"

    const-string v5, "\t\u2022 "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    const-string v4, "</li>"

    const-string v5, "<br>"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 105
    .local v1, html:Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 106
    .local v3, len:I
    move v0, v3

    .line 107
    .local v0, end:I
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 113
    :cond_0
    if-ne v0, v3, :cond_2

    .line 116
    .end local v1           #html:Landroid/text/Spanned;
    :goto_1
    return-object v1

    .line 108
    .restart local v1       #html:Landroid/text/Spanned;
    :cond_1
    invoke-interface {v1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 110
    move v0, v2

    .line 107
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 116
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    .end local v0           #activity:Landroid/app/Activity;
    const/4 v1, 0x2

    const-string v2, "downloads_overview"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/installer/XposedInstallerActivity;->setNavItem(ILjava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 121
    invoke-static {p0, p3}, Lde/robv/android/xposed/installer/util/AnimatorUtil;->createSlideAnimation(Landroid/app/Fragment;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 62
    const v7, 0x7f030001

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, args:Landroid/os/Bundle;
    const-string v7, "package"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->packageName:Ljava/lang/String;

    .line 66
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v7

    iget-object v8, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lde/robv/android/xposed/installer/util/RepoLoader;->getModuleGroup(Ljava/lang/String;)Lde/robv/android/xposed/installer/repo/ModuleGroup;

    move-result-object v7

    iput-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->moduleGroup:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    .line 67
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->moduleGroup:Lde/robv/android/xposed/installer/repo/ModuleGroup;

    invoke-virtual {v7}, Lde/robv/android/xposed/installer/repo/ModuleGroup;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v7

    iput-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    .line 69
    const v7, 0x7f0a0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, title:Landroid/widget/TextView;
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v7, 0x7f0a0002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, author:Landroid/widget/TextView;
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->author:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->author:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 74
    const v7, 0x7f080028

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v9, v9, Lde/robv/android/xposed/installer/repo/Module;->author:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, description:Landroid/widget/TextView;
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->description:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 80
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-boolean v7, v7, Lde/robv/android/xposed/installer/repo/Module;->descriptionIsHtml:Z

    if-eqz v7, :cond_2

    .line 81
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->description:Ljava/lang/String;

    invoke-direct {p0, v7}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->parseSimpleHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    :goto_1
    const v7, 0x7f0a0004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    .line 91
    .local v4, lv:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;
    new-instance v0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;

    invoke-direct {v0, p0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;-><init>(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)V

    .line 92
    .local v0, adapter:Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;
    invoke-virtual {v4, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 93
    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {v4, v10}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->expandGroup(I)V

    .line 96
    :cond_0
    return-object v6

    .line 76
    .end local v0           #adapter:Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;
    .end local v3           #description:Landroid/widget/TextView;
    .end local v4           #lv:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;
    :cond_1
    const v7, 0x7f080029

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 84
    .restart local v3       #description:Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;

    iget-object v7, v7, Lde/robv/android/xposed/installer/repo/Module;->description:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
