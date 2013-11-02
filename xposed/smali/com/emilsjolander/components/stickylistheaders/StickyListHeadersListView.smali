.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

.field private mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

.field private mAreHeadersSticky:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Ljava/lang/Boolean;

.field private mCurrentHeaderId:Ljava/lang/Long;

.field private mDataSetChangedObserver:Landroid/database/DataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDrawingListUnderStickyHeader:Z

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private mHeaderBeingPressed:Z

.field private mHeaderBottomPosition:I

.field private mHeaderDownY:F

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 40
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    .line 41
    iput-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 43
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 44
    iput-boolean v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 49
    iput-boolean v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 53
    new-instance v2, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v2, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    .line 65
    new-instance v2, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;

    invoke-direct {v2, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    .line 77
    new-instance v2, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;

    invoke-direct {v2, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 112
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    invoke-super {p0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-super {p0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 117
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 118
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 123
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    .line 124
    const-string v3, "mSelectorRect"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    .local v1, selectorRectField:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 128
    const-class v2, Landroid/widget/AbsListView;

    .line 129
    const-string v3, "mSelectorPosition"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 130
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    .end local v1           #selectorRectField:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    return-void
.end method

.method static synthetic access$2(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    return-void
.end method

.method private drawStickyHeader(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 353
    .local v0, headerHeight:I
    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    sub-int v1, v2, v0

    .line 355
    .local v1, top:I
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 356
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 357
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v1, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 358
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    :goto_0
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 362
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 365
    return-void

    .line 358
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fixedFirstVisibleItem(I)I
    .locals 4
    .parameter "firstVisibleItem"

    .prologue
    .line 530
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    move v0, p1

    .line 550
    .end local p1
    .local v0, firstVisibleItem:I
    :goto_0
    return v0

    .line 534
    .end local v0           #firstVisibleItem:I
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 543
    :goto_2
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_1

    .line 544
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_1

    .line 545
    if-lez p1, :cond_1

    .line 546
    add-int/lit8 p1, p1, -0x1

    :cond_1
    move v0, p1

    .line 550
    .end local p1
    .restart local v0       #firstVisibleItem:I
    goto :goto_0

    .line 535
    .end local v0           #firstVisibleItem:I
    .restart local p1
    :cond_2
    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_3

    .line 536
    add-int/2addr p1, v1

    .line 537
    goto :goto_2

    .line 534
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectorPosition()I
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 334
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 348
    .end local v1           #i:I
    :goto_1
    const/4 v2, -0x1

    :goto_2
    return v2

    .line 335
    .restart local v1       #i:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_2

    .line 334
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1           #i:I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private hasStickyHeaderAtPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 193
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_0

    .line 194
    if-lez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 197
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    .line 196
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollBarOverlay()Z
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getScrollBarStyle()I

    move-result v0

    .line 400
    .local v0, scrollBarStyle:I
    if-eqz v0, :cond_0

    .line 401
    const/high16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 400
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    const/4 v4, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    .line 370
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v5

    .line 369
    sub-int/2addr v3, v5

    .line 370
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v5

    .line 369
    sub-int v5, v3, v5

    .line 371
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->isScrollBarOverlay()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 369
    :goto_0
    sub-int v3, v5, v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 373
    .local v2, widthMeasureSpec:I
    const/4 v0, 0x0

    .line 375
    .local v0, heightMeasureSpec:I
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 376
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 377
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 378
    const/4 v6, -0x1

    .line 379
    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 377
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    :cond_0
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    .line 383
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 389
    :goto_1
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 390
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_1

    .line 391
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 395
    iget-object v7, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 394
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 396
    return-void

    .line 371
    .end local v0           #heightMeasureSpec:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #widthMeasureSpec:I
    :cond_2
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getVerticalScrollbarWidth()I

    move-result v3

    goto :goto_0

    .line 386
    .restart local v0       #heightMeasureSpec:I
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #widthMeasureSpec:I
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private positionSelectorRect()V
    .locals 7

    .prologue
    .line 318
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getSelectorPosition()I

    move-result v1

    .line 320
    .local v1, selectorPosition:I
    if-ltz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v0

    .line 322
    .local v0, firstVisibleItem:I
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 323
    .local v2, v:Landroid/view/View;
    instance-of v4, v2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 324
    check-cast v3, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 325
    .local v3, wrapper:Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v5

    iget v6, v3, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItemTop:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 329
    .end local v0           #firstVisibleItem:I
    .end local v1           #selectorPosition:I
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wrapper:Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 151
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 152
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 154
    return-void
.end method

.method private scrollChanged(I)V
    .locals 17
    .parameter "reportedFirstVisibleItem"

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v14, :cond_1

    const/4 v1, 0x0

    .line 417
    .local v1, adapterCount:I
    :goto_0
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-nez v14, :cond_2

    .line 490
    :cond_0
    :goto_1
    return-void

    .line 416
    .end local v1           #adapterCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v14}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v1

    goto :goto_0

    .line 421
    .restart local v1       #adapterCount:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v9

    .line 422
    .local v9, listViewHeaderCount:I
    invoke-direct/range {p0 .. p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v14

    sub-int v6, v14, v9

    .line 425
    .local v6, firstVisibleItem:I
    if-ltz v6, :cond_3

    add-int/lit8 v14, v1, -0x1

    if-le v6, v14, :cond_4

    .line 426
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    goto :goto_1

    .line 432
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v6, :cond_6

    .line 433
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v14, v6}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->measureHeader()V

    .line 439
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v3

    .line 440
    .local v3, childCount:I
    if-eqz v3, :cond_8

    .line 441
    const/4 v11, 0x0

    .line 442
    .local v11, viewToWatch:Landroid/view/View;
    const v13, 0x7fffffff

    .line 443
    .local v13, watchingChildDistance:I
    const/4 v12, 0x0

    .line 445
    .local v12, viewToWatchIsFooter:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-lt v8, v3, :cond_9

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v7

    .line 467
    .local v7, headerHeight:I
    if-eqz v11, :cond_14

    .line 468
    if-nez v12, :cond_7

    move-object v14, v11

    check-cast v14, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 469
    invoke-virtual {v14}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 470
    :cond_7
    if-ne v6, v9, :cond_11

    .line 471
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    if-lez v14, :cond_11

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_11

    .line 473
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 488
    .end local v7           #headerHeight:I
    .end local v8           #i:I
    .end local v11           #viewToWatch:Landroid/view/View;
    .end local v12           #viewToWatchIsFooter:Z
    .end local v13           #watchingChildDistance:I
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    goto/16 :goto_1

    .line 446
    .restart local v8       #i:I
    .restart local v11       #viewToWatch:Landroid/view/View;
    .restart local v12       #viewToWatchIsFooter:Z
    .restart local v13       #watchingChildDistance:I
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 447
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-eqz v14, :cond_b

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 447
    const/4 v5, 0x1

    .line 450
    .local v5, childIsFooter:Z
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v15

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v14

    .line 450
    :goto_5
    sub-int v4, v15, v14

    .line 452
    .local v4, childDistance:I
    if-gez v4, :cond_d

    .line 445
    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 447
    .end local v4           #childDistance:I
    .end local v5           #childIsFooter:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 451
    .restart local v5       #childIsFooter:Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 456
    .restart local v4       #childDistance:I
    :cond_d
    if-eqz v11, :cond_10

    .line 457
    if-nez v12, :cond_e

    move-object v14, v11

    check-cast v14, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 458
    invoke-virtual {v14}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 459
    :cond_e
    if-nez v5, :cond_f

    move-object v14, v2

    check-cast v14, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    invoke-virtual {v14}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_f
    if-ge v4, v13, :cond_a

    .line 460
    :cond_10
    move-object v11, v2

    .line 461
    move v12, v5

    .line 462
    move v13, v4

    goto :goto_6

    .line 475
    .end local v2           #child:Landroid/view/View;
    .end local v4           #childDistance:I
    .end local v5           #childIsFooter:Z
    .restart local v7       #headerHeight:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v10

    .line 477
    .local v10, paddingTop:I
    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 478
    add-int v15, v7, v10

    .line 477
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 479
    move-object/from16 v0, p0

    iget v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    if-ge v14, v10, :cond_13

    .line 480
    add-int v14, v7, v10

    .line 479
    :goto_8
    move-object/from16 v0, p0

    iput v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto/16 :goto_3

    .line 476
    .end local v10           #paddingTop:I
    :cond_12
    const/4 v10, 0x0

    goto :goto_7

    .line 481
    .restart local v10       #paddingTop:I
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_8

    .line 485
    .end local v10           #paddingTop:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v14

    :goto_9
    add-int/2addr v14, v7

    .line 484
    move-object/from16 v0, p0

    iput v14, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto/16 :goto_3

    .line 485
    :cond_15
    const/4 v14, 0x0

    goto :goto_9
.end method

.method private updateHeaderVisibilities()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 511
    iget-object v7, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v4

    .line 512
    .local v4, top:I
    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    .line 513
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_1

    .line 527
    return-void

    .end local v1           #childCount:I
    .end local v3           #i:I
    .end local v4           #top:I
    :cond_0
    move v4, v6

    .line 511
    goto :goto_0

    .line 514
    .restart local v1       #childCount:I
    .restart local v3       #i:I
    .restart local v4       #top:I
    :cond_1
    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v7, :cond_2

    move-object v5, v0

    .line 516
    check-cast v5, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 517
    .local v5, wrapperViewChild:Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    invoke-virtual {v5}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 518
    iget-object v2, v5, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 519
    .local v2, childHeader:Landroid/view/View;
    invoke-virtual {v5}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_3

    .line 520
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .end local v2           #childHeader:Landroid/view/View;
    .end local v5           #wrapperViewChild:Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 522
    .restart local v2       #childHeader:Landroid/view/View;
    .restart local v5       #wrapperViewChild:Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private wrapAdapter(Landroid/widget/ListAdapter;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
    .locals 2
    .parameter "adapter"

    .prologue
    .line 265
    instance-of v1, p1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 266
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 267
    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    .line 266
    .end local p1
    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 272
    .local v0, wrapper:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDividerHeight(I)V

    .line 274
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 275
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 276
    return-object v0

    .line 269
    .end local v0           #wrapper:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
    .restart local p1
    :cond_0
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    .line 269
    .end local p1
    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .restart local v0       #wrapper:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->positionSelectorRect()V

    .line 296
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_2

    .line 297
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 315
    :goto_0
    return-void

    .line 301
    :cond_2
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    .line 303
    const/4 v1, 0x0

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 308
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 310
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_4

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 314
    :cond_4
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->drawStickyHeader(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public getWrappedAdapter()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getWrappedView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .end local v0           #view:Landroid/view/View;
    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 287
    :cond_0
    return-object v0
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 145
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/high16 v3, -0x4080

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 571
    .local v7, action:I
    if-nez v7, :cond_1

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 574
    iput-boolean v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 575
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 576
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 577
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 604
    :cond_0
    :goto_0
    return v6

    .line 580
    :cond_1
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    if-eqz v0, :cond_4

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 582
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 583
    if-eq v7, v6, :cond_2

    .line 584
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 585
    :cond_2
    iput v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 586
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 587
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 588
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 589
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 590
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 592
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    .line 591
    invoke-interface/range {v0 .. v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    goto :goto_0

    .line 597
    :cond_3
    iput v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 598
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 599
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 600
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 601
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 604
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 158
    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .end local p1
    iget-object p1, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 161
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    :goto_0
    return-void

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 250
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 251
    invoke-super {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 254
    :cond_1
    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 256
    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->wrapAdapter(Landroid/widget/ListAdapter;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 259
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 260
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .parameter "areHeadersSticky"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eq v0, p1, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 234
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 236
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 411
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 412
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 205
    .local v0, dividerDrawableHeight:I
    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDividerHeight(I)V

    .line 209
    .end local v0           #dividerDrawableHeight:I
    :cond_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 214
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 218
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 219
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->setDividerHeight(I)V

    .line 221
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 222
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 224
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0
    .parameter "drawingListUnderStickyHeader"

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 561
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 0
    .parameter "onHeaderClickListener"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    .line 556
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 229
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "y"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 170
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 179
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 189
    return-void
.end method
