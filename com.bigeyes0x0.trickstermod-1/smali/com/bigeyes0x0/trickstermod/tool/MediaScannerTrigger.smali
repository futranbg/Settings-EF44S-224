.class public Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;
.super Lcom/bigeyes0x0/trickstermod/tool/m;
.source "MediaScannerTrigger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->a()V

    .line 30
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    const v1, 0x7f030016

    .line 34
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->d:Landroid/widget/ImageButton;

    .line 38
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->setOrientation(I)V

    .line 41
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->setPadding(IIII)V

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 46
    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;

    .line 45
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/MediaScannerTrigger;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method
