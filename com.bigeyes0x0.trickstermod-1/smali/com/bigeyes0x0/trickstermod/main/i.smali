.class public Lcom/bigeyes0x0/trickstermod/main/i;
.super Lcom/bigeyes0x0/trickstermod/main/g;
.source "FragmentInfo.java"


# instance fields
.field private Q:Ljava/util/concurrent/ScheduledExecutorService;

.field private R:Lcom/bigeyes0x0/trickstermod/tool/a/a;

.field private S:Ljava/util/concurrent/ScheduledFuture;

.field private T:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/g;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    return-void
.end method

.method private D()V
    .locals 7

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->R:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->b()V

    .line 106
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/i;->R:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    .line 107
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    .line 109
    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    .line 115
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->R:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a()V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 38
    invoke-virtual {v1, p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/main/i;)V

    .line 40
    const v0, 0x7f030005

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 43
    const v0, 0x7f060011

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 45
    const v3, 0x7f08004f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    sget-object v5, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v5}, Lcom/bigeyes0x0/trickstermod/b;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 47
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 45
    invoke-virtual {p0, v3, v4}, Lcom/bigeyes0x0/trickstermod/main/i;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-class v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;

    .line 51
    if-nez p3, :cond_1

    .line 52
    new-array v3, v7, [Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d([Landroid/os/Bundle;)V

    .line 58
    :cond_0
    :goto_0
    const-class v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    .line 57
    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;

    .line 59
    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->d()Landroid/support/v4/app/h;

    move-result-object v3

    .line 60
    invoke-direct {v1, v3, v0}, Lcom/bigeyes0x0/trickstermod/tool/a/a;-><init>(Landroid/content/Context;Lcom/bigeyes0x0/trickstermod/tool/a/d;)V

    .line 59
    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/main/i;->R:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    .line 62
    iput-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/i;->P:Landroid/view/View;

    .line 63
    return-object v2

    .line 53
    :cond_1
    const-string v0, "monitor_running"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iput-boolean v8, p0, Lcom/bigeyes0x0/trickstermod/main/i;->T:Z

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/g;->d(Z)V

    .line 89
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->T:Z

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->T:Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    if-eqz p1, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->D()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->E()V

    goto :goto_0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const-string v1, "monitor_running"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/i;->S:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/main/g;->g(Landroid/os/Bundle;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/g;->l()V

    .line 75
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->D()V

    .line 78
    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/main/g;->o()V

    .line 83
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/i;->E()V

    .line 84
    return-void
.end method
