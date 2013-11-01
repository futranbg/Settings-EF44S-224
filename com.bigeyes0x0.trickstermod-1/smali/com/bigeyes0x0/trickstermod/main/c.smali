.class Lcom/bigeyes0x0/trickstermod/main/c;
.super Ljava/lang/Thread;
.source "ActivityGenerals.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/c;->a:Landroid/content/Intent;

    .line 45
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 76
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getAdbWirelessStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 77
    :goto_0
    sget-object v3, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/j;->d()Z

    move-result v3

    .line 78
    sget-object v4, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v4}, Lcom/bigeyes0x0/trickstermod/j;->e()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v0, v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(ZZZLjava/lang/String;)I

    move-result v3

    .line 79
    const v0, 0x7f08006f

    if-ne v3, v0, :cond_2

    .line 80
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0, v3, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 88
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 76
    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 83
    const-class v4, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setState(Z)V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->c:Lcom/bigeyes0x0/trickstermod/h;

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Lcom/bigeyes0x0/trickstermod/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=(\\d)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/k;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->c:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/h;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v4, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v4, v2}, Lcom/bigeyes0x0/trickstermod/j;->a(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/main/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 95
    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v2, 0x7f0800a5

    invoke-virtual {v0, v2, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 111
    sget-object v2, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sget-object v3, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 112
    const v4, 0x7f0800a4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->c:Lcom/bigeyes0x0/trickstermod/h;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v6}, Lcom/bigeyes0x0/trickstermod/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 113
    sget-object v6, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {p2}, Lcom/bigeyes0x0/trickstermod/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800a6

    :goto_0
    invoke-virtual {v6, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 111
    invoke-virtual {v3, v4, v5}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->f()[Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 117
    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 127
    :cond_0
    return-void

    .line 114
    :cond_1
    const v0, 0x7f0800a7

    goto :goto_0

    .line 117
    :cond_2
    aget-object v0, v2, v1

    .line 118
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/n;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/main/n;->a(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/template/a;

    move-result-object v0

    .line 119
    check-cast v0, Lcom/bigeyes0x0/trickstermod/template/n;

    .line 121
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/template/n;->setState(Ljava/lang/String;)V

    .line 117
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->r()V

    .line 50
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/c;->a:Landroid/content/Intent;

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 53
    :sswitch_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/c;->a()V

    goto :goto_0

    .line 56
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 57
    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;

    .line 56
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "FFC"

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :sswitch_3
    const-string v0, "WF_PM"

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_premium"

    const/4 v2, 0x0

    sget-object v3, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 69
    const-class v4, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;

    .line 68
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    sget-object v1, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x7f080068 -> :sswitch_0
        0x7f08009e -> :sswitch_1
        0x7f0800a2 -> :sswitch_2
        0x7f0800a3 -> :sswitch_3
    .end sparse-switch
.end method
