.class final La/a/a/a/a/f;
.super Landroid/os/Handler;
.source "Manager.java"


# static fields
.field private static a:La/a/a/a/a/f;


# instance fields
.field private b:Ljava/util/Queue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    .line 121
    return-void
.end method

.method static declared-synchronized a()La/a/a/a/a/f;
    .locals 2

    .prologue
    .line 110
    const-class v1, La/a/a/a/a/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/a/a/a/a/f;->a:La/a/a/a/a/f;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, La/a/a/a/a/f;

    invoke-direct {v0}, La/a/a/a/a/f;-><init>()V

    sput-object v0, La/a/a/a/a/f;->a:La/a/a/a/a/f;

    .line 114
    :cond_0
    sget-object v0, La/a/a/a/a/f;->a:La/a/a/a/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(La/a/a/a/a/c;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p0, p2}, La/a/a/a/a/f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 419
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    invoke-virtual {p0, v0}, La/a/a/a/a/f;->sendMessage(Landroid/os/Message;)Z

    .line 421
    return-void
.end method

.method private a(La/a/a/a/a/c;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0, p2}, La/a/a/a/a/f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 436
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    invoke-virtual {p0, v0, p3, p4}, La/a/a/a/a/f;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    return-void
.end method

.method static synthetic a(La/a/a/a/a/f;La/a/a/a/a/c;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/a/a/f;->a(La/a/a/a/a/c;IJ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 75
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 86
    const/16 v1, 0x8

    .line 95
    :goto_1
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-class v2, La/a/a/a/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 88
    :cond_2
    const/16 v1, 0x4000

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c;

    .line 259
    invoke-virtual {v0}, La/a/a/a/a/c;->e()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 260
    iget-object v1, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 263
    :cond_2
    invoke-virtual {v0}, La/a/a/a/a/c;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 265
    const v1, -0x3dff8b23

    invoke-direct {p0, v0, v1}, La/a/a/a/a/f;->a(La/a/a/a/a/c;I)V

    .line 266
    invoke-virtual {v0}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/e;->a()V

    goto :goto_0

    .line 270
    :cond_3
    const v1, 0xc2007

    .line 271
    invoke-direct {p0, v0}, La/a/a/a/a/f;->d(La/a/a/a/a/c;)J

    move-result-wide v2

    .line 270
    invoke-direct {p0, v0, v1, v2, v3}, La/a/a/a/a/f;->a(La/a/a/a/a/c;IJ)V

    goto :goto_0
.end method

.method private c(La/a/a/a/a/c;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    invoke-virtual {p1}, La/a/a/a/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    if-nez v0, :cond_2

    .line 151
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 152
    const/4 v2, -0x1

    .line 153
    const/4 v3, -0x2

    .line 151
    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 156
    :cond_2
    invoke-virtual {p1}, La/a/a/a/a/c;->m()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {p1}, La/a/a/a/a/c;->m()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 160
    invoke-virtual {p1}, La/a/a/a/a/c;->m()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 176
    new-instance v2, La/a/a/a/a/g;

    invoke-direct {v2, p0, v1, p1}, La/a/a/a/a/g;-><init>(La/a/a/a/a/f;Landroid/view/View;La/a/a/a/a/c;)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, La/a/a/a/a/c;->m()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {p1}, La/a/a/a/a/c;->e()Landroid/app/Activity;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private d(La/a/a/a/a/c;)J
    .locals 4
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v0

    iget v0, v0, La/a/a/a/a/a;->b:I

    int-to-long v0, v0

    .line 200
    invoke-virtual {p1}, La/a/a/a/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 201
    invoke-virtual {p1}, La/a/a/a/a/c;->i()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 202
    return-wide v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 311
    const v0, -0x3dff8b23

    invoke-virtual {p0, v0}, La/a/a/a/a/f;->removeMessages(I)V

    .line 312
    const v0, 0xc2007

    invoke-virtual {p0, v0}, La/a/a/a/a/f;->removeMessages(I)V

    .line 313
    const v0, -0x3dff821f

    invoke-virtual {p0, v0}, La/a/a/a/a/f;->removeMessages(I)V

    .line 314
    return-void
.end method


# virtual methods
.method a(La/a/a/a/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-direct {p0}, La/a/a/a/a/f;->c()V

    .line 132
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 207
    invoke-direct {p0}, La/a/a/a/a/f;->d()V

    .line 209
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 221
    :cond_1
    return-void

    .line 213
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c;

    .line 214
    invoke-virtual {v0}, La/a/a/a/a/c;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {v0}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected b(La/a/a/a/a/c;)V
    .locals 3
    .parameter

    .prologue
    .line 332
    invoke-virtual {p1}, La/a/a/a/a/c;->l()Landroid/view/View;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 335
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p1}, La/a/a/a/a/c;->i()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    iget-object v1, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/c;

    .line 342
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1}, La/a/a/a/a/c;->b()V

    .line 345
    invoke-virtual {v1}, La/a/a/a/a/c;->d()V

    .line 346
    invoke-virtual {v1}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v1}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/e;->b()V

    .line 349
    :cond_0
    invoke-virtual {v1}, La/a/a/a/a/c;->c()V

    .line 355
    :cond_1
    const v0, 0xc2007

    .line 356
    invoke-virtual {p1}, La/a/a/a/a/c;->i()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 355
    invoke-direct {p0, p1, v0, v1, v2}, La/a/a/a/a/f;->a(La/a/a/a/a/c;IJ)V

    .line 358
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, La/a/a/a/a/c;

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 286
    :sswitch_0
    invoke-direct {p0}, La/a/a/a/a/f;->c()V

    goto :goto_0

    .line 291
    :sswitch_1
    invoke-direct {p0, v0}, La/a/a/a/a/f;->c(La/a/a/a/a/c;)V

    goto :goto_0

    .line 296
    :sswitch_2
    invoke-virtual {p0, v0}, La/a/a/a/a/f;->b(La/a/a/a/a/c;)V

    .line 297
    invoke-virtual {v0}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, La/a/a/a/a/c;->h()La/a/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/e;->b()V

    goto :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        -0x3dff8b23 -> :sswitch_1
        -0x3dff821f -> :sswitch_2
        0xc2007 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manager{croutonQueue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/f;->b:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
