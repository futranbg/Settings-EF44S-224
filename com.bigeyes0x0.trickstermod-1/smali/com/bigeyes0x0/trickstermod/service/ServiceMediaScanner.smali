.class public Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;
.super Landroid/app/Service;
.source "ServiceMediaScanner.java"


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private b:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 24
    new-instance v0, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->b:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    .line 21
    return-void
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 30
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 35
    const-string v0, "external"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 39
    :goto_1
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->b:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-virtual {p0, v1, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->b:Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 63
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1, v3}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 72
    :goto_0
    return v3

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceMediaScanner;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v1, 0x7f060003

    .line 70
    const v2, 0x7f0800a0

    .line 69
    invoke-virtual {v0, v1, v3, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZI)V

    goto :goto_0
.end method
