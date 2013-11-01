.class public Lcom/bigeyes0x0/trickstermod/main/p;
.super Lcom/bigeyes0x0/trickstermod/main/g;
.source "FragmentTool.java"


# instance fields
.field private Q:Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;

.field private R:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/g;-><init>()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/p;->R:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d([Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/p;->Q:Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;->d([Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 32
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 33
    sget-object v2, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    .line 34
    invoke-virtual {v1, p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/main/p;)V

    .line 36
    const v0, 0x7f030008

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 39
    const-class v0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;

    .line 38
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/p;->Q:Lcom/bigeyes0x0/trickstermod/tool/HostnameSetter;

    .line 40
    const-class v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/p;->R:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v1, "com.android.settings"

    .line 45
    const-string v4, "com.android.settings.Settings$AppOpsSummaryActivity"

    .line 44
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/p;->d()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 48
    const v0, 0x7f060015

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    const v0, 0x7f060016

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;

    move-object v1, v0

    .line 57
    :goto_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    const v0, 0x7f060017

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/ViewStub;

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 63
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/h;->c()Ljava/util/Properties;

    move-result-object v0

    .line 64
    const-string v2, "N4_GADV_SCREEN"

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    const v0, 0x7f060018

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/p;->D()V

    .line 73
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/p;->E()V

    .line 74
    if-eqz v1, :cond_3

    .line 75
    new-array v0, v5, [Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->d([Landroid/os/Bundle;)V

    .line 79
    :cond_3
    iput-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/p;->P:Landroid/view/View;

    .line 80
    return-object v3

    .line 68
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
