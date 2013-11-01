.class public Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;
.super Lcom/bigeyes0x0/trickstermod/tool/m;
.source "SysctlEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->a()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->d:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->setOrientation(I)V

    .line 41
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->setPadding(IIII)V

    .line 43
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->d:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/g;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/tool/g;-><init>(Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
