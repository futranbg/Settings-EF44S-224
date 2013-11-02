.class public Lde/robv/android/xposed/installer/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# static fields
.field public static MIN_MODULE_VERSION:Ljava/lang/String;

.field private static SEARCH_PATTERN:Ljava/util/regex/Pattern;

.field private static SUFFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static TRIM_VERSION:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "2.0"

    sput-object v0, Lde/robv/android/xposed/installer/PackageChangeReceiver;->MIN_MODULE_VERSION:Ljava/lang/String;

    .line 176
    const-string v0, "^\\s*(\\d+(?:\\.\\d+)*)(.*?)[.+*]*\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SEARCH_PATTERN:Ljava/util/regex/Pattern;

    .line 177
    const-string v0, "(.*?)(\\d*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 247
    const-string v0, "[.+*]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/installer/PackageChangeReceiver;->TRIM_VERSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 181
    const/4 v1, 0x0

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    sget-object v15, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SEARCH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 184
    .local v7, m1:Ljava/util/regex/Matcher;
    sget-object v15, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SEARCH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 187
    .local v8, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_3

    .line 188
    :cond_2
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 191
    :cond_3
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\.0*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, numeric1:[Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\.0*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, numeric2:[Ljava/lang/String;
    array-length v5, v9

    .line 194
    .local v5, len1:I
    array-length v6, v10

    .line 196
    .local v6, len2:I
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, suffix1:Ljava/lang/String;
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, suffix2:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v5, :cond_4

    .line 214
    if-ge v5, v6, :cond_9

    .line 215
    const/4 v1, -0x1

    goto :goto_0

    .line 202
    :cond_4
    if-lt v2, v6, :cond_5

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 205
    :cond_5
    aget-object v15, v9, v2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v3, 0x0

    .line 206
    .local v3, i1:I
    :goto_2
    aget-object v15, v10, v2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v4, 0x0

    .line 209
    .local v4, i2:I
    :goto_3
    if-eq v3, v4, :cond_8

    .line 210
    sub-int v1, v3, v4

    goto :goto_0

    .line 205
    .end local v3           #i1:I
    .end local v4           #i2:I
    :cond_6
    aget-object v15, v9, v2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 206
    .restart local v3       #i1:I
    :cond_7
    aget-object v15, v10, v2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 200
    .restart local v4       #i2:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .end local v3           #i1:I
    .end local v4           #i2:I
    :cond_9
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 218
    const/4 v1, 0x0

    goto :goto_0

    .line 221
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 222
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 223
    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 224
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 226
    :cond_c
    sget-object v15, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 227
    sget-object v15, Lde/robv/android/xposed/installer/PackageChangeReceiver;->SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 228
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 231
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, cmp:I
    if-nez v1, :cond_0

    .line 236
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 237
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 238
    :cond_d
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 239
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 242
    :cond_e
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 243
    .local v13, suffixNum1:I
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 244
    .local v14, suffixNum2:I
    sub-int v1, v13, v14

    goto/16 :goto_0
.end method

.method static getEnabledModules(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v3, modules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/xposed/modules.whitelist"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    .local v2, moduleLines:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, module:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 85
    .end local v1           #module:Ljava/lang/String;
    .end local v2           #moduleLines:Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 78
    .restart local v1       #module:Ljava/lang/String;
    .restart local v2       #moduleLines:Ljava/io/BufferedReader;
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1           #module:Ljava/lang/String;
    .end local v2           #moduleLines:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    const-string v4, "xposed_installer"

    const-string v5, "cannot read /data/xposed/modules.whitelist"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static setEnabledModules(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, modules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/data/xposed/modules.whitelist"

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, pw:Ljava/io/PrintWriter;
    monitor-enter p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .end local v2           #pw:Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 92
    .restart local v2       #pw:Ljava/io/PrintWriter;
    :cond_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, module:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v1           #module:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    .end local v2           #pw:Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    const-string v3, "cannot write /data/xposed/modules.whitelist"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    const-string v3, "xposed_installer"

    const-string v4, "cannot write /data/xposed/modules.whitelist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static showNotActivatedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "appName"

    .prologue
    const v5, 0x7f08001c

    const/4 v6, 0x1

    .line 157
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v2, startXposedInstaller:Landroid/content/Intent;
    const-string v3, "opentab"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 165
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 166
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 167
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 168
    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 171
    .local v1, notification:Landroid/app/Notification;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 172
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 173
    return-void
.end method

.method public static trimVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "version"

    .prologue
    .line 250
    sget-object v0, Lde/robv/android/xposed/installer/PackageChangeReceiver;->TRIM_VERSION:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized updateModulesList(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, enabledModules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Lde/robv/android/xposed/installer/PackageChangeReceiver;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;

    invoke-direct {v0, p0, p1}, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 153
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/installer/PackageChangeReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p2}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    invoke-static {p1}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->getEnabledModules(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 46
    .local v0, enabledModules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    invoke-static {p1, v0}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->setEnabledModules(Landroid/content/Context;Ljava/util/Set;)V

    .line 49
    invoke-static {p1, v0}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->updateModulesList(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_0

    .line 55
    .end local v0           #enabledModules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lde/robv/android/xposed/installer/util/ModuleUtil;->getInstance()Lde/robv/android/xposed/installer/util/ModuleUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lde/robv/android/xposed/installer/util/ModuleUtil;->reloadSingleModule(Ljava/lang/String;)Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v1

    .line 56
    .local v1, module:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {p1}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->getEnabledModules(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 60
    .restart local v0       #enabledModules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-static {p1, v0}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->updateModulesList(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1}, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->showNotActivatedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
