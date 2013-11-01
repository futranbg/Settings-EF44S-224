.class public Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;
.super Landroid/app/Activity;
.source "ThemeChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static SHARED_PREFERENCE_NAME:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mApplyThemeButton:Landroid/widget/Button;

.field private mCurrentSetTheme:Ljava/lang/String;

.field private mCurrentSetThemeIndex:I

.field private mInstallStep:I

.field private mInstallStepBeforePause:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRebootButton:Landroid/widget/Button;

.field private mSoftRebootButton:Landroid/widget/Button;

.field private mThemeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThemePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "XThemeEngine/ThemeChooserActivity"

    sput-object v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "XTHEMEENGINE_PREFS"

    sput-object v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->SHARED_PREFERENCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I

    .line 56
    iput v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    .line 57
    iput v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStepBeforePause:I

    return-void
.end method

.method static synthetic access$000(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->tryAndApplyTheme(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static synthetic access$300(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I

    return v0
.end method

.method static synthetic access$402(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I

    return p1
.end method

.method static synthetic access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->toggleActionsButton(Z)V

    return-void
.end method

.method static synthetic access$800(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->refreshThemeList()V

    return-void
.end method

.method private appIsInstalledInMountASEC()Z
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "/asec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private checkForXposedInstaller()Z
    .locals 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 226
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "de.robv.android.xposed.installer"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v2, 0x1

    .line 232
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 232
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshThemeList()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->toggleActionsButton(Z)V

    .line 250
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    const-string v1, "System Default"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;

    invoke-direct {v1, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$4;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
    return-void
.end method

.method private refreshThemeListNoFilter()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->toggleActionsButton(Z)V

    .line 317
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    const-string v1, "System Default"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    invoke-direct {v1, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 370
    return-void
.end method

.method private toggleActionsButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 240
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 241
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mApplyThemeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mSoftRebootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mRebootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryAndApplyTheme(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .parameter "themePackage"

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->toggleActionsButton(Z)V

    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;

    invoke-direct {v1, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$6;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 542
    :goto_0
    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    invoke-direct {v1, p0, p1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->checkForXposedInstaller()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const-string v2, "You need to have Xposed framework installed!"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, xda:Landroid/content/Intent;
    const-string v2, "http://forum.xda-developers.com/showthread.php?t=1574401"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->finish()V

    .line 71
    .end local v1           #xda:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->appIsInstalledInMountASEC()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->newInstance()Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    move-result-object v2

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    sget-object v2, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->SHARED_PREFERENCE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 84
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "theme_package_name"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetTheme:Ljava/lang/String;

    .line 86
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->requestWindowFeature(I)Z

    .line 87
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->setContentView(I)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mApplyThemeButton:Landroid/widget/Button;

    .line 92
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mSoftRebootButton:Landroid/widget/Button;

    .line 93
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mRebootButton:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mApplyThemeButton:Landroid/widget/Button;

    new-instance v3, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;

    invoke-direct {v3, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$1;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mSoftRebootButton:Landroid/widget/Button;

    new-instance v3, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$2;

    invoke-direct {v3, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$2;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mRebootButton:Landroid/widget/Button;

    new-instance v3, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$3;

    invoke-direct {v3, p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$3;-><init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    .line 119
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemePackages:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->refreshThemeList()V

    .line 126
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    iget-object v4, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 127
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 128
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 136
    sget-object v2, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Manufacturer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v2, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 215
    iget v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    iput v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStepBeforePause:I

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :try_start_0
    const-string v2, "XThemeEngine acquiring root..."

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 148
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v2

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "echo Hello"

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    const-string v2, "XThemeEngine need root access!"

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->finish()V

    .line 161
    :cond_1
    iget v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    if-ge v2, v9, :cond_2

    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->appIsInstalledInMountASEC()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    iput v9, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    .line 165
    :cond_2
    iget v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    if-ge v2, v10, :cond_3

    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->appIsInstalledInMountASEC()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->checkForXposedInstaller()Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    iput v10, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    .line 169
    :cond_3
    iget v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    if-ge v2, v11, :cond_4

    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->checkForXposedInstaller()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsg/ruqqq/XThemeEngine/Utils;->checkIfModuleIsActivated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    iput v11, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    .line 173
    :cond_4
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->appIsInstalledInMountASEC()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->checkForXposedInstaller()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsg/ruqqq/XThemeEngine/Utils;->checkIfModuleIsActivated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    const/4 v2, 0x5

    iput v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    .line 177
    :cond_5
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    iget v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStepBeforePause:I

    iget v3, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    if-eq v2, v3, :cond_6

    .line 179
    iget v2, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mInstallStep:I

    packed-switch v2, :pswitch_data_0

    .line 201
    :cond_6
    :goto_1
    invoke-direct {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->appIsInstalledInMountASEC()Z

    move-result v2

    if-nez v2, :cond_7

    .line 203
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 209
    :cond_7
    :goto_2
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 181
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-static {}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->newInstance()Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;

    move-result-object v2

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptMoveAppDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :pswitch_1
    invoke-static {}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->newInstance()Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;

    move-result-object v2

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptInstallXposedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :pswitch_2
    invoke-static {v8}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->newInstance(Z)Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;

    move-result-object v2

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lsg/ruqqq/XThemeEngine/dialog/PromptActivateModuleDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :pswitch_3
    :try_start_2
    const-string v2, "XposedBridge.jar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/XposedBridge.jar.newversion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lsg/ruqqq/XThemeEngine/Utils;->copyAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/XposedBridge.jar.newversion > /data/xposed/XposedBridge.jar.newversion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "chmod 655 /data/xposed/XposedBridge.jar.newversion"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/XposedBridge.jar.newversion > /data/xposed/XposedBridge.jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "chmod 655 /data/xposed/XposedBridge.jar"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 193
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 194
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1
    move-exception v1

    .line 195
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 205
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
