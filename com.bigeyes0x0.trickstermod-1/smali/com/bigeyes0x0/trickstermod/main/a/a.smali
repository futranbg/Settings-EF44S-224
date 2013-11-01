.class public Lcom/bigeyes0x0/trickstermod/main/a/a;
.super Ljava/lang/Object;
.source "NavDrawerHomeCaretToggle.java"

# interfaces
.implements Landroid/support/v4/widget/b;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/view/View;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lcom/bigeyes0x0/trickstermod/main/a/c;

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->a:Landroid/app/Activity;

    .line 255
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 256
    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->c:Landroid/view/View;

    .line 257
    iput p4, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->d:I

    .line 258
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->e:Landroid/graphics/drawable/Drawable;

    .line 259
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/c;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    .line 260
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;->b(F)V

    .line 261
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->g:Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    .line 261
    invoke-direct {p0, v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/main/a/a;->a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->g:Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    if-nez p1, :cond_2

    .line 319
    new-instance v1, Lcom/bigeyes0x0/trickstermod/main/a/b;

    invoke-direct {v1, p2}, Lcom/bigeyes0x0/trickstermod/main/a/b;-><init>(Landroid/app/Activity;)V

    :goto_0
    move-object v0, v1

    .line 321
    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/a/b;

    .line 322
    iget-object v2, v0, Lcom/bigeyes0x0/trickstermod/main/a/b;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 325
    iget-object v3, v0, Lcom/bigeyes0x0/trickstermod/main/a/b;->a:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, v0, Lcom/bigeyes0x0/trickstermod/main/a/b;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v2, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 330
    :cond_0
    iget-object v2, v0, Lcom/bigeyes0x0/trickstermod/main/a/b;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 331
    iget-object v0, v0, Lcom/bigeyes0x0/trickstermod/main/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 333
    :cond_1
    const-string v0, "Couldn\'t set home-as-up indicator"

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a(F)V

    .line 299
    return-void
.end method

.method protected a(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f00

    .line 306
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a()F

    move-result v0

    .line 307
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .line 309
    const/4 v1, 0x0

    sub-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a(F)V

    .line 314
    return-void

    .line 311
    :cond_0
    mul-float v1, p1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->d:I

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->e:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/a;->c()V

    .line 270
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->c:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/a;->b()V

    .line 284
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->c:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 289
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/main/a/a;->a(F)V

    .line 291
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a(F)V

    .line 303
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->c:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/a;->a()V

    .line 277
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a(F)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->g:Ljava/lang/Object;

    .line 346
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    .line 345
    invoke-direct {p0, v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/main/a/a;->a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->g:Ljava/lang/Object;

    .line 347
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/a;->f:Lcom/bigeyes0x0/trickstermod/main/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/c;->a(F)V

    goto :goto_0
.end method
