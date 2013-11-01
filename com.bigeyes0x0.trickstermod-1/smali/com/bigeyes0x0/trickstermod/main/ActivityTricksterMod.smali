.class public Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;
.super Lcom/bigeyes0x0/trickstermod/main/a;
.source "ActivityTricksterMod.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/cc;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private A:Lcom/bigeyes0x0/trickstermod/main/a/d;

.field private B:Lcom/bigeyes0x0/trickstermod/main/a/a;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Lcom/bigeyes0x0/trickstermod/j;

.field private r:Lcom/bigeyes0x0/trickstermod/h;

.field private s:Landroid/app/AlertDialog;

.field private t:Lcom/bigeyes0x0/trickstermod/main/f;

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/View;

.field private w:Landroid/support/v4/view/ViewPager;

.field private x:Landroid/support/v4/widget/DrawerLayout;

.field private y:Landroid/widget/ListView;

.field private z:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a;-><init>()V

    .line 182
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/d;

    invoke-direct {v0, p0}, Lcom/bigeyes0x0/trickstermod/main/d;-><init>(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->p:Landroid/content/BroadcastReceiver;

    .line 197
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->q:Lcom/bigeyes0x0/trickstermod/j;

    .line 198
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->r:Lcom/bigeyes0x0/trickstermod/h;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->g()V

    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;)Lcom/bigeyes0x0/trickstermod/h;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->r:Lcom/bigeyes0x0/trickstermod/h;

    return-object v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->o:Z

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 489
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 505
    const/4 v0, 0x0

    invoke-static {v0}, Lme/timos/br/a;->a(Ljava/lang/Throwable;)V

    .line 506
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->finish()V

    goto :goto_0

    .line 491
    :sswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(I)V

    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 494
    :sswitch_1
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->i()V

    goto :goto_0

    .line 497
    :sswitch_2
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->invalidateOptionsMenu()V

    .line 498
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->h()V

    goto :goto_0

    .line 501
    :sswitch_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 502
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->finish()V

    goto :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_2
        0x7f080043 -> :sswitch_3
    .end sparse-switch
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 513
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 514
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 515
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->z:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/koushikdutta/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/a/b/c;

    move-result-object v0

    .line 215
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/a/b/h;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/a/b/c;

    invoke-interface {v0, v3}, Lcom/koushikdutta/a/b/c;->b(Landroid/os/Handler;)Lcom/koushikdutta/a/b/h;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/a/b/c;

    .line 216
    invoke-interface {v0}, Lcom/koushikdutta/a/b/c;->a()Lcom/koushikdutta/a/d/a;

    move-result-object v0

    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/e;

    invoke-direct {v1, v3}, Lcom/bigeyes0x0/trickstermod/main/e;-><init>(Lcom/bigeyes0x0/trickstermod/main/e;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/a/d/a;->a(Lcom/koushikdutta/async/b/g;)Lcom/koushikdutta/async/b/f;

    .line 217
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, La/a/a/a/a/i;

    invoke-direct {v0}, La/a/a/a/a/i;-><init>()V

    .line 223
    const v1, 0x1060015

    invoke-virtual {v0, v1}, La/a/a/a/a/i;->a(I)La/a/a/a/a/i;

    .line 224
    new-instance v1, La/a/a/a/a/b;

    invoke-direct {v1}, La/a/a/a/a/b;-><init>()V

    .line 225
    const/16 v2, 0x258

    invoke-virtual {v1, v2}, La/a/a/a/a/b;->a(I)La/a/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/b;->a()La/a/a/a/a/a;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, La/a/a/a/a/i;->a(La/a/a/a/a/a;)La/a/a/a/a/i;

    .line 226
    const v1, 0x7f080049

    invoke-virtual {v0}, La/a/a/a/a/i;->a()La/a/a/a/a/h;

    move-result-object v0

    invoke-static {p0, v1, v0}, La/a/a/a/a/c;->a(Landroid/app/Activity;ILa/a/a/a/a/h;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c;->o()V

    .line 228
    :cond_0
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 232
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 235
    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 236
    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 238
    new-array v0, v6, [I

    const v1, 0x7f010003

    aput v1, v0, v3

    .line 239
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 240
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    .line 241
    const v2, 0x7f06000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 242
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 243
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v3

    .line 244
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getChildCount()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cc;)V

    .line 253
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/f;

    .line 254
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->e()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/f;-><init>(Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;Landroid/support/v4/app/n;)V

    .line 253
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    .line 255
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    .line 256
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/main/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/f;->b()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 264
    const v2, 0x7f030004

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    .line 265
    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/main/f;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    if-ltz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->f()V

    .line 271
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->d(I)V

    .line 272
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->g()V

    .line 274
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 247
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 244
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->t:Lcom/bigeyes0x0/trickstermod/main/f;

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/main/f;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 259
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 277
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 278
    const v2, 0x101007a

    .line 277
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    const/16 v2, 0x11

    .line 279
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method private j()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 518
    const/high16 v0, 0x40a0

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 519
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030002

    .line 521
    const/4 v4, 0x0

    .line 520
    invoke-virtual {v0, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 522
    const v0, 0x7f06000c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    const/high16 v5, 0x7f08

    invoke-virtual {p0, v5}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v5}, Lcom/bigeyes0x0/trickstermod/TrApp;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00a9 Team Trickster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v4

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->q:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v5}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/bigeyes0x0/trickstermod/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 525
    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 529
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 532
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 429
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 424
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/a;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->B:Lcom/bigeyes0x0/trickstermod/main/a/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/a;->a(Landroid/content/res/Configuration;)V

    .line 305
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 310
    const/4 p1, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->q:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onCreate(Landroid/os/Bundle;)V

    .line 316
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->u:Landroid/view/ViewGroup;

    .line 317
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 318
    const v1, 0x7f030001

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->u:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 317
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    .line 321
    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 320
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    .line 322
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    .line 323
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    .line 324
    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 323
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    .line 325
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/a;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    .line 326
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    const v3, 0x7f020004

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/view/View;I)V

    .line 325
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->B:Lcom/bigeyes0x0/trickstermod/main/a/a;

    .line 327
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->B:Lcom/bigeyes0x0/trickstermod/main/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/b;)V

    .line 329
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->v:Landroid/view/View;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    .line 330
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/d;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-direct {v0, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/d;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->A:Lcom/bigeyes0x0/trickstermod/main/a/d;

    .line 331
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->c(I)V

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    invoke-static {p0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->p:Landroid/content/BroadcastReceiver;

    .line 336
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 338
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 348
    invoke-static {p0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->p:Landroid/content/BroadcastReceiver;

    .line 348
    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    .line 350
    invoke-static {}, La/a/a/a/a/c;->a()V

    .line 351
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/a;->onDestroy()V

    .line 352
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p3}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->d(I)V

    .line 358
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 415
    :goto_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 364
    :sswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->x:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_0

    .line 380
    :sswitch_2
    new-instance v0, Lcom/bigeyes0x0/trickstermod/i;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/i;-><init>()V

    .line 381
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 382
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->f()[Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v2

    .line 380
    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 385
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {v0}, Lme/timos/br/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 388
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->j:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->c:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 404
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->d:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 408
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->e:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 409
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    :sswitch_a
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->j()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->s:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060000 -> :sswitch_2
        0x7f060055 -> :sswitch_1
        0x7f060056 -> :sswitch_3
        0x7f060057 -> :sswitch_4
        0x7f060059 -> :sswitch_5
        0x7f06005a -> :sswitch_7
        0x7f06005b -> :sswitch_6
        0x7f06005c -> :sswitch_8
        0x7f06005d -> :sswitch_9
        0x7f06005e -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceInitializer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->stopService(Landroid/content/Intent;)Z

    .line 435
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->q:Lcom/bigeyes0x0/trickstermod/j;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->w:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/j;->c(I)V

    .line 436
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->q()V

    .line 437
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->r:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/h;->a()V

    .line 439
    :cond_0
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/a;->onPause()V

    .line 440
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onPostCreate(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->B:Lcom/bigeyes0x0/trickstermod/main/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/a;->c()V

    .line 447
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->l()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 452
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 451
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 458
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 459
    const-string v1, "package_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 458
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V

    .line 460
    const-string v0, "dialog_about_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->j()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->s:Landroid/app/AlertDialog;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->A:Lcom/bigeyes0x0/trickstermod/main/a/d;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->a(Landroid/os/Bundle;)V

    .line 464
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    const-string v0, "package_state"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->n:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    const-string v1, "dialog_about_state"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->s:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->s:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 469
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityTricksterMod;->A:Lcom/bigeyes0x0/trickstermod/main/a/d;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/d;->b(Landroid/os/Bundle;)V

    .line 472
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    return-void
.end method
