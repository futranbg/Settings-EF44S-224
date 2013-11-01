.class public Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;
.super Landroid/app/IntentService;
.source "ServiceApplySettings.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private c:Lcom/bigeyes0x0/trickstermod/j;

.field private d:Lcom/bigeyes0x0/trickstermod/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "ServiceApplySettings"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 43
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    .line 44
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->d:Lcom/bigeyes0x0/trickstermod/h;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;)Lcom/bigeyes0x0/trickstermod/TrApp;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/service/b;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/service/b;-><init>(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bigeyes0x0/trickstermod/service/a;

    invoke-direct {v1, p0, p1}, Lcom/bigeyes0x0/trickstermod/service/a;-><init>(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/high16 v8, 0x1000

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceMakoColor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->d:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/h;->e()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "delay_apply"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->v()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->y()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->w()Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    const-string v0, "Set on boot but NOTHING TO DO"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->q()I

    move-result v1

    .line 70
    if-eqz v0, :cond_3

    if-lez v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 72
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Landroid/app/AlarmManager;

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 74
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v5, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    .line 73
    invoke-direct {v2, v3, v7, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v3, "delay_apply"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v3, v6, v2, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-int/lit16 v5, v1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 78
    invoke-virtual {v0, v9, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Set on boot delay: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lme/timos/br/a;->b()V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 87
    const-class v4, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    .line 86
    invoke-direct {v1, v2, v7, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const/high16 v2, 0x2000

    .line 85
    invoke-static {v0, v6, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->j()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "HOSTNAME Set on boot"

    invoke-static {v1}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 97
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setprop net.hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v7, v7, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a()V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    const-string v0, "Sysctl Set on boot"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v0, "sysctl"

    .line 106
    invoke-virtual {p0, v0, v6}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 119
    const-string v3, "if [ -x busybox ]; then"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "./busybox sysctl -w"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " &> /dev/null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "else"

    aput-object v4, v2, v3

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox sysctl -w"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " &> /dev/null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    const/4 v0, 0x4

    const-string v3, "fi"

    aput-object v3, v2, v0

    .line 118
    invoke-static {v1, v7, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    .line 126
    :goto_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    const-string v0, "Kernel Settings Set on boot"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->m()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 131
    const-string v0, "previous_settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    if-nez v0, :cond_8

    .line 133
    const-string v0, "Last settings are empty"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lme/timos/br/a;->b()V

    goto/16 :goto_0

    .line 100
    :cond_5
    const-string v0, "Hostname Set on boot disabled or saved hostname is empty"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 123
    :cond_7
    const-string v0, "Sysctl Set on boot disabled"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    const-string v0, "Dirty shutdown detected"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 142
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v3, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;

    .line 141
    invoke-direct {v0, v1, v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "result"

    const v2, 0x7f08003d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v2, 0x7f060006

    .line 145
    const v3, 0x7f08003c

    .line 146
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v4, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 144
    invoke-virtual {v1, v2, v6, v3, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZILandroid/app/PendingIntent;)V

    .line 148
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, v6}, Lcom/bigeyes0x0/trickstermod/j;->c(Z)V

    .line 149
    invoke-static {}, Lme/timos/br/a;->b()V

    goto/16 :goto_0

    .line 153
    :cond_9
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 154
    const-string v1, "New kernel or device detected"

    invoke-static {v1}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 157
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-class v4, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;

    .line 156
    invoke-direct {v1, v2, v7, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v2, "result"

    const v3, 0x7f08003f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v2, "previous_settings"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    const v2, 0x7f060006

    .line 161
    const v3, 0x7f08003e

    .line 162
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v4, v6, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v2, v6, v3, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZILandroid/app/PendingIntent;)V

    .line 164
    invoke-static {}, Lme/timos/br/a;->b()V

    goto/16 :goto_0

    .line 168
    :cond_a
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->d:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/h;->d()V

    .line 169
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->d:Lcom/bigeyes0x0/trickstermod/h;

    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/h;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a(Ljava/lang/String;)V

    .line 176
    :goto_4
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->c:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->b:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 178
    const v1, 0x7f060005

    .line 179
    const v2, 0x7f08003b

    .line 177
    invoke-virtual {v0, v1, v6, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(IZI)V

    .line 181
    :cond_b
    invoke-static {}, Lme/timos/br/a;->b()V

    goto/16 :goto_0

    .line 173
    :cond_c
    const-string v0, "Kernel Settings Set on boot disabled"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    goto :goto_4
.end method
