.class public Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;
.super Landroid/widget/LinearLayout;
.source "ExpandableStaticListView.java"


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mChildren:[[Landroid/view/View;

.field mExpandedGroups:[Z

.field mGroups:[Landroid/view/View;

.field private final mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

.field private final mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

.field private final mIndicatorMarginLeft:I

.field private final mIndicatorMarginTop:I

.field final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, v5}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->setOrientation(I)V

    .line 36
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const/high16 v1, 0x4140

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorMarginLeft:I

    .line 44
    const/high16 v1, 0x4170

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorMarginTop:I

    .line 46
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->_reloadViewsOnUiThread()V

    .line 47
    return-void
.end method


# virtual methods
.method _reloadViewsOnUiThread()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 59
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->removeAllViews()V

    .line 60
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v4, :cond_1

    .line 86
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 64
    .local v1, groupCount:I
    new-array v4, v1, [Z

    iput-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mExpandedGroups:[Z

    .line 65
    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mGroups:[Landroid/view/View;

    .line 66
    new-array v4, v1, [[Landroid/view/View;

    iput-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    .line 68
    const/4 v2, 0x0

    .local v2, groupPosition:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 70
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getDivider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->addView(Landroid/view/View;)V

    .line 74
    :cond_2
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v6, v5, p0}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, groupView:Landroid/view/View;
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mGroups:[Landroid/view/View;

    aput-object v3, v4, v2

    .line 76
    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 77
    move v0, v2

    .line 78
    .local v0, finalGroupPosition:I
    new-instance v4, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;

    invoke-direct {v4, p0, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;-><init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0, v3}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->addView(Landroid/view/View;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public collapseGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 167
    new-instance v0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;

    invoke-direct {v0, p0, p1}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;-><init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;I)V

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mGroups:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 126
    return-void

    .line 119
    :cond_0
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mExpandedGroups:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorExpanded:Landroid/graphics/drawable/Drawable;

    .line 120
    .local v1, indicator:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v4, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mGroups:[Landroid/view/View;

    aget-object v3, v4, v0

    .line 121
    .local v3, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 122
    .local v2, newBounds:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorMarginLeft:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorMarginTop:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 123
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v2           #newBounds:Landroid/graphics/Rect;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mIndicatorCollapsed:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public expandGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 148
    new-instance v0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;

    invoke-direct {v0, p0, p1}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;-><init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;I)V

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method getDivider()Landroid/view/View;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, divider:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    return-object v0
.end method

.method loadChildViews(I)V
    .locals 11
    .parameter "groupPosition"

    .prologue
    const/4 v10, 0x0

    .line 90
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 91
    .local v6, childCount:I
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mGroups:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 92
    .local v9, viewIndex:I
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    if-lez v6, :cond_0

    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Landroid/view/View;

    :goto_0
    aput-object v0, v1, p1

    .line 93
    const/4 v2, 0x0

    .local v2, childPosition:I
    :goto_1
    if-lt v2, v6, :cond_1

    .line 104
    return-void

    .line 92
    .end local v2           #childPosition:I
    :cond_0
    new-array v0, v10, [Landroid/view/View;

    goto :goto_0

    .line 94
    .restart local v2       #childPosition:I
    :cond_1
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->getDivider()Landroid/view/View;

    move-result-object v8

    .line 96
    .local v8, divider:Landroid/view/View;
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    aget-object v0, v0, p1

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    aput-object v8, v0, v1

    .line 97
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v8, v9}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->addView(Landroid/view/View;I)V

    .line 100
    .end local v8           #divider:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    add-int/lit8 v1, v6, -0x1

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    move v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 101
    .local v7, childView:Landroid/view/View;
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    aget-object v0, v0, p1

    mul-int/lit8 v1, v2, 0x2

    aput-object v7, v0, v1

    .line 102
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v7, v9}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->addView(Landroid/view/View;I)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v7           #childView:Landroid/view/View;
    :cond_3
    move v3, v10

    .line 100
    goto :goto_2
.end method

.method public reloadViews()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$1;

    invoke-direct {v0, p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$1;-><init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;)V

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 129
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 130
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->reloadViews()V

    .line 131
    return-void
.end method

.method public toggleGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 138
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mExpandedGroups:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->collapseGroup(I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->expandGroup(I)V

    goto :goto_0
.end method
