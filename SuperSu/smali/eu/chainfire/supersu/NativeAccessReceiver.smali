.class public Leu/chainfire/supersu/NativeAccessReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_17

    const-string v2, "su_access"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "su_appname"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v11, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v11

    :cond_0
    :goto_0
    const-string v3, "su_fromuid"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "su_touid"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v3, "su_cmd"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "su_code"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v11, v0

    move v0, v3

    move v3, v6

    move v6, v7

    move v7, v11

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_1
    if-nez v1, :cond_1

    const v1, 0x7f09000e

    invoke-direct {p0, p1, v1}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v5, :cond_2

    const v5, 0x7f09000e

    invoke-direct {p0, p1, v5}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v8, "INTERACTIVE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x2710

    if-lt v3, v9, :cond_5

    if-lez v7, :cond_5

    rem-int/lit16 v9, v3, 0x2710

    rem-int/lit16 v10, v7, 0x2710

    if-eq v9, v10, :cond_5

    const-string v4, "UID mismatch: from[%d] pkg[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    new-instance v3, Leu/chainfire/supersu/Settings;

    invoke-direct {v3, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Leu/chainfire/supersu/Settings$App;->a(Landroid/content/Context;II)V

    iget-boolean v0, v1, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_16

    if-eqz v8, :cond_6

    const v5, 0x7f09001d

    invoke-direct {p0, p1, v5}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    new-instance v7, Leu/chainfire/supersu/Settings;

    invoke-direct {v7, p1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_b

    move-object v6, v2

    :goto_4
    invoke-virtual {v7, v6}, Leu/chainfire/supersu/Settings;->c(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v6

    iget-boolean v7, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v7, :cond_c

    iget v7, v6, Leu/chainfire/supersu/Settings$App;->n:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_c

    iget v4, v6, Leu/chainfire/supersu/Settings$App;->n:I

    invoke-virtual {v6, p1, v0, v4}, Leu/chainfire/supersu/Settings$App;->a(Landroid/content/Context;II)V

    move v0, v4

    :goto_5
    const-string v4, ""

    if-nez v2, :cond_11

    const v2, 0x7f090011

    :try_start_2
    invoke-direct {p0, p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v2, 0x1

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const v2, 0x7f09000f

    :goto_6
    invoke-direct {p0, p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_7
    if-eqz v8, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090013

    invoke-direct {p0, p1, v1}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const/4 v1, 0x0

    invoke-static {p1, v1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    invoke-static {p1, v1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_9
    const/4 v2, 0x1

    invoke-static {p1, v2}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "nag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_8
    sget-object v1, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_a

    :cond_9
    sput-object v0, Leu/chainfire/supersu/NativeAccessReceiver;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Leu/chainfire/supersu/NativeAccessReceiver;->b:J

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Leu/chainfire/supersu/NativeAccessReceiver$1;

    invoke-direct {v2, p0, p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver$1;-><init>(Leu/chainfire/supersu/NativeAccessReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    const/4 v0, 0x2

    invoke-static {p1, v0}, Leu/chainfire/supersu/MainActivity;->a(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_b
    move-object v6, v1

    goto/16 :goto_4

    :cond_c
    iget-boolean v7, v6, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_d
    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/PromptQueue;->b(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SuperSU Receiver Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_e
    invoke-static {p1}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    goto/16 :goto_3

    :cond_f
    const v2, 0x7f090010

    goto/16 :goto_6

    :catch_0
    move-exception v2

    const-string v2, "%s (%s) has been %s superuser permissions"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    const v0, 0x7f09000f

    :goto_a
    invoke-direct {p0, p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_10
    const v0, 0x7f090010

    goto :goto_a

    :cond_11
    const v2, 0x7f090012

    :try_start_3
    invoke-direct {p0, p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v6, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    const v2, 0x7f09000f

    :goto_b
    invoke-direct {p0, p1, v2}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_7

    :cond_12
    const v2, 0x7f090010

    goto :goto_b

    :catch_1
    move-exception v2

    const-string v2, "%s has been %s superuser permissions"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_13

    const v0, 0x7f09000f

    :goto_c
    invoke-direct {p0, p1, v0}, Leu/chainfire/supersu/NativeAccessReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_13
    const v0, 0x7f090010

    goto :goto_c

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_9

    :catch_2
    move-exception v3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto/16 :goto_0

    :cond_16
    move v0, v6

    goto/16 :goto_5

    :cond_17
    move v11, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    move v6, v7

    move v7, v11

    goto/16 :goto_1
.end method
