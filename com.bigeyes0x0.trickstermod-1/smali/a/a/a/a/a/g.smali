.class La/a/a/a/a/g;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:La/a/a/a/a/f;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:La/a/a/a/a/c;


# direct methods
.method constructor <init>(La/a/a/a/a/f;Landroid/view/View;La/a/a/a/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, La/a/a/a/a/g;->a:La/a/a/a/a/f;

    iput-object p2, p0, La/a/a/a/a/g;->b:Landroid/view/View;

    iput-object p3, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 179
    iget-object v0, p0, La/a/a/a/a/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    iget-object v0, p0, La/a/a/a/a/g;->b:Landroid/view/View;

    iget-object v1, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v0, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    invoke-virtual {v0}, La/a/a/a/a/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 184
    iget-object v1, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/a/c;->k()Ljava/lang/CharSequence;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 185
    const/4 v0, -0x1

    iget-object v1, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    .line 186
    invoke-virtual {v1}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v1

    iget v1, v1, La/a/a/a/a/a;->b:I

    .line 185
    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, La/a/a/a/a/g;->a:La/a/a/a/a/f;

    .line 188
    iget-object v1, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    .line 189
    const v2, -0x3dff821f

    .line 190
    iget-object v3, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    invoke-virtual {v3}, La/a/a/a/a/c;->f()La/a/a/a/a/a;

    move-result-object v3

    iget v3, v3, La/a/a/a/a/a;->b:I

    int-to-long v3, v3

    .line 191
    iget-object v5, p0, La/a/a/a/a/g;->c:La/a/a/a/a/c;

    invoke-virtual {v5}, La/a/a/a/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    .line 190
    add-long/2addr v3, v5

    .line 187
    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/f;->a(La/a/a/a/a/f;La/a/a/a/a/c;IJ)V

    .line 194
    :cond_0
    return-void
.end method
