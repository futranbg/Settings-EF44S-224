.class public abstract Lcom/bigeyes0x0/trickstermod/template/a;
.super Landroid/widget/LinearLayout;
.source "Setting.java"


# static fields
.field static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field static b:Lcom/bigeyes0x0/trickstermod/h;

.field static c:Lcom/bigeyes0x0/trickstermod/j;


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Ljava/util/LinkedList;

.field protected h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/template/a;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 37
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/template/a;->b:Lcom/bigeyes0x0/trickstermod/h;

    .line 38
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/template/a;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->g:Ljava/util/LinkedList;

    .line 116
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 41
    .line 43
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/a;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v1, p1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    sget-object v2, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    aget-object v1, v1, v3

    .line 51
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/n;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/n;-><init>(Landroid/content/Context;)V

    .line 71
    :goto_1
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->setKey(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/a;->b:Lcom/bigeyes0x0/trickstermod/h;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->setName(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/a;->b:Lcom/bigeyes0x0/trickstermod/h;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/bigeyes0x0/trickstermod/h;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->setTip(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/template/a;->a()V

    move-object v0, v1

    .line 82
    goto :goto_0

    .line 53
    :cond_2
    const-string v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/d;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/d;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 55
    :cond_3
    const-string v2, "range"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/k;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/k;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 57
    :cond_4
    const-string v2, "num"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/e;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 59
    :cond_5
    const-string v2, "group"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/c;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/c;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 61
    :cond_6
    const-string v2, "screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 63
    :cond_7
    const-string v2, "numgroup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 64
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/g;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/g;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 65
    :cond_8
    const-string v2, "profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/i;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 67
    :cond_9
    const-string v2, "pic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/h;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/h;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/template/b;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->setValue(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method protected a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    return-void

    .line 172
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/b;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/bigeyes0x0/trickstermod/template/b;->a(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 130
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 137
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/template/a;->k:Z

    .line 192
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/a;->d:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->setId(I)V

    .line 204
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/a;->d:Ljava/lang/String;

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/a;->i:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->e:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->e:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/a;->j:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->f:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->f:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/a;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
