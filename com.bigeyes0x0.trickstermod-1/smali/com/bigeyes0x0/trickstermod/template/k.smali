.class public Lcom/bigeyes0x0/trickstermod/template/k;
.super Lcom/bigeyes0x0/trickstermod/template/a;
.source "SettingRange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Lcom/bigeyes0x0/trickstermod/a/a;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->b()V

    .line 62
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/k;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->h:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0, v1, v2, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->k:I

    .line 176
    iput p2, p0, Lcom/bigeyes0x0/trickstermod/template/k;->l:I

    .line 177
    iput p3, p0, Lcom/bigeyes0x0/trickstermod/template/k;->j:I

    .line 178
    return-void
.end method

.method protected b(I)Landroid/app/AlertDialog;
    .locals 7
    .parameter

    .prologue
    .line 181
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 182
    iget v4, p0, Lcom/bigeyes0x0/trickstermod/template/k;->k:I

    iget v5, p0, Lcom/bigeyes0x0/trickstermod/template/k;->l:I

    iget v6, p0, Lcom/bigeyes0x0/trickstermod/template/k;->j:I

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZIIII)V

    .line 181
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 183
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/k;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 188
    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/k;->setOrientation(I)V

    .line 99
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/template/k;->setPadding(IIII)V

    .line 101
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->e:Landroid/view/View;

    .line 102
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->f:Landroid/view/View;

    .line 104
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->n:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getValueInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueInt()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->i:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->b()I

    move-result v0

    .line 111
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->k:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->l:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getValueInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->b(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->o:Landroid/app/AlertDialog;

    .line 120
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 125
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 127
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const-string v1, "range_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/k;->setValue(I)V

    .line 129
    const-string v1, "dialog_range_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "dialog_range_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/k;->b(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->o:Landroid/app/AlertDialog;

    .line 132
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string v2, "range_value"

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getValueInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/k;->o:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/k;->o:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "dialog_range_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v2, "dialog_range_value"

    .line 144
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/k;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 148
    return-object v2
.end method

.method public setValue(I)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/template/k;->i:I

    .line 160
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/k;->n:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/k;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->a_(Lcom/bigeyes0x0/trickstermod/template/a;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/k;->setValue(I)V

    goto :goto_0
.end method
