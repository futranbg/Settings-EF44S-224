.class Lcom/bigeyes0x0/trickstermod/main/a/i;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/h;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/i;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/i;->a:Lcom/bigeyes0x0/trickstermod/main/a/h;

    if-eq p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/main/a/h;->a(Z)V

    .line 191
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
