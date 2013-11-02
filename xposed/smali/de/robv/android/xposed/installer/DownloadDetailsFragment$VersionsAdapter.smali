.class Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DownloadDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/DownloadDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionsAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 129
    invoke-virtual {p1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 130
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 203
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->access$0(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-object v0, v0, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 218
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 156
    move-object v4, p4

    .line 157
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 158
    iget-object v5, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030005

    invoke-virtual {v5, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;

    .line 163
    .local v1, item:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/widget/DownloadView;

    .line 164
    .local v0, downloadView:Lde/robv/android/xposed/installer/widget/DownloadView;
    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, txtChangesTitle:Landroid/widget/TextView;
    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    .local v2, txtChanges:Landroid/widget/TextView;
    iget-object v5, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->downloadLink:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lde/robv/android/xposed/installer/widget/DownloadView;->setUrl(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;
    invoke-static {v5}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->access$0(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v5

    iget-object v5, v5, Lde/robv/android/xposed/installer/repo/Module;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lde/robv/android/xposed/installer/widget/DownloadView;->setTitle(Ljava/lang/String;)V

    .line 169
    new-instance v5, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;

    invoke-direct {v5, v1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment$DownloadModuleCallback;-><init>(Lde/robv/android/xposed/installer/repo/ModuleVersion;)V

    invoke-virtual {v0, v5}, Lde/robv/android/xposed/installer/widget/DownloadView;->setDownloadFinishedCallback(Lde/robv/android/xposed/installer/util/DownloadsUtil$DownloadFinishedCallback;)V

    .line 171
    iget-object v5, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelog:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelog:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-boolean v5, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelogIsHtml:Z

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    iget-object v6, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelog:Ljava/lang/String;

    #calls: Lde/robv/android/xposed/installer/DownloadDetailsFragment;->parseSimpleHtml(Ljava/lang/String;)Landroid/text/Spanned;
    invoke-static {v5, v6}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->access$1(Lde/robv/android/xposed/installer/DownloadDetailsFragment;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 188
    :goto_0
    return-object v4

    .line 179
    :cond_1
    iget-object v5, v1, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelog:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 198
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->access$0(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-object v0, v0, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadDetailsFragment;->module:Lde/robv/android/xposed/installer/repo/Module;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->access$0(Lde/robv/android/xposed/installer/DownloadDetailsFragment;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    iget-object v0, v0, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 134
    move-object v3, p3

    .line 135
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 136
    iget-object v4, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030006

    invoke-virtual {v4, v5, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;

    .line 141
    .local v0, item:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    .local v2, txtVersion:Landroid/widget/TextView;
    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, txtBranch:Landroid/widget/TextView;
    iget-object v4, v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->branch:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->branch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    iget-object v4, p0, Lde/robv/android/xposed/installer/DownloadDetailsFragment$VersionsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadDetailsFragment;

    invoke-virtual {v4}, Lde/robv/android/xposed/installer/DownloadDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080027

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->branch:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    return-object v3

    .line 149
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method
