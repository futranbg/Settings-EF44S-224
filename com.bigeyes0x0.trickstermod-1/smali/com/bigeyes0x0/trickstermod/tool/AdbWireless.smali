.class public Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;
.super Lcom/bigeyes0x0/trickstermod/tool/j;
.source "AdbWireless.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private d:Landroid/os/Bundle;

.field private e:Landroid/widget/Switch;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Switch;

.field private h:Lcom/bigeyes0x0/trickstermod/a/a;

.field private i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a()V

    .line 158
    return-void
.end method

.method public static final a(ZZZLjava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getCurrentWifiIP()Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    if-eqz p2, :cond_1

    .line 111
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a()V

    .line 115
    :goto_0
    if-eqz p1, :cond_0

    .line 116
    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setprop service.adb.tcp.port "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "stop adbd"

    aput-object v3, v2, v7

    const-string v3, "start adbd"

    aput-object v3, v2, v6

    .line 116
    invoke-static {v5, v5, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v3, 0x7f060001

    .line 119
    sget-object v4, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 120
    const v5, 0x7f08006a

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v0

    aput-object p3, v6, v7

    .line 119
    invoke-virtual {v4, v5, v6}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v2, v3, v7, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZLjava/lang/String;)V

    .line 133
    :cond_0
    :goto_1
    return v0

    .line 113
    :cond_1
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->q()V

    goto :goto_0

    .line 124
    :cond_2
    const v0, 0x7f08006f

    goto :goto_1

    .line 127
    :cond_3
    if-eqz p1, :cond_4

    .line 128
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "setprop service.adb.tcp.port \"\""

    aput-object v2, v1, v0

    .line 129
    const-string v0, "stop adbd"

    aput-object v0, v1, v7

    const-string v0, "start adbd"

    aput-object v0, v1, v6

    .line 128
    invoke-static {v5, v5, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(I)V

    .line 132
    :cond_4
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->q()V

    .line 133
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(I)Landroid/app/AlertDialog;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 369
    new-instance v0, Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 370
    const/16 v4, 0x400

    const v5, 0xffff

    move v3, p1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/a/a;-><init>(Landroid/content/Context;ZIIII)V

    .line 369
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    .line 371
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p0}, Lcom/bigeyes0x0/trickstermod/a/a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/a/a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 375
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 376
    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    return-object v0
.end method

.method public static final getAdbWirelessStatus()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "getprop service.adb.tcp.port"

    aput-object v3, v2, v1

    invoke-static {v4, v4, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    :try_start_0
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getCurrentWifiIP()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    const/16 v4, 0x400

    if-gt v4, v2, :cond_1

    const v4, 0xffff

    if-gt v2, v4, :cond_1

    .line 60
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    sget-object v4, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v5, 0x7f060001

    .line 62
    const/4 v6, 0x1

    sget-object v7, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 63
    const v8, 0x7f08006a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    .line 62
    invoke-virtual {v7, v8, v9}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v4, v5, v6, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 59
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_1
.end method

.method public static final getCurrentWifiIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 73
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0

    .line 81
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 83
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 85
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_4

    .line 86
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 93
    if-ltz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAdbKeepScreenOn(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 279
    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "keep_screen_on"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/j;->a(Z)V

    .line 283
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 285
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/a;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/tool/a;-><init>(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "keep_screen_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 299
    if-eq v0, p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "keep_screen_on"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/j;->a(Z)V

    .line 303
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v3, v2}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(ZZ)V

    goto :goto_0
.end method

.method private setAdbWirelessPort(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "adb_wireless_port"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eq v0, p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "adb_wireless_port"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p1}, Lcom/bigeyes0x0/trickstermod/j;->a(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, v2, v2}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(ZZ)V

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v1, "adb_wireless_status"

    invoke-static {}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getAdbWirelessStatus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v1, "adb_wireless_port"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "keep_screen_on"

    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/j;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    return-object v0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    .line 182
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->f:Landroid/widget/EditText;

    .line 183
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    .line 185
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setOrientation(I)V

    .line 189
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setPadding(IIII)V

    .line 190
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 259
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    .line 264
    const-string v0, "adb_wireless_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 265
    const-string v1, "keep_screen_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 266
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setState(Z)V

    .line 267
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->f:Landroid/widget/EditText;

    const-string v3, "adb_wireless_port"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 272
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a()V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v1, "key_set_bundle_enable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v1, "key_set_bundle_rerun"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->c([Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public varargs b([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    if-eqz p1, :cond_0

    .line 326
    aget-object v1, p1, v3

    const-string v2, "key_set_bundle_enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 327
    aget-object v2, p1, v3

    const-string v3, "key_set_bundle_rerun"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 329
    const-string v3, "key_set_bundle_result"

    .line 331
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v5, "keep_screen_on"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 332
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v6, "adb_wireless_port"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-static {v1, v2, v4, v5}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(ZZZLjava/lang/String;)I

    move-result v1

    .line 328
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    :cond_0
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(ZZ)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->g:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0, p2}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setAdbKeepScreenOn(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/a/a;->b()I

    move-result v0

    .line 206
    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 207
    const v1, 0xffff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setAdbWirelessPort(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    const/16 v0, 0x15b3

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->i:Landroid/app/AlertDialog;

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 225
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    const-string v1, "adb_wireless_view_stats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(Landroid/os/Bundle;)V

    .line 235
    :goto_0
    const-string v1, "dialog_adb_port_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "dialog_adb_port_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->f(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->i:Landroid/app/AlertDialog;

    .line 238
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void

    .line 232
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d([Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->i:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->i:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "dialog_adb_port_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v2, "dialog_adb_port_value"

    .line 249
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->h:Lcom/bigeyes0x0/trickstermod/a/a;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    const-string v2, "adb_wireless_view_stats"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    new-instance v2, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v2, v0, v1}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 254
    return-object v2
.end method

.method public setPostExecute(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    const-string v0, "key_set_bundle_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 340
    sparse-switch v0, :sswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 342
    :sswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "adb_wireless_status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 345
    :sswitch_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->d:Landroid/os/Bundle;

    const-string v1, "adb_wireless_status"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->setState(Z)V

    .line 349
    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v1, v0, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x7f08006f -> :sswitch_2
    .end sparse-switch
.end method

.method public setState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->e:Landroid/widget/Switch;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/b;

    invoke-direct {v1, p0, p1}, Lcom/bigeyes0x0/trickstermod/tool/b;-><init>(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method
