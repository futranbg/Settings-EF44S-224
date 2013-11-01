.class Lcom/bigeyes0x0/trickstermod/main/o;
.super Landroid/os/AsyncTask;
.source "FragmentTab.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/o;->a:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->R:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/n;->Q:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/n;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/o;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/o;->a(Ljava/lang/String;)V

    return-void
.end method
