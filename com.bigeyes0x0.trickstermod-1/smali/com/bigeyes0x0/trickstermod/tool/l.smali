.class public Lcom/bigeyes0x0/trickstermod/tool/l;
.super Landroid/os/AsyncTask;
.source "ToolAsync.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/l;->a:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/j;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/j;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/tool/j;->b([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/j;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/j;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/tool/j;->setPostExecute(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/tool/l;->a([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/tool/l;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/j;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/j;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->c()V

    .line 77
    :cond_0
    return-void
.end method
