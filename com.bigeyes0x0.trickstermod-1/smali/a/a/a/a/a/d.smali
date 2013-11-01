.class final La/a/a/a/a/d;
.super Ljava/lang/Object;
.source "DefaultAnimationsBuilder.java"


# static fields
.field private static a:Landroid/view/animation/Animation;

.field private static b:Landroid/view/animation/Animation;

.field private static c:I

.field private static d:I


# direct methods
.method static a(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {p0}, La/a/a/a/a/d;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, La/a/a/a/a/d;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 56
    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, La/a/a/a/a/d;->a:Landroid/view/animation/Animation;

    .line 59
    sget-object v0, La/a/a/a/a/d;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, La/a/a/a/a/d;->a(I)V

    .line 62
    :cond_1
    sget-object v0, La/a/a/a/a/d;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 84
    sput p0, La/a/a/a/a/d;->c:I

    .line 85
    return-void
.end method

.method private static a(ILandroid/view/View;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-static {p0}, La/a/a/a/a/d;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, La/a/a/a/a/d;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 74
    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, La/a/a/a/a/d;->b:Landroid/view/animation/Animation;

    .line 77
    sget-object v0, La/a/a/a/a/d;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, La/a/a/a/a/d;->b(I)V

    .line 80
    :cond_1
    sget-object v0, La/a/a/a/a/d;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static b(I)V
    .locals 0
    .parameter

    .prologue
    .line 88
    sput p0, La/a/a/a/a/d;->d:I

    .line 89
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    sget v0, La/a/a/a/a/d;->c:I

    .line 37
    invoke-static {v0, p0}, La/a/a/a/a/d;->a(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    sget v0, La/a/a/a/a/d;->d:I

    .line 43
    invoke-static {v0, p0}, La/a/a/a/a/d;->a(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method
