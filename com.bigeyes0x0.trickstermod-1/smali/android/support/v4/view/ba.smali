.class Landroid/support/v4/view/ba;
.super Landroid/support/v4/view/az;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/support/v4/view/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/bh;->a(Landroid/view/View;IIII)V

    .line 361
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-static {p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    invoke-static {p1}, Landroid/support/v4/view/bh;->a(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-static {p1, p2}, Landroid/support/v4/view/bh;->a(Landroid/view/View;I)V

    .line 377
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-static {p1}, Landroid/support/v4/view/bh;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-static {p1}, Landroid/support/v4/view/bh;->c(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
