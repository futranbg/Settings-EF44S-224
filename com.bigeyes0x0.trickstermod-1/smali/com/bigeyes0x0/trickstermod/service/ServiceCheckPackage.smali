.class public Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;
.super Landroid/app/Service;
.source "ServiceCheckPackage.java"


# instance fields
.field private a:Landroid/os/Messenger;

.field private final b:Landroid/os/Messenger;

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a:Landroid/os/Messenger;

    .line 100
    new-instance v0, Landroid/os/Messenger;

    .line 101
    new-instance v1, Lcom/bigeyes0x0/trickstermod/service/c;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/service/c;-><init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->b:Landroid/os/Messenger;

    .line 102
    new-instance v0, Lcom/bigeyes0x0/trickstermod/service/d;

    invoke-direct {v0, p0, v2}, Lcom/bigeyes0x0/trickstermod/service/d;-><init>(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;Lcom/bigeyes0x0/trickstermod/service/d;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->c:Landroid/content/ServiceConnection;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->c:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;Landroid/os/Messenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic b(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic c(Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->a:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 113
    :try_start_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->o:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 115
    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/ServiceConnection;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    .line 117
    sget-object v5, Lcom/bigeyes0x0/trickstermod/a;->x:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->c:Landroid/content/ServiceConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 118
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V

    .line 120
    const v0, 0x7f080046

    .line 121
    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 122
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;->stopSelf()V

    goto :goto_0
.end method
