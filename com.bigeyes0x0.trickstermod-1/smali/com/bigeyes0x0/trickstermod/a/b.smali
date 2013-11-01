.class public Lcom/bigeyes0x0/trickstermod/a/b;
.super Landroid/app/AlertDialog$Builder;
.source "DialogEditTextBuilder.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/b;->b()V

    .line 18
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    const/high16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 28
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 29
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 30
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 31
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/a/b;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 41
    return-void
.end method

.method public final varargs a([Landroid/text/InputFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 36
    return-void
.end method

.method public setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    return-object p0
.end method
