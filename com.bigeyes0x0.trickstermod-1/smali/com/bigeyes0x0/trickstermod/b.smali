.class public final enum Lcom/bigeyes0x0/trickstermod/b;
.super Ljava/lang/Enum;
.source "Device.java"


# static fields
.field private static final synthetic E:[Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum a:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum b:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum c:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum d:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum e:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum f:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum g:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum h:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum i:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum j:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum k:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum l:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum m:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum n:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum o:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum p:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum q:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum r:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum s:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum t:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum u:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum v:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum w:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum x:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum y:Lcom/bigeyes0x0/trickstermod/b;

.field public static final enum z:Lcom/bigeyes0x0/trickstermod/b;


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 6
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "TORO"

    const/4 v2, 0x0

    const-string v3, "toro"

    const-string v4, "Samsung Galaxy Nexus CDMA"

    .line 7
    const-string v5, "/dev/block/platform/omap/omap_hsmmc.0/by-name/boot"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->a:Lcom/bigeyes0x0/trickstermod/b;

    .line 8
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "MAGURO"

    const/4 v2, 0x1

    .line 9
    const-string v3, "maguro"

    const-string v4, "Samsung Galaxy Nexus GSM"

    .line 10
    const-string v5, "/dev/block/platform/omap/omap_hsmmc.0/by-name/boot"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->b:Lcom/bigeyes0x0/trickstermod/b;

    .line 11
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "TOROPLUS"

    const/4 v2, 0x2

    .line 12
    const-string v3, "toroplus"

    const-string v4, "Samsung Galaxy Nexus CDMA"

    .line 13
    const-string v5, "/dev/block/platform/omap/omap_hsmmc.0/by-name/boot"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->c:Lcom/bigeyes0x0/trickstermod/b;

    .line 14
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "MAKO"

    const/4 v2, 0x3

    .line 15
    const-string v3, "mako"

    const-string v4, "LG Nexus 4"

    const-string v5, "/dev/block/mmcblk0p6"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->d:Lcom/bigeyes0x0/trickstermod/b;

    .line 16
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "VIVO"

    const/4 v2, 0x4

    .line 17
    const-string v3, "vivo"

    const-string v4, "HTC Incredible S"

    const-string v5, "/dev/block/mmcblk0p22"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->e:Lcom/bigeyes0x0/trickstermod/b;

    .line 18
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "GROUPER"

    const/4 v2, 0x5

    .line 19
    const-string v3, "grouper"

    const-string v4, "ASUS Nexus 7 (2012)"

    .line 20
    const-string v5, "/dev/block/platform/sdhci-tegra.3/by-name/LNX"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->f:Lcom/bigeyes0x0/trickstermod/b;

    .line 21
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "TILAPIA"

    const/4 v2, 0x6

    .line 22
    const-string v3, "tilapia"

    const-string v4, "ASUS Nexus 7 3G (2012)"

    .line 23
    const-string v5, "/dev/block/platform/sdhci-tegra.3/by-name/LNX"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->g:Lcom/bigeyes0x0/trickstermod/b;

    .line 24
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "FLO"

    const/4 v2, 0x7

    .line 25
    const-string v3, "flo"

    const-string v4, "ASUS Nexus 7 (2013)"

    .line 26
    const-string v5, "/dev/block/platform/msm_sdcc.1/by-name/boot"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->h:Lcom/bigeyes0x0/trickstermod/b;

    .line 27
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "MANTA"

    const/16 v2, 0x8

    .line 28
    const-string v3, "manta"

    const-string v4, "Samsung Nexus 10"

    .line 29
    const-string v5, "/dev/block/platform/dw_mmc.0/by-name/boot"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->i:Lcom/bigeyes0x0/trickstermod/b;

    .line 30
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "ENDEAVORU"

    const/16 v2, 0x9

    .line 31
    const-string v3, "endeavoru"

    const-string v4, "HTC One X International"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->j:Lcom/bigeyes0x0/trickstermod/b;

    .line 32
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2VZW"

    const/16 v2, 0xa

    .line 33
    const-string v3, "d2vzw"

    const-string v4, "Samsung Galaxy S III - Verizon Wireless"

    .line 34
    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->k:Lcom/bigeyes0x0/trickstermod/b;

    .line 35
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "M0"

    const/16 v2, 0xb

    .line 36
    const-string v3, "m0"

    const-string v4, "Samsung Galaxy S III - International"

    const-string v5, "/dev/block/mmcblk0p5"

    .line 37
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->l:Lcom/bigeyes0x0/trickstermod/b;

    .line 38
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2TMO"

    const/16 v2, 0xc

    .line 39
    const-string v3, "d2tmo"

    const-string v4, "Samsung Galaxy S III - T-Mobile"

    const-string v5, "/dev/block/mmcblk0p7"

    .line 40
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->m:Lcom/bigeyes0x0/trickstermod/b;

    .line 41
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2ATT"

    const/16 v2, 0xd

    .line 42
    const-string v3, "d2att"

    const-string v4, "Samsung Galaxy S III - AT&T"

    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->n:Lcom/bigeyes0x0/trickstermod/b;

    .line 43
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2SPR"

    const/16 v2, 0xe

    .line 44
    const-string v3, "d2spr"

    const-string v4, "Samsung Galaxy S III - Sprint"

    const-string v5, "/dev/block/mmcblk0p7"

    .line 45
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->o:Lcom/bigeyes0x0/trickstermod/b;

    .line 46
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2CAN"

    const/16 v2, 0xf

    .line 47
    const-string v3, "d2can"

    const-string v4, "Samsung Galaxy S III - Canadian Edition"

    .line 48
    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->p:Lcom/bigeyes0x0/trickstermod/b;

    .line 49
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2USC"

    const/16 v2, 0x10

    .line 50
    const-string v3, "d2usc"

    const-string v4, "Samsung Galaxy S III - U.S. Cellular"

    .line 51
    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->q:Lcom/bigeyes0x0/trickstermod/b;

    .line 52
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "D2DCM"

    const/16 v2, 0x11

    .line 53
    const-string v3, "d2dcm"

    const-string v4, "Samsung Galaxy S III - NTT DOCOMO"

    const-string v5, "/dev/block/mmcblk0p7"

    .line 54
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->r:Lcom/bigeyes0x0/trickstermod/b;

    .line 55
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "YUGA"

    const/16 v2, 0x12

    .line 56
    const-string v3, "yuga"

    const-string v4, "Sony Xperia Z"

    .line 57
    const-string v5, "/dev/block/platform/msm_sdcc.1/by-name/boot"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->s:Lcom/bigeyes0x0/trickstermod/b;

    .line 58
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "ODIN"

    const/16 v2, 0x13

    .line 59
    const-string v3, "odin"

    const-string v4, "Sony Xperia ZL"

    .line 60
    const-string v5, "/dev/block/platform/msm_sdcc.1/by-name/boot"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->t:Lcom/bigeyes0x0/trickstermod/b;

    .line 61
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "GEEB_CA"

    const/16 v2, 0x14

    .line 62
    const-string v3, "geeb_ca"

    const-string v4, "LG Optimus G"

    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->u:Lcom/bigeyes0x0/trickstermod/b;

    .line 63
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "GEEB_ATT_US"

    const/16 v2, 0x15

    .line 64
    const-string v3, "geeb_att_us"

    const-string v4, "LG Optimus G"

    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->v:Lcom/bigeyes0x0/trickstermod/b;

    .line 65
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "GEEHRC_INTL"

    const/16 v2, 0x16

    .line 66
    const-string v3, "geehrc_intl"

    const-string v4, "LG Optimus G"

    const-string v5, "/dev/block/mmcblk0p7"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->w:Lcom/bigeyes0x0/trickstermod/b;

    .line 67
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "GEEHRC4G_SPR_US"

    const/16 v2, 0x17

    .line 68
    const-string v3, "geehrc4g_spr_us"

    const-string v4, "LG Optimus G"

    const-string v5, "/dev/block/mmcblk0p7"

    .line 69
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->x:Lcom/bigeyes0x0/trickstermod/b;

    .line 70
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "M7"

    const/16 v2, 0x18

    .line 71
    const-string v3, "m7"

    const-string v4, "HTC One"

    const-string v5, "/dev/block/mmcblk0p33"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->y:Lcom/bigeyes0x0/trickstermod/b;

    .line 72
    new-instance v0, Lcom/bigeyes0x0/trickstermod/b;

    const-string v1, "UNSUPPORTED"

    const/16 v2, 0x19

    .line 73
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->z:Lcom/bigeyes0x0/trickstermod/b;

    .line 5
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/bigeyes0x0/trickstermod/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->a:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->b:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->c:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->d:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->e:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->f:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->g:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->h:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->i:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->j:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->k:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->l:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->m:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->n:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->o:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->p:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->q:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->r:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->s:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->t:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->u:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->v:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->w:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->x:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->y:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/bigeyes0x0/trickstermod/b;->z:Lcom/bigeyes0x0/trickstermod/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bigeyes0x0/trickstermod/b;->E:[Lcom/bigeyes0x0/trickstermod/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/b;->A:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/bigeyes0x0/trickstermod/b;->B:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/bigeyes0x0/trickstermod/b;->C:Ljava/lang/String;

    .line 102
    iput-boolean p6, p0, Lcom/bigeyes0x0/trickstermod/b;->D:Z

    .line 103
    return-void
.end method

.method public static final a()Lcom/bigeyes0x0/trickstermod/b;
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/b;->values()[Lcom/bigeyes0x0/trickstermod/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 89
    sget-object v0, Lcom/bigeyes0x0/trickstermod/b;->z:Lcom/bigeyes0x0/trickstermod/b;

    :cond_0
    return-object v0

    .line 84
    :cond_1
    aget-object v0, v2, v1

    .line 85
    iget-object v4, v0, Lcom/bigeyes0x0/trickstermod/b;->A:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bigeyes0x0/trickstermod/b;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/bigeyes0x0/trickstermod/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bigeyes0x0/trickstermod/b;

    return-object v0
.end method

.method public static values()[Lcom/bigeyes0x0/trickstermod/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/bigeyes0x0/trickstermod/b;->E:[Lcom/bigeyes0x0/trickstermod/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/bigeyes0x0/trickstermod/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/b;->D:Z

    return v0
.end method
