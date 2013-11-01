.class public final Lcom/bigeyes0x0/trickstermod/TrApp;
.super Landroid/app/Application;
.source "TrApp.java"


# static fields
.field public static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field public static b:Lcom/bigeyes0x0/trickstermod/h;

.field public static c:Lcom/bigeyes0x0/trickstermod/j;


# instance fields
.field private d:I

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:Lcom/bigeyes0x0/trickstermod/main/i;

.field private h:Lcom/bigeyes0x0/trickstermod/main/p;

.field private i:Landroid/app/NotificationManager;

.field private j:Landroid/widget/Toast;

.field private k:Landroid/os/PowerManager$WakeLock;

.field private l:Landroid/app/AlertDialog;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/io/File;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 50
    const/4 v0, -0x2

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->d:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->e:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->f:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/TrApp;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->j:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/TrApp;Landroid/widget/Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->j:Landroid/widget/Toast;

    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lme/timos/br/a/c;->a:Lme/timos/br/a/c;

    invoke-static {v0}, Lme/timos/br/a;->a(Lme/timos/br/a/c;)V

    .line 115
    sget-object v0, Lme/timos/br/a/b;->b:Lme/timos/br/a/b;

    invoke-static {v0}, Lme/timos/br/a;->a(Lme/timos/br/a/b;)V

    .line 116
    const/high16 v0, 0x1

    invoke-static {v0}, Lme/timos/br/a;->a(I)V

    .line 117
    const-string v0, "TricksterMOD"

    invoke-static {v0}, Lme/timos/br/a;->c(Ljava/lang/String;)V

    .line 119
    const v0, 0x7f080040

    invoke-static {v0}, Lme/timos/br/a;->i(I)V

    .line 120
    const v0, 0x7f080003

    invoke-static {v0}, Lme/timos/br/a;->d(I)V

    .line 121
    const v0, 0x7f080041

    invoke-static {v0}, Lme/timos/br/a;->e(I)V

    .line 122
    const v0, 0x7f080020

    invoke-static {v0}, Lme/timos/br/a;->f(I)V

    .line 123
    const v0, 0x7f080023

    invoke-static {v0}, Lme/timos/br/a;->h(I)V

    .line 124
    const v0, 0x7f080050

    invoke-static {v0}, Lme/timos/br/a;->c(I)V

    .line 125
    const v0, 0x7f08001f

    invoke-static {v0}, Lme/timos/br/a;->b(I)V

    .line 126
    const v0, 0x7f080044

    invoke-static {v0}, Lme/timos/br/a;->g(I)V

    .line 127
    const-string v0, "trickster.team@gmail.com"

    invoke-static {v0}, Lme/timos/br/a;->a(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/timos/br/a;->b(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->d:Landroid/net/Uri;

    invoke-static {v0}, Lme/timos/br/a;->a(Landroid/net/Uri;)V

    .line 131
    invoke-static {p0}, Lme/timos/br/a;->a(Landroid/app/Application;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/main/n;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/main/n;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(IZI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p3}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZLjava/lang/String;)V

    .line 352
    return-void
.end method

.method public a(IZILandroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-virtual {p0, p3}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 357
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 361
    return-void
.end method

.method public a(IZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    new-instance v0, Landroid/support/v4/app/ai;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ai;-><init>(Landroid/content/Context;)V

    .line 366
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ai;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ai;

    .line 367
    invoke-virtual {v0, p3}, Landroid/support/v4/app/ai;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ai;

    .line 368
    invoke-virtual {v0, p3}, Landroid/support/v4/app/ai;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ai;

    .line 369
    new-instance v1, Landroid/support/v4/app/ah;

    invoke-direct {v1}, Landroid/support/v4/app/ah;-><init>()V

    invoke-virtual {v1, p3}, Landroid/support/v4/app/ah;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ai;->a(Landroid/support/v4/app/ap;)Landroid/support/v4/app/ai;

    .line 370
    const v1, 0x1080041

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ai;->a(I)Landroid/support/v4/app/ai;

    .line 371
    invoke-virtual {v0, p2}, Landroid/support/v4/app/ai;->a(Z)Landroid/support/v4/app/ai;

    .line 372
    if-eqz p4, :cond_0

    .line 373
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ai;->b(Z)Landroid/support/v4/app/ai;

    .line 374
    invoke-virtual {v0, p4}, Landroid/support/v4/app/ai;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ai;

    .line 376
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/ai;->a()Landroid/app/Notification;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->i:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
    return-void
.end method

.method public a(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->l:Landroid/app/AlertDialog;

    .line 315
    return-void
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/main/i;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->g:Lcom/bigeyes0x0/trickstermod/main/i;

    .line 319
    return-void
.end method

.method public a(Lcom/bigeyes0x0/trickstermod/main/p;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->h:Lcom/bigeyes0x0/trickstermod/main/p;

    .line 323
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->w:Landroid/os/Handler;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/g;-><init>(Lcom/bigeyes0x0/trickstermod/TrApp;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/main/n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bigeyes0x0/trickstermod/tool/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->n:Z

    .line 327
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/tool/i;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/tool/i;

    return-object v0
.end method

.method public b()V
    .locals 7

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->s:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->t:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/bigeyes0x0/trickstermod/a;->p:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 97
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 96
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 99
    sget-object v4, Lcom/bigeyes0x0/trickstermod/a;->w:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 98
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 102
    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->o:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->n:Z

    .line 105
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v2, Lcom/bigeyes0x0/trickstermod/service/ServiceCheckPackage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->d:I

    .line 348
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->m:Z

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->o:Z

    .line 344
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 330
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 332
    array-length v2, v0

    if-le v2, v3, :cond_0

    aget-object v0, v0, v3

    .line 333
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 334
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 336
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 337
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 337
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 339
    return-void

    .line 332
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public f()[Lcom/bigeyes0x0/trickstermod/main/n;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/bigeyes0x0/trickstermod/main/n;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bigeyes0x0/trickstermod/main/n;

    return-object v0
.end method

.method public g()Lcom/bigeyes0x0/trickstermod/main/p;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->h:Lcom/bigeyes0x0/trickstermod/main/p;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->q:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->q:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->m:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->n:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b()V

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->n:Z

    return v0
.end method

.method public k()Ljava/io/File;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->t:Ljava/io/File;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->d:I

    return v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->v:[Ljava/lang/String;

    return-object v0
.end method

.method public n()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->u:[Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->u()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->d(Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 249
    sput-object p0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 251
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->s()V

    .line 252
    sput-boolean v0, Lcom/stericson/RootTools/a;->d:Z

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->w:Landroid/os/Handler;

    .line 256
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->p:Ljava/lang/String;

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->s:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->i:Landroid/app/NotificationManager;

    .line 263
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 264
    const v1, 0x20000006

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->k:Landroid/os/PowerManager$WakeLock;

    .line 267
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "scripts"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "tricks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->t:Ljava/io/File;

    .line 268
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "logs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "logfile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->r:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/bigeyes0x0/trickstermod/j;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/j;-><init>()V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 273
    new-instance v0, Lcom/bigeyes0x0/trickstermod/h;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/h;-><init>()V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    .line 275
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->p()V

    .line 276
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->u()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->d(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->b()V

    .line 282
    new-instance v0, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;-><init>()V

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    new-instance v0, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;

    invoke-direct {v0}, Lcom/bigeyes0x0/trickstermod/ReceiverGenerals;-><init>()V

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    .line 291
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 290
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "Cannot get version"

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public p()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    const v2, 0x7f070002

    .line 216
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 218
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/String;

    .line 219
    const-string v0, "System"

    aput-object v0, v4, v8

    .line 221
    const-string v0, "_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move v0, v1

    .line 222
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_0

    .line 234
    iput-object v4, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->u:[Ljava/lang/String;

    .line 235
    iput-object v3, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->v:[Ljava/lang/String;

    .line 236
    return-void

    .line 223
    :cond_0
    aget-object v2, v3, v0

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 224
    aget-object v6, v2, v8

    .line 225
    array-length v7, v2

    if-le v7, v1, :cond_2

    aget-object v2, v2, v1

    .line 226
    :goto_1
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v6, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v7, v7}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v7, v7}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_1
    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public q()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 307
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 402
    :goto_0
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/TrApp;->o:Z

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 403
    :cond_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
