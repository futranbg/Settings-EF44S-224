.class public Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverGenerals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 28
    sget-object v2, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 31
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    invoke-direct {v0, v1, v5, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    const-string v3, "clear_dirty_flag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    :cond_2
    invoke-virtual {v2, v4}, Lcom/bigeyes0x0/trickstermod/j;->c(Z)V

    goto :goto_0

    .line 45
    :cond_3
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 46
    const v0, 0x7f060003

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(I)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    .line 48
    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 53
    :cond_4
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    invoke-static {}, Lme/timos/br/a;->a()V

    .line 55
    invoke-virtual {v2, v4}, Lcom/bigeyes0x0/trickstermod/j;->b(Z)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 58
    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    invoke-direct {v0, v1, v5, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 63
    :cond_5
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 64
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b()V

    goto :goto_0

    .line 74
    :cond_7
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->b()V

    goto/16 :goto_0
.end method
