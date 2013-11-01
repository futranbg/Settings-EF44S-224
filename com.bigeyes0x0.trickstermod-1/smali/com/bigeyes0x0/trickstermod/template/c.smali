.class public Lcom/bigeyes0x0/trickstermod/template/c;
.super Lcom/bigeyes0x0/trickstermod/template/a;
.source "SettingGroup.java"


# instance fields
.field protected i:Ljava/util/ArrayList;

.field private j:Landroid/view/ViewStub;

.field private k:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->b()V

    .line 52
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 96
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/c;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->h:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 106
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getAllChildren()Ljava/util/HashMap;

    move-result-object v1

    .line 116
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/i;

    .line 117
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :cond_2
    :try_start_1
    aget-object v0, v2, v1

    .line 107
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->a(Lcom/bigeyes0x0/trickstermod/template/a;)V

    .line 109
    instance-of v5, v0, Lcom/bigeyes0x0/trickstermod/template/i;

    if-eqz v5, :cond_3

    .line 110
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 209
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 210
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/template/a;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/c;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 216
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 217
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 202
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 203
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Properties;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 175
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 176
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->k:Landroid/widget/RelativeLayout;

    .line 155
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->e:Landroid/view/View;

    .line 156
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->f:Landroid/view/View;

    .line 157
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->j:Landroid/view/ViewStub;

    .line 159
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/c;->setOrientation(I)V

    .line 160
    const/16 v0, 0xa

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/bigeyes0x0/trickstermod/template/c;->setPadding(IIII)V

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->setShowDividers(I)V

    .line 162
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    const v1, 0x1080014

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 81
    return-void

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 91
    return-void

    .line 85
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method protected getAllChildren()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-object v1

    .line 126
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 127
    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSettings()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->setName(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/c;->j:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 186
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method
