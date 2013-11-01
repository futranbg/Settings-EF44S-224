.class Lcom/bigeyes0x0/trickstermod/main/a/n;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field final synthetic c:Lcom/bigeyes0x0/trickstermod/main/a/h;


# direct methods
.method public constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/h;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/n;->c:Lcom/bigeyes0x0/trickstermod/main/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/n;->a:I

    .line 116
    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/main/a/n;->b:Landroid/view/View;

    .line 117
    return-void
.end method


# virtual methods
.method public a(Lcom/bigeyes0x0/trickstermod/main/a/n;)I
    .locals 2
    .parameter

    .prologue
    .line 122
    iget v0, p1, Lcom/bigeyes0x0/trickstermod/main/a/n;->a:I

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/n;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/bigeyes0x0/trickstermod/main/a/n;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/a/n;->a(Lcom/bigeyes0x0/trickstermod/main/a/n;)I

    move-result v0

    return v0
.end method
