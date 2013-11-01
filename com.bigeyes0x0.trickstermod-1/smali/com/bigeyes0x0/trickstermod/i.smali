.class public Lcom/bigeyes0x0/trickstermod/i;
.super Landroid/os/AsyncTask;
.source "TrConn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/bigeyes0x0/trickstermod/main/n;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    .line 37
    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/h;->d()V

    .line 38
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 39
    array-length v4, p1

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 42
    invoke-virtual {v2, v3}, Lcom/bigeyes0x0/trickstermod/h;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v2, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v4, 0x7f08004d

    invoke-virtual {v2, v4, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 45
    sget-object v1, Lcom/bigeyes0x0/trickstermod/h;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1, v3}, Lcom/bigeyes0x0/trickstermod/j;->a(Landroid/os/Bundle;)V

    .line 46
    return-object v0

    .line 39
    :cond_0
    aget-object v5, p1, v0

    .line 40
    invoke-virtual {v5, v3}, Lcom/bigeyes0x0/trickstermod/main/n;->k(Landroid/os/Bundle;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/bigeyes0x0/trickstermod/h;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->f()[Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 58
    :cond_0
    return-void

    .line 52
    :cond_1
    aget-object v3, v1, v0

    .line 53
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/main/n;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {v3, p1}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Ljava/lang/String;)V

    .line 52
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/bigeyes0x0/trickstermod/main/n;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/i;->a([Lcom/bigeyes0x0/trickstermod/main/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    .line 65
    const-class v4, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    .line 64
    invoke-direct {v1, v2, v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const/high16 v2, 0x2000

    .line 63
    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    const v2, 0x7f060004

    .line 70
    const v3, 0x7f08003a

    .line 68
    invoke-virtual {v0, v2, v5, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZI)V

    .line 71
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 73
    :cond_0
    return-void
.end method
