.class Lcom/bigeyes0x0/trickstermod/main/a/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/h;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->b:Landroid/view/View;

    iput p3, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->c:I

    .line 271
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->b:Landroid/view/View;

    iget v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/j;->c:I

    invoke-static {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Lcom/bigeyes0x0/trickstermod/main/a/h;Landroid/view/View;I)V

    .line 275
    return-void
.end method
