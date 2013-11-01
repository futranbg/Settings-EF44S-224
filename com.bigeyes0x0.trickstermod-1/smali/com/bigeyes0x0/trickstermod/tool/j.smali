.class public abstract Lcom/bigeyes0x0/trickstermod/tool/j;
.super Lcom/bigeyes0x0/trickstermod/tool/i;
.source "ToolAsync.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public varargs abstract a([Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public varargs abstract b([Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/tool/j;->a(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public varargs c([Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/l;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/l;-><init>(Ljava/lang/String;)V

    .line 94
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 93
    invoke-virtual {v0, v1, p1}, Lcom/bigeyes0x0/trickstermod/tool/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public varargs d([Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/k;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/k;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/bigeyes0x0/trickstermod/tool/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method

.method public getPreExcute()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public setPostExecute(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method
