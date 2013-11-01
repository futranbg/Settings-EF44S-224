.class public Lcom/bigeyes0x0/trickstermod/template/n;
.super Lcom/bigeyes0x0/trickstermod/template/a;
.source "SettingSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private i:Lcom/bigeyes0x0/trickstermod/template/a;

.field private j:Z

.field private k:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->b()V

    .line 56
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/n;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->h:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 87
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->setChildSetting(Lcom/bigeyes0x0/trickstermod/template/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    .line 225
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    .line 228
    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/HashMap;)V

    .line 236
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/List;)V

    .line 220
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->setValue(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/Properties;)V

    .line 159
    :cond_1
    return-void
.end method

.method protected b()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/n;->setOrientation(I)V

    .line 109
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/template/n;->setPadding(IIII)V

    .line 111
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->k:Landroid/widget/Switch;

    .line 112
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->e:Landroid/view/View;

    .line 113
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->f:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->k:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->j:Z

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 65
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 73
    return-void
.end method

.method public getChildSetting()Lcom/bigeyes0x0/trickstermod/template/a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->j:Z

    if-eq v0, p2, :cond_0

    .line 126
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/template/n;->setChecked(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 133
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 135
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    const-string v1, "switch_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->setValue(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v2, "switch_value"

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 147
    return-object v2
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/template/n;->j:Z

    .line 165
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->k:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->j:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/n;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 175
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChildSetting(Lcom/bigeyes0x0/trickstermod/template/a;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->removeView(Landroid/view/View;)V

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    .line 184
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/n;->addView(Landroid/view/View;)V

    .line 186
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->j:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->i:Lcom/bigeyes0x0/trickstermod/template/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    goto :goto_0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/n;->k:Landroid/widget/Switch;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/o;

    invoke-direct {v1, p0, p1}, Lcom/bigeyes0x0/trickstermod/template/o;-><init>(Lcom/bigeyes0x0/trickstermod/template/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-static {p1}, Lcom/bigeyes0x0/trickstermod/k;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/n;->setChecked(Z)V

    .line 212
    return-void
.end method
