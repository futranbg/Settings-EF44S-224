.class public abstract Lcom/bigeyes0x0/trickstermod/tool/i;
.super Landroid/widget/LinearLayout;
.source "Tool.java"


# static fields
.field protected static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field protected static b:Lcom/bigeyes0x0/trickstermod/j;

.field protected static c:Lcom/bigeyes0x0/trickstermod/h;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 16
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/i;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 17
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/i;->c:Lcom/bigeyes0x0/trickstermod/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/i;->d:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/i;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/i;->setId(I)V

    .line 33
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/i;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/tool/i;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 40
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 45
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/i;->d:Ljava/lang/String;

    return-object v0
.end method
