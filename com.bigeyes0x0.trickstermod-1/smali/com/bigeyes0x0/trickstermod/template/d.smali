.class public Lcom/bigeyes0x0/trickstermod/template/d;
.super Lcom/bigeyes0x0/trickstermod/template/a;
.source "SettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected i:Landroid/app/AlertDialog;

.field public j:Landroid/widget/EditText;

.field private k:I

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    .line 65
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->b()V

    .line 66
    return-void
.end method

.method private b(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 152
    .line 153
    const v1, 0x7fffffff

    .line 155
    const/4 v2, 0x0

    move v3, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 166
    :goto_1
    return v3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    if-ge v0, v1, :cond_1

    move v1, v2

    .line 155
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    move v3, v4

    .line 164
    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private c()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter

    .prologue
    .line 378
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 382
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/d;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 383
    return-object v0
.end method

.method protected a()V
    .locals 5

    .prologue
    .line 129
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/d;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->h:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 135
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    const/4 v3, 0x2

    aget-object v3, v1, v3

    if-eqz v3, :cond_2

    .line 138
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_2
    array-length v1, v2

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 142
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-static {v3, v4}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v3

    .line 144
    aget-object v4, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/template/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    .line 404
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    :cond_1
    return-void

    .line 405
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/template/a;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/template/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/template/d;->addView(Landroid/view/View;)V

    .line 88
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 94
    :cond_1
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    :cond_1
    return-void

    .line 417
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    :cond_1
    return-void

    .line 393
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Properties;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->setValue(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    :cond_2
    return-void

    .line 277
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 278
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->a(Ljava/util/Properties;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 211
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/d;->setOrientation(I)V

    .line 212
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/template/d;->setPadding(IIII)V

    .line 214
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->e:Landroid/view/View;

    .line 215
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->f:Landroid/view/View;

    .line 217
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->j:Landroid/widget/EditText;

    .line 219
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 257
    if-ltz v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 260
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->removeView(Landroid/view/View;)V

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 268
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 114
    return-void

    .line 108
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 124
    return-void

    .line 118
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/a;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public getChildrenSetting()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedChild()Lcom/bigeyes0x0/trickstermod/template/a;
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    return v0
.end method

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->a(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->i:Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 233
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    const-string v1, "list_selected_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 237
    const-string v1, "dialog_list_select_elem_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->a(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->i:Landroid/app/AlertDialog;

    .line 240
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 246
    const-string v2, "list_selected_index"

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->i:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->i:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const-string v2, "dialog_list_select_elem_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    :cond_0
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 252
    return-object v2
.end method

.method public setChildrenSetting(Ljava/util/ArrayList;)V
    .locals 3
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 289
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 297
    :cond_1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    .line 299
    if-eqz p1, :cond_3

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedChild()Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_4

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 313
    :cond_4
    return-void

    .line 290
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 300
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 301
    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->addView(Landroid/view/View;)V

    .line 303
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedChild()Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 321
    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 322
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->j:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedChild()Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/template/a;->setVisibility(I)V

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getSelectedIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 335
    return-void

    .line 324
    :cond_2
    iput v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->k:I

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 339
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/d;->getValueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 341
    if-ne v1, v0, :cond_1

    .line 343
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/d;->b(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 348
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 350
    :cond_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setValueList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 359
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    .line 360
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 361
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 369
    :goto_1
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 374
    :cond_1
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/d;->setSelectedIndex(I)V

    .line 375
    return-void

    .line 361
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/d;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/d;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
