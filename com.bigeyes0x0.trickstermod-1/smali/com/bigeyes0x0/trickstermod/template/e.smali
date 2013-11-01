.class public Lcom/bigeyes0x0/trickstermod/template/e;
.super Lcom/bigeyes0x0/trickstermod/template/k;
.source "SettingNum.java"


# instance fields
.field protected i:Ljava/util/LinkedList;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/template/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/template/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/template/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->i:Ljava/util/LinkedList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->k:I

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->l:I

    .line 40
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/template/e;->b:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->h:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/template/e;->setTextEditable(Z)V

    .line 57
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/e;->setStep(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseSetting: Error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/e;->getValueInt()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/template/e;->setValue(I)V

    .line 44
    return-void
.end method

.method protected b(I)Landroid/app/AlertDialog;
    .locals 6
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/e;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    iget-boolean v2, p0, Lcom/bigeyes0x0/trickstermod/template/e;->n:Z

    const/4 v3, 0x0

    iget v5, p0, Lcom/bigeyes0x0/trickstermod/template/e;->j:I

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZZII)V

    .line 89
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 91
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/template/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->m:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 96
    return-object v0
.end method

.method public setOnValueChangedListener(Lcom/bigeyes0x0/trickstermod/template/f;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/e;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/template/e;->j:I

    .line 81
    return-void
.end method

.method public setTextEditable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/template/e;->n:Z

    .line 85
    return-void
.end method
