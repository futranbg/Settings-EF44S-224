.class Lcom/bigeyes0x0/trickstermod/main/a/r;
.super Ljava/lang/Object;
.source "UndoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/q;

.field private final synthetic b:F


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/q;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/r;->a:Lcom/bigeyes0x0/trickstermod/main/a/q;

    iput p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/r;->b:F

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/r;->a:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a(Lcom/bigeyes0x0/trickstermod/main/a/q;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/r;->a:Lcom/bigeyes0x0/trickstermod/main/a/q;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/main/a/q;->b(Lcom/bigeyes0x0/trickstermod/main/a/q;)Landroid/widget/Button;

    move-result-object v1

    .line 195
    const/16 v2, 0x51

    const/4 v3, 0x0

    .line 196
    iget v4, p0, Lcom/bigeyes0x0/trickstermod/main/a/r;->b:F

    const/high16 v5, 0x4170

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 197
    return-void
.end method
