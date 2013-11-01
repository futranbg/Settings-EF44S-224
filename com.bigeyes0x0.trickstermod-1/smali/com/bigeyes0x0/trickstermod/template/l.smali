.class Lcom/bigeyes0x0/trickstermod/template/l;
.super Landroid/os/AsyncTask;
.source "SettingScreen.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/l;->a:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/template/l;->b:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/template/l;->c:Landroid/view/View;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/template/l;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/l;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 107
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string v2, "ctrl_na"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v2, 0x7f080042

    invoke-virtual {v1, v2, v7}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v2, Lcom/bigeyes0x0/trickstermod/template/SettingScreen$ActivityScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "_fragment_key"

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/template/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/l;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    sget-object v1, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/l;->b:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/bigeyes0x0/trickstermod/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "screen_title"

    .line 122
    sget-object v3, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/template/l;->a:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    .line 123
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    .line 122
    invoke-virtual {v3, v4, v5}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "screen_title"

    .line 126
    sget-object v2, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/l;->b:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_3
    const-string v1, "screen_title"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/template/SettingScreen;->b:Lcom/bigeyes0x0/trickstermod/h;

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/template/l;->a:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/l;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/l;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/l;->c:Landroid/view/View;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/template/m;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/template/m;-><init>(Lcom/bigeyes0x0/trickstermod/template/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_1
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/l;->a([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/template/l;->a(Landroid/content/Intent;)V

    return-void
.end method
