.class public Lcom/bigeyes0x0/trickstermod/main/a/h;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/widget/ListView;

.field private f:Lcom/bigeyes0x0/trickstermod/main/a/m;

.field private g:I

.field private h:Ljava/util/List;

.field private i:I

.field private j:F

.field private k:Z

.field private l:Landroid/view/VelocityTracker;

.field private m:I

.field private n:Landroid/view/View;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/bigeyes0x0/trickstermod/main/a/m;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->h:Ljava/util/List;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->i:I

    .line 160
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->a:I

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->b:I

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->c:I

    .line 164
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 164
    iput-wide v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->d:J

    .line 166
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    .line 167
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->f:Lcom/bigeyes0x0/trickstermod/main/a/m;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/h;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->i:I

    return v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 335
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v4, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 336
    iget-wide v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->d:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 338
    new-instance v3, Lcom/bigeyes0x0/trickstermod/main/a/k;

    invoke-direct {v3, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/k;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/h;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/l;

    invoke-direct {v1, p0, v0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/l;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->h:Ljava/util/List;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/n;

    .line 377
    invoke-direct {v1, p0, p2, p1}, Lcom/bigeyes0x0/trickstermod/main/a/n;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/h;ILandroid/view/View;)V

    .line 376
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/h;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->i:I

    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/bigeyes0x0/trickstermod/main/a/h;)Lcom/bigeyes0x0/trickstermod/main/a/m;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->f:Lcom/bigeyes0x0/trickstermod/main/a/m;

    return-object v0
.end method

.method static synthetic d(Lcom/bigeyes0x0/trickstermod/main/a/h;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/i;

    invoke-direct {v0, p0}, Lcom/bigeyes0x0/trickstermod/main/a/i;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/h;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 389
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->o:Z

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 198
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_1
    :goto_0
    return v2

    .line 203
    :pswitch_0
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->o:Z

    if-nez v0, :cond_1

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 213
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aget v6, v0, v2

    sub-int/2addr v5, v6

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    aget v0, v0, v1

    sub-int v1, v6, v0

    move v0, v2

    .line 217
    :goto_1
    if-lt v0, v4, :cond_2

    .line 226
    :goto_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->j:F

    .line 228
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->m:I

    .line 229
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->f:Lcom/bigeyes0x0/trickstermod/main/a/m;

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->m:I

    invoke-interface {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    .line 231
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v6, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 219
    invoke-virtual {v6, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    iput-object v6, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    goto :goto_2

    .line 217
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_4
    iput-object v9, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->j:F

    sub-float/2addr v0, v3

    .line 245
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 246
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 247
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 248
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 249
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 252
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 254
    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    move v0, v1

    .line 262
    :goto_3
    if-eqz v1, :cond_c

    .line 264
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    .line 266
    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->m:I

    .line 267
    iget v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->i:I

    .line 268
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 269
    if-eqz v0, :cond_b

    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->d:J

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 271
    new-instance v4, Lcom/bigeyes0x0/trickstermod/main/a/j;

    invoke-direct {v4, p0, v1, v3}, Lcom/bigeyes0x0/trickstermod/main/a/j;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 282
    :goto_5
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 283
    iput-object v9, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    .line 284
    iput v8, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->j:F

    .line 285
    iput-object v9, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->m:I

    .line 287
    iput-boolean v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->k:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 254
    goto :goto_3

    .line 255
    :cond_6
    iget v6, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->b:I

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_e

    .line 256
    iget v6, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->c:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_e

    .line 257
    cmpg-float v4, v5, v4

    if-gez v4, :cond_e

    .line 259
    cmpg-float v3, v3, v8

    if-gez v3, :cond_7

    move v3, v1

    :goto_6
    cmpg-float v0, v0, v8

    if-gez v0, :cond_8

    move v0, v1

    :goto_7
    if-ne v3, v0, :cond_9

    move v0, v1

    .line 260
    :goto_8
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_a

    :goto_9
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_7
    move v3, v2

    .line 259
    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v1, v2

    .line 260
    goto :goto_9

    .line 269
    :cond_b
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    neg-int v0, v0

    goto :goto_4

    .line 279
    :cond_c
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 280
    iget-wide v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->d:J

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->o:Z

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->j:F

    sub-float/2addr v0, v3

    .line 298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->a:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 299
    iput-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->k:Z

    .line 300
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 303
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    .line 305
    or-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 307
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->e:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 308
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_d
    iget-boolean v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->k:Z

    if-eqz v3, :cond_1

    .line 312
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 313
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->n:Landroid/view/View;

    .line 314
    const/high16 v3, 0x4000

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/h;->g:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v10, v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 313
    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    move v2, v1

    .line 315
    goto/16 :goto_0

    :cond_e
    move v0, v2

    move v1, v2

    goto/16 :goto_3

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
