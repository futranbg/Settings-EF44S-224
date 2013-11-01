.class public Leu/chainfire/supersu/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Ljava/lang/String;

.field public static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v5, 0x12

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x19

    new-array v0, v0, [I

    const/16 v3, 0x3e8

    aput v3, v0, v2

    const/16 v3, 0x3e9

    aput v3, v0, v6

    const/4 v3, 0x3

    const/16 v4, 0x3ea

    aput v4, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x3eb

    aput v4, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0x3ec

    aput v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3ed

    aput v4, v0, v3

    const/4 v3, 0x7

    const/16 v4, 0x3ee

    aput v4, v0, v3

    const/16 v3, 0x8

    const/16 v4, 0x3ef

    aput v4, v0, v3

    const/16 v3, 0x9

    const/16 v4, 0x3f0

    aput v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x3f1

    aput v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x3f2

    aput v4, v0, v3

    const/16 v3, 0xc

    const/16 v4, 0x3f3

    aput v4, v0, v3

    const/16 v3, 0xd

    const/16 v4, 0x3f4

    aput v4, v0, v3

    const/16 v3, 0xe

    const/16 v4, 0x3f5

    aput v4, v0, v3

    const/16 v3, 0xf

    const/16 v4, 0x3f6

    aput v4, v0, v3

    const/16 v3, 0x10

    const/16 v4, 0x7d0

    aput v4, v0, v3

    const/16 v3, 0x11

    const/16 v4, 0x7d1

    aput v4, v0, v3

    const/16 v3, 0x7d2

    aput v3, v0, v5

    const/16 v3, 0x13

    const/16 v4, 0xbb9

    aput v4, v0, v3

    const/16 v3, 0x14

    const/16 v4, 0xbba

    aput v4, v0, v3

    const/16 v3, 0x15

    const/16 v4, 0xbbb

    aput v4, v0, v3

    const/16 v3, 0x16

    const/16 v4, 0xbbc

    aput v4, v0, v3

    const/16 v3, 0x17

    const/16 v4, 0x270e

    aput v4, v0, v3

    const/16 v3, 0x18

    const/16 v4, 0x270f

    aput v4, v0, v3

    sput-object v0, Leu/chainfire/supersu/Constants;->e:[I

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/fs/selinux"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Leu/chainfire/supersu/Constants;->b:Z

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/16 v4, 0x31

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    sput-boolean v0, Leu/chainfire/supersu/Constants;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    sget-boolean v0, Leu/chainfire/supersu/Constants;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Leu/chainfire/supersu/Constants;->c:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "0755"

    :goto_3
    sput-object v0, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    const-string v3, "SuperSU"

    const-string v4, "[SuperSU] SELINUX PRESENT[%d] ENFORCING[%d]"

    new-array v5, v6, [Ljava/lang/Object;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->b:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-boolean v0, Leu/chainfire/supersu/Constants;->c:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SuperSU"

    const-string v4, "[SuperSU] IS_DAEMON_MODE[%d] SU_MOD[%s]"

    new-array v5, v6, [Ljava/lang/Object;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    :goto_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v1

    :goto_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    const-string v0, "06755"

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "grant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->b()I

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "ROOT"

    goto :goto_0

    :sswitch_1
    const-string v0, "SYSTEM"

    goto :goto_0

    :sswitch_2
    const-string v0, "RADIO"

    goto :goto_0

    :sswitch_3
    const-string v0, "BLUETOOTH"

    goto :goto_0

    :sswitch_4
    const-string v0, "GRAPHICS"

    goto :goto_0

    :sswitch_5
    const-string v0, "INPUT"

    goto :goto_0

    :sswitch_6
    const-string v0, "AUDIO"

    goto :goto_0

    :sswitch_7
    const-string v0, "CAMERA"

    goto :goto_0

    :sswitch_8
    const-string v0, "LOG"

    goto :goto_0

    :sswitch_9
    const-string v0, "COMPASS"

    goto :goto_0

    :sswitch_a
    const-string v0, "MOUNT"

    goto :goto_0

    :sswitch_b
    const-string v0, "WIFI"

    goto :goto_0

    :sswitch_c
    const-string v0, "ADB"

    goto :goto_0

    :sswitch_d
    const-string v0, "INSTALL"

    goto :goto_0

    :sswitch_e
    const-string v0, "MEDIA"

    goto :goto_0

    :sswitch_f
    const-string v0, "DHCP"

    goto :goto_0

    :sswitch_10
    const-string v0, "SHELL"

    goto :goto_0

    :sswitch_11
    const-string v0, "CACHE"

    goto :goto_0

    :sswitch_12
    const-string v0, "DIAG"

    goto :goto_0

    :sswitch_13
    const-string v0, "NET_BT_ADMIN"

    goto :goto_0

    :sswitch_14
    const-string v0, "NET_BT"

    goto :goto_0

    :sswitch_15
    const-string v0, "INET"

    goto :goto_0

    :sswitch_16
    const-string v0, "NET_RAW"

    goto :goto_0

    :sswitch_17
    const-string v0, "MISC"

    goto :goto_0

    :sswitch_18
    const-string v0, "NOBODY"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_f
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_11
        0x7d2 -> :sswitch_12
        0xbb9 -> :sswitch_13
        0xbba -> :sswitch_14
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0x270e -> :sswitch_17
        0x270f -> :sswitch_18
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {p0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Leu/chainfire/supersu/Constants$1;

    invoke-direct {v2, p2}, Leu/chainfire/supersu/Constants$1;-><init>(Leu/chainfire/supersu/Constants$OnExpireTimeSelected;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Constants$2;

    invoke-direct {v1, p3}, Leu/chainfire/supersu/Constants$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->b()I

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "prompt"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "grant"

    goto :goto_0

    :cond_2
    const-string v0, "deny"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Leu/chainfire/supersu/User;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/data/eu.chainfire.supersu/logs/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/data/user/%d/eu.chainfire.supersu/logs/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Leu/chainfire/supersu/User;->a(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "parent"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "content"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "access"

    goto :goto_0

    :cond_2
    const-string v0, "none"

    goto :goto_0
.end method

.method public static e(I)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x384

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_3
    const-wide/16 v2, 0x708

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_4
    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_5
    const-wide/16 v2, 0x2a30

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_6
    const-wide/16 v2, 0x5460

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_7
    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_8
    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
