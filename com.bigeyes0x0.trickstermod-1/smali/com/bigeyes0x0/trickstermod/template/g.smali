.class public Lcom/bigeyes0x0/trickstermod/template/g;
.super Lcom/bigeyes0x0/trickstermod/template/c;
.source "SettingNumGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/bigeyes0x0/trickstermod/template/f;


# instance fields
.field private j:I

.field private k:Z

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/app/AlertDialog;

.field private n:Lcom/bigeyes0x0/trickstermod/a/a;

.field private o:Lcom/bigeyes0x0/trickstermod/template/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->l:Landroid/widget/ImageButton;

    .line 59
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 99
    return-void

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 95
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/e;->a(I)V

    goto :goto_0
.end method

.method private b(I)Landroid/app/AlertDialog;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 246
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 247
    iget-boolean v2, p0, Lcom/bigeyes0x0/trickstermod/template/g;->k:Z

    iget v5, p0, Lcom/bigeyes0x0/trickstermod/template/g;->j:I

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZZII)V

    .line 246
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 248
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    const v2, 0x7f08004c

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 253
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 254
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    .line 77
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/i;->setKey(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->setName(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/template/i;->setProfileKeysNumGroup([Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/i;->e()V

    .line 82
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 121
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/g;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->h:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->setTextEditable(Z)V

    .line 128
    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->setStep(I)V

    .line 129
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 131
    const/4 v0, 0x4

    aget-object v0, v2, v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v1, v3

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 137
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_PROFILE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/bigeyes0x0/trickstermod/template/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    :goto_2
    array-length v2, v3

    if-lt v0, v2, :cond_2

    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getAllChildren()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/i;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 135
    :cond_1
    :try_start_1
    array-length v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 139
    :cond_2
    aget-object v2, v3, v0

    aget-object v4, v1, v0

    invoke-virtual {p0, v2, v4}, Lcom/bigeyes0x0/trickstermod/template/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/template/a;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/c;->a(Lcom/bigeyes0x0/trickstermod/template/a;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    check-cast p1, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-virtual {p1, p0}, Lcom/bigeyes0x0/trickstermod/template/e;->setOnValueChangedListener(Lcom/bigeyes0x0/trickstermod/template/f;)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/e;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/e;->setKey(Ljava/lang/String;)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/g;->b:Lcom/bigeyes0x0/trickstermod/h;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 69
    :cond_0
    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/template/e;->setName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getStep()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/e;->setStep(I)V

    .line 71
    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->k:Z

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/e;->setTextEditable(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->a(Lcom/bigeyes0x0/trickstermod/template/a;)V

    .line 73
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->setValue(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/i;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/c;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 108
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->o:Lcom/bigeyes0x0/trickstermod/template/i;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/i;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/c;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 116
    return-void
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->j:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 158
    sget-object v3, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/template/a;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/g;->b(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->m:Landroid/app/AlertDialog;

    .line 173
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 178
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/c;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    const-string v1, "dialog_numgroup_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "dialog_numgroup_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->f(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/g;->b(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->m:Landroid/app/AlertDialog;

    .line 184
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 190
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/c;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/g;->m:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/g;->m:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "dialog_numgroup_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v2, "dialog_numgroup_value"

    .line 195
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/g;->n:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 199
    return-object v2
.end method

.method public setStep(I)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->j:I

    .line 216
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->i:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/e;->setStep(I)V

    goto :goto_0
.end method

.method public setTextEditable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->k:Z

    if-eq v0, p1, :cond_1

    .line 223
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/template/g;->k:Z

    .line 224
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/e;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/template/e;->setTextEditable(Z)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/g;->c()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 241
    invoke-virtual {p0, p0, p1}, Lcom/bigeyes0x0/trickstermod/template/g;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/a;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/template/a;->setValue(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
