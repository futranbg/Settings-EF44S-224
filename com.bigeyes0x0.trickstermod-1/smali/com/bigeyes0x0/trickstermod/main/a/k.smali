.class Lcom/bigeyes0x0/trickstermod/main/a/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/h;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/h;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    iput p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->b:I

    .line 338
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Lcom/bigeyes0x0/trickstermod/main/a/h;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Lcom/bigeyes0x0/trickstermod/main/a/h;I)V

    .line 342
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Lcom/bigeyes0x0/trickstermod/main/a/h;)I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 347
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 348
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->c(Lcom/bigeyes0x0/trickstermod/main/a/h;)Lcom/bigeyes0x0/trickstermod/main/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/a/h;->d(Lcom/bigeyes0x0/trickstermod/main/a/h;)Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/main/a/m;->a(Landroid/widget/ListView;[I)V

    .line 354
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    :cond_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->b(Lcom/bigeyes0x0/trickstermod/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/a/n;

    iget v0, v0, Lcom/bigeyes0x0/trickstermod/main/a/n;->a:I

    aput v0, v2, v1

    .line 348
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/a/n;

    .line 356
    iget-object v2, v0, Lcom/bigeyes0x0/trickstermod/main/a/n;->b:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 357
    iget-object v2, v0, Lcom/bigeyes0x0/trickstermod/main/a/n;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 358
    iget-object v2, v0, Lcom/bigeyes0x0/trickstermod/main/a/n;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 359
    iget v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/k;->b:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    iget-object v0, v0, Lcom/bigeyes0x0/trickstermod/main/a/n;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
