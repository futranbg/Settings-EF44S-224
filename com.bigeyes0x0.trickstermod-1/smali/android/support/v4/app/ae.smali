.class public Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Landroid/support/v4/app/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Landroid/support/v4/app/ao;

    invoke-direct {v0}, Landroid/support/v4/app/ao;-><init>()V

    sput-object v0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/ak;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0}, Landroid/support/v4/app/an;-><init>()V

    sput-object v0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/ak;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0}, Landroid/support/v4/app/am;-><init>()V

    sput-object v0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/ak;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;-><init>()V

    sput-object v0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/ak;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/ak;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/ak;

    return-object v0
.end method
