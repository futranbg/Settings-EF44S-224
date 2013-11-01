.class public Leu/chainfire/supersu/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field private d:Leu/chainfire/supersu/AppsFragment;

.field private e:Leu/chainfire/supersu/LogsFragment;

.field private f:Leu/chainfire/supersu/SettingsFragment;

.field private g:Lcom/actionbarsherlock/app/ActionBar;

.field private h:Z

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Leu/chainfire/supersu/MainActivity$TabsAdapter;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Landroid/content/IntentFilter;

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->e:Leu/chainfire/supersu/LogsFragment;

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->h:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/MainActivity;->a:Z

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->k:Ljava/lang/String;

    iput v1, p0, Leu/chainfire/supersu/MainActivity;->l:I

    iput-boolean v1, p0, Leu/chainfire/supersu/MainActivity;->b:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/MainActivity;->c:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "eu.chainfire.supersu.action.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->m:Landroid/content/IntentFilter;

    new-instance v0, Leu/chainfire/supersu/MainActivity$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$1;-><init>(Leu/chainfire/supersu/MainActivity;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/MainActivity;->l:I

    return v0
.end method

.method private a()V
    .locals 3

    invoke-static {p0}, Leu/chainfire/supersu/User;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Leu/chainfire/supersu/MainActivity$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$2;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity;->b()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.action.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eu.chainfire.supersu.extra.FLAGS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/MainActivity;->l:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/AppsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/LogsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->e:Leu/chainfire/supersu/LogsFragment;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/MainActivity;->h:Z

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1401

    invoke-static {p0, v1, v0, v1}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ZIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity;->c()V

    goto :goto_0
.end method

.method static synthetic c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->e:Leu/chainfire/supersu/LogsFragment;

    return-object v0
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance v0, Leu/chainfire/supersu/MainActivity$3;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$3;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$3;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic d(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/MainActivity$4;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$4;-><init>(Leu/chainfire/supersu/MainActivity;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$4;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method static synthetic e(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity;->d()V

    return-void
.end method

.method static synthetic f(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x3

    const/4 v8, 0x1

    const v0, 0xff00

    and-int/2addr v0, p1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0, p1, p2, p3}, Leu/chainfire/supersu/AppsFragment;->a(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1301

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_12

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-eq v0, v3, :cond_0

    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/supersu/MainActivity;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    iget v1, v0, Leu/chainfire/supersu/Installer;->b:I

    if-ltz v1, :cond_4

    const-string v0, "su"

    :goto_2
    if-eqz v0, :cond_3

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "mount -o rw,remount /system /system"

    aput-object v3, v1, v9

    const-string v3, "rm %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "/system/.pin"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const-string v3, "mount -o ro,remount /system /system"

    aput-object v3, v1, v10

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, v0, Leu/chainfire/supersu/Installer;->c:I

    if-ltz v0, :cond_11

    const-string v0, "/system/bin/.ext/.su"

    goto :goto_2

    :cond_5
    const/16 v0, 0x1302

    invoke-static {p0, v8, v0, v8}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ZIZ)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x1302

    if-ne p1, v0, :cond_e

    if-eqz p3, :cond_10

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    if-eq v0, v3, :cond_b

    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {p0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_9
    new-instance v1, Leu/chainfire/supersu/Installer;

    invoke-direct {v1}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    iget v4, v1, Leu/chainfire/supersu/Installer;->b:I

    if-ltz v4, :cond_c

    const-string v1, "su"

    :goto_4
    if-eqz v1, :cond_a

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "mount -o rw,remount /system /system"

    aput-object v5, v4, v9

    const-string v5, "rm %s"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "/system/.pin"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "echo %s > %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    const-string v0, "/system/.pin"

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "chmod 644 %s"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "/system/.pin"

    aput-object v6, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x4

    const-string v3, "mount -o ro,remount /system /system"

    aput-object v3, v4, v0

    invoke-static {v1, v4}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_a
    :goto_5
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    if-eqz v0, :cond_b

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->f:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/SettingsFragment;->a(Ljava/lang/String;)V

    :cond_b
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget v1, v1, Leu/chainfire/supersu/Installer;->c:I

    if-ltz v1, :cond_f

    const-string v1, "/system/bin/.ext/.su"

    goto :goto_4

    :cond_d
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "mount -o rw,remount /system /system"

    aput-object v3, v0, v9

    const-string v3, "rm %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "/system/.pin"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const-string v3, "mount -o ro,remount /system /system"

    aput-object v3, v0, v10

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    goto :goto_5

    :cond_e
    const/16 v0, 0x1401

    if-ne p1, v0, :cond_0

    new-instance v0, Leu/chainfire/supersu/MainActivity$5;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$5;-><init>(Leu/chainfire/supersu/MainActivity;)V

    new-instance v1, Leu/chainfire/supersu/MainActivity$6;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$6;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_f
    move-object v1, v2

    goto/16 :goto_4

    :cond_10
    move v0, v3

    goto/16 :goto_3

    :cond_11
    move-object v0, v2

    goto/16 :goto_2

    :cond_12
    move v0, v3

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/16 v11, 0xd

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_b

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v7, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v7, Landroid/graphics/Point;->y:I

    move v3, v1

    :goto_0
    if-nez v3, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_a

    :try_start_0
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-class v0, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v8, Landroid/view/Display;

    const-string v9, "getRawHeight"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v7, Landroid/graphics/Point;->x:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v7, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v11, :cond_1

    :cond_0
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v7, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v7, Landroid/graphics/Point;->y:I

    :cond_1
    iget v0, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_7

    move v0, v1

    :goto_2
    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move v3, v1

    :goto_3
    iget-object v4, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v4, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/high16 v4, 0x4416

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    if-nez v0, :cond_9

    if-eqz v3, :cond_2

    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v6, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v3, v4, :cond_9

    :cond_2
    :goto_4
    iput-boolean v2, p0, Leu/chainfire/supersu/MainActivity;->a:Z

    iget-boolean v2, p0, Leu/chainfire/supersu/MainActivity;->a:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x4140

    invoke-static {v1, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    :cond_3
    if-eqz v0, :cond_4

    const/high16 v0, 0x4210

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->d:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/AppsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->e:Leu/chainfire/supersu/LogsFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->e:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v0, p1}, Leu/chainfire/supersu/LogsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_4

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    move v3, v2

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".MainActivity-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    const-string v1, "emblem"

    invoke-static {v1}, Leu/chainfire/supersu/Settings;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f040010

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    new-instance v0, Leu/chainfire/supersu/MainActivity$TabsAdapter;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->i:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, p0, v1}, Leu/chainfire/supersu/MainActivity$TabsAdapter;-><init>(Leu/chainfire/supersu/MainActivity;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity;->j:Leu/chainfire/supersu/MainActivity$TabsAdapter;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->j:Leu/chainfire/supersu/MainActivity$TabsAdapter;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->j:Leu/chainfire/supersu/MainActivity$TabsAdapter;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->j:Leu/chainfire/supersu/MainActivity$TabsAdapter;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->g:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->e()Z

    move-result v1

    iget v0, p0, Leu/chainfire/supersu/MainActivity;->l:I

    if-ne v0, v3, :cond_0

    const-string v0, "Clear logs"

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    new-instance v2, Leu/chainfire/supersu/MainActivity$7;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$7;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    if-eqz v1, :cond_2

    const v0, 0x7f020053

    :goto_0
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget v0, p0, Leu/chainfire/supersu/MainActivity;->l:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string v0, "Refresh"

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    new-instance v2, Leu/chainfire/supersu/MainActivity$8;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$8;-><init>(Leu/chainfire/supersu/MainActivity;)V

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    if-eqz v1, :cond_3

    const v0, 0x7f020056

    :goto_1
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    const v0, 0x7f020052

    goto :goto_0

    :cond_3
    const v0, 0x7f020055

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->n:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity;->m:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    iget-boolean v0, p0, Leu/chainfire/supersu/MainActivity;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity;->finish()V

    :cond_0
    return-void
.end method
