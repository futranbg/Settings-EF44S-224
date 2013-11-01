.class public Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;
.super Lcom/bigeyes0x0/trickstermod/tool/j;
.source "HostnameSetter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final d:Lcom/bigeyes0x0/trickstermod/tool/d;


# instance fields
.field private e:Landroid/widget/EditText;

.field private f:Landroid/app/AlertDialog;

.field private g:Lcom/bigeyes0x0/trickstermod/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/d;-><init>(Lcom/bigeyes0x0/trickstermod/tool/d;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->d:Lcom/bigeyes0x0/trickstermod/tool/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->a()V

    .line 64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 160
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    .line 161
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/a/b;->a(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    sget-object v3, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->d:Lcom/bigeyes0x0/trickstermod/tool/d;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/b;->a([Landroid/text/InputFilter;)V

    .line 164
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/b;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/b;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/b;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 168
    return-object v0
.end method

.method public varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getprop net.hostname"

    aput-object v2, v0, v1

    invoke-static {v3, v3, v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "hostname"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v1
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    const v1, 0x7f030014

    .line 76
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 81
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->setOrientation(I)V

    .line 84
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->setPadding(IIII)V

    .line 85
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    const-string v1, "hostname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public varargs b([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 133
    aget-object v0, p1, v5

    const-string v1, "hostname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v0, "result"

    const v2, 0x7f08008e

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    :goto_0
    return-object v1

    .line 138
    :cond_0
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2, v0}, Lcom/bigeyes0x0/trickstermod/j;->c(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setprop net.hostname "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v6, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "result"

    const v3, 0x7f08008f

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v2, "hostname"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    const-string v0, "result"

    const v2, 0x7f080090

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v1, "hostname"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->c([Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->f:Landroid/app/AlertDialog;

    .line 95
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 100
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 102
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    const-string v2, "hostname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v1, "dialog_set_host_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "dialog_set_host_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->a(Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->f:Landroid/app/AlertDialog;

    .line 109
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->f:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->f:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "dialog_set_host_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const-string v2, "dialog_set_host_value"

    .line 118
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->g:Lcom/bigeyes0x0/trickstermod/a/b;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    const-string v2, "hostname"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 121
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 123
    return-object v2
.end method

.method public setPostExecute(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 152
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    const v1, 0x7f08008f

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->e:Landroid/widget/EditText;

    const-string v2, "hostname"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 157
    return-void
.end method
