.class public Lcom/bigeyes0x0/trickstermod/main/a/q;
.super Ljava/lang/Object;
.source "UndoManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bigeyes0x0/trickstermod/main/a/s;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/ArrayDeque;

.field private g:Ljava/util/ArrayDeque;

.field private h:I

.field private i:Lcom/bigeyes0x0/trickstermod/main/a/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigeyes0x0/trickstermod/main/a/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    .line 67
    const/16 v0, 0x1388

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->h:I

    .line 71
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->i:Lcom/bigeyes0x0/trickstermod/main/a/t;

    .line 73
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->e()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/a/q;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/main/a/q;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 97
    if-le v0, v4, :cond_0

    .line 98
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 99
    const v3, 0x7f0800ac

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    const v2, 0x7f0800ab

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->b:Lcom/bigeyes0x0/trickstermod/main/a/s;

    .line 108
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->b:Lcom/bigeyes0x0/trickstermod/main/a/s;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->b:Lcom/bigeyes0x0/trickstermod/main/a/s;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/main/a/s;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bigeyes0x0/trickstermod/main/a/s;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 109
    iget v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->h:I

    int-to-long v2, v2

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/main/a/s;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/a/s;

    invoke-direct {v0, p0}, Lcom/bigeyes0x0/trickstermod/main/a/s;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/q;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->b:Lcom/bigeyes0x0/trickstermod/main/a/s;

    .line 121
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    const v1, 0x7f030028

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    const v0, 0x7f060054

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->d:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f060053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->e:Landroid/widget/TextView;

    .line 128
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 130
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->c()V

    .line 182
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 188
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 189
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    const/high16 v3, 0x43c8

    mul-float/2addr v3, v1

    int-to-float v0, v0

    const v4, 0x3f666666

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 190
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    const/high16 v2, 0x4260

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 191
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->d:Landroid/widget/Button;

    new-instance v2, Lcom/bigeyes0x0/trickstermod/main/a/r;

    invoke-direct {v2, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/r;-><init>(Lcom/bigeyes0x0/trickstermod/main/a/q;F)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    .line 114
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    .line 115
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 116
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    .line 154
    const-string v0, "delete_op_tracker"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    .line 155
    const-string v0, "deleted_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    .line 156
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    .line 158
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->f()V

    .line 163
    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->b:Lcom/bigeyes0x0/trickstermod/main/a/s;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/s;->a()I

    .line 92
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->f()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    const-string v0, "delete_op_tracker"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 167
    const-string v0, "deleted_items"

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 169
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->i:Lcom/bigeyes0x0/trickstermod/main/a/t;

    invoke-interface {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/a/t;->a(Ljava/util/ArrayList;)V

    .line 144
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a()V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->f()V

    .line 148
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->d()V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/q;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->d()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
