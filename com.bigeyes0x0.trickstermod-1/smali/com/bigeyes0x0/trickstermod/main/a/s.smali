.class Lcom/bigeyes0x0/trickstermod/main/a/s;
.super Landroid/os/Handler;
.source "UndoManager.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/q;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/s;->a:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/s;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/s;->b:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/main/a/s;->b:I

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/a/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/a/q;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/a/q;->a()V

    .line 45
    :cond_0
    return-void
.end method
