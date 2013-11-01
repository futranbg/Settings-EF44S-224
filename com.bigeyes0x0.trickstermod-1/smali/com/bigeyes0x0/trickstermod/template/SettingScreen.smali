.class public Lcom/bigeyes0x0/trickstermod/template/SettingScreen;
.super Lcom/bigeyes0x0/trickstermod/template/a;
.source "SettingScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b()V

    .line 171
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->h:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 182
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->j:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->i:Landroid/widget/Button;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    return-void
.end method

.method protected b()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->i:Landroid/widget/Button;

    .line 209
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->f:Landroid/view/View;

    .line 211
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->setOrientation(I)V

    .line 212
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->setPadding(IIII)V

    .line 213
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public getKeyView()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getKeyView()Ljava/lang/String;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->k:Landroid/app/AlertDialog;

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/l;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Lcom/bigeyes0x0/trickstermod/template/l;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/template/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 229
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    const-string v1, "dialog_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->k:Landroid/app/AlertDialog;

    .line 235
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 239
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/template/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 240
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string v3, "dialog_status"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->k:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 241
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    new-instance v0, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 244
    return-object v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    return-void
.end method
