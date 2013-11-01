.class Lcom/bigeyes0x0/trickstermod/main/a/l;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/h;

.field private final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->b:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->c:Landroid/view/View;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/l;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void
.end method
