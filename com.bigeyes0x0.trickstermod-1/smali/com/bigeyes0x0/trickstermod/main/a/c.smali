.class Lcom/bigeyes0x0/trickstermod/main/a/c;
.super Landroid/graphics/drawable/Drawable;
.source "NavDrawerHomeCaretToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:F

.field private c:F

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->d:Landroid/graphics/Rect;

    .line 79
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->b:F

    return v0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->b:F

    .line 218
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/c;->invalidateSelf()V

    .line 219
    return-void
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->c:F

    .line 223
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/c;->invalidateSelf()V

    .line 224
    return-void
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 85
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->c:F

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->b:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/c;->invalidateSelf()V

    .line 160
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 176
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {p0, p2, p3, p4}, Lcom/bigeyes0x0/trickstermod/main/a/c;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 184
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 194
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 204
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 199
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 209
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 214
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/c;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/main/a/c;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    return-void
.end method
