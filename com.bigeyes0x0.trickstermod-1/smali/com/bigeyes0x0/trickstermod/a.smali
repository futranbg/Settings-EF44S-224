.class public Lcom/bigeyes0x0/trickstermod/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Ljava/util/Set;

.field public static m:Ljava/lang/String;

.field public static final n:Lcom/bigeyes0x0/trickstermod/b;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xb

    const/16 v5, 0x8

    const/4 v4, 0x6

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TricksterMOD-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Bug Report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->a:Ljava/lang/String;

    .line 20
    const-string v0, "https://plus.google.com/u/0/communities/113018416688335706334"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->b:Landroid/net/Uri;

    .line 22
    const-string v0, "http://timos.me/tm/changelog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->c:Landroid/net/Uri;

    .line 23
    const-string v0, "http://timos.me/tm/faq"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->d:Landroid/net/Uri;

    .line 25
    const-string v0, "http://timos.me/tm/translate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->e:Landroid/net/Uri;

    .line 27
    const-string v0, "http://www.androidpit.com/install"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->f:Landroid/net/Uri;

    .line 29
    const-string v0, "market://details?id=com.bigeyes0x0.trickstermod.premium"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->g:Landroid/net/Uri;

    .line 31
    const-string v0, "appcenter://package/com.bigeyes0x0.trickstermod.premium"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->h:Landroid/net/Uri;

    .line 32
    const-string v0, "http://goo.gl/BIfbc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->i:Landroid/net/Uri;

    .line 33
    const-string v0, "http://timos.me/tm/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->j:Landroid/net/Uri;

    .line 35
    const-string v0, "http://timos.me/tm/feature/start#kernel_backuprestore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->k:Landroid/net/Uri;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    .line 39
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MINFREE_SCREEN_VIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 40
    const-string v3, "GPU_GOV_SCR_VIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "IO_SCHED_SCREEN_VIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 41
    const-string v3, "N4_GADV_SCREEN_VIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "SOUND_SCREEN_VIEW"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 42
    const-string v3, "TOUCH_SCREEN_VIEW"

    aput-object v3, v1, v2

    const-string v2, "LED_SCREEN_VIEW"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    .line 43
    const-string v3, "INTELLI_THERMAL_SCREEN"

    aput-object v3, v1, v2

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->l:Ljava/util/Set;

    .line 52
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/b;->a()Lcom/bigeyes0x0/trickstermod/b;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    .line 56
    new-array v0, v6, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->o:Ljava/lang/String;

    .line 59
    new-array v0, v7, [C

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 58
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->p:Ljava/lang/String;

    .line 61
    new-array v0, v6, [C

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->q:Ljava/lang/String;

    .line 64
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->r:Ljava/lang/String;

    .line 67
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->s:Ljava/lang/String;

    .line 70
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->t:Ljava/lang/String;

    .line 73
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 72
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->u:Ljava/lang/String;

    .line 79
    const/16 v0, 0x29

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 78
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->v:Ljava/lang/String;

    .line 84
    const/16 v0, 0x23

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->w:Ljava/lang/String;

    .line 88
    const/16 v0, 0x38

    new-array v0, v0, [C

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 87
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->x:Ljava/lang/String;

    .line 94
    new-array v0, v7, [C

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 93
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->y:Ljava/lang/String;

    .line 96
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->z:Ljava/lang/String;

    .line 100
    new-array v0, v4, [C

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 99
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->A:Ljava/lang/String;

    .line 101
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->B:Ljava/lang/String;

    .line 105
    new-array v0, v5, [C

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/k;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 104
    sput-object v0, Lcom/bigeyes0x0/trickstermod/a;->C:Ljava/lang/String;

    .line 105
    return-void

    .line 56
    :array_0
    .array-data 0x2
        0x55t 0x0t
        0x5ct 0x0t
        0x61t 0x0t
        0x57t 0x0t
        0x46t 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x58t 0x0t
    .end array-data

    .line 59
    nop

    :array_1
    .array-data 0x2
        0x56t 0x0t
        0x5bt 0x0t
        0x58t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x46t 0x0t
        0x5ct 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x54t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x65t 0x0t
        0x58t 0x0t
        0x66t 0x0t
    .end array-data

    .line 61
    nop

    :array_2
    .array-data 0x2
        0x56t 0x0t
        0x5ft 0x0t
        0x54t 0x0t
        0x66t 0x0t
        0x66t 0x0t
        0x58t 0x0t
        0x66t 0x0t
        0x21t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x6bt 0x0t
    .end array-data

    .line 64
    nop

    :array_3
    .array-data 0x2
        0x5at 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x54t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x36t 0x0t
        0x62t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x67t 0x0t
        0x5bt 0x0t
    .end array-data

    .line 67
    :array_4
    .array-data 0x2
        0x5at 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x54t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x40t 0x0t
        0x54t 0x0t
        0x61t 0x0t
        0x54t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x65t 0x0t
    .end array-data

    .line 70
    nop

    :array_5
    .array-data 0x2
        0x5at 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x54t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x60t 0x0t
        0x58t 0x0t
    .end array-data

    .line 73
    :array_6
    .array-data 0x2
        0x4at 0x0t
        0x34t 0x0t
        0x45t 0x0t
        0x41t 0x0t
        0x3ct 0x0t
        0x41t 0x0t
        0x3at 0x0t
        0x2dt 0x0t
        0x13t 0x0t
        0x40t 0x0t
        0x62t 0x0t
        0x57t 0x0t
        0x5ct 0x0t
        0x59t 0x0t
        0x5ct 0x0t
        0x58t 0x0t
        0x57t 0x0t
        0x13t 0x0t
        0x65t 0x0t
        0x62t 0x0t
        0x62t 0x0t
        0x67t 0x0t
        0x13t 0x0t
        0x54t 0x0t
        0x63t 0x0t
        0x63t 0x0t
        0x13t 0x0t
        0x60t 0x0t
        0x5ct 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x67t 0x0t
        0x13t 0x0t
        0x56t 0x0t
        0x62t 0x0t
        0x61t 0x0t
        0x67t 0x0t
        0x54t 0x0t
        0x5ct 0x0t
        0x61t 0x0t
        0x13t 0x0t
        0x57t 0x0t
        0x54t 0x0t
        0x61t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x62t 0x0t
        0x68t 0x0t
        0x66t 0x0t
        0x13t 0x0t
        0x69t 0x0t
        0x5ct 0x0t
        0x65t 0x0t
        0x68t 0x0t
        0x66t 0x0t
        0x22t 0x0t
        0x60t 0x0t
        0x54t 0x0t
        0x5ft 0x0t
        0x6at 0x0t
        0x54t 0x0t
        0x65t 0x0t
        0x58t 0x0t
    .end array-data

    .line 79
    :array_7
    .array-data 0x2
        0x66t 0x0t
        0x62t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x13t 0x0t
        0x59t 0x0t
        0x54t 0x0t
        0x5ct 0x0t
        0x5ft 0x0t
        0x58t 0x0t
        0x57t 0x0t
        0x2dt 0x0t
        0x13t 0x0t
        0x38t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x38t 0x0t
        0x46t 0x0t
        0x13t 0x0t
        0x1bt 0x0t
        0x43t 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x60t 0x0t
        0x5ct 0x0t
        0x66t 0x0t
        0x66t 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x61t 0x0t
        0x13t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x61t 0x0t
        0x5ct 0x0t
        0x58t 0x0t
        0x57t 0x0t
        0x1ct 0x0t
    .end array-data

    .line 84
    nop

    :array_8
    .array-data 0x2
        0x56t 0x0t
        0x62t 0x0t
        0x60t 0x0t
        0x21t 0x0t
        0x55t 0x0t
        0x5ct 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x6ct 0x0t
        0x58t 0x0t
        0x66t 0x0t
        0x23t 0x0t
        0x6bt 0x0t
        0x23t 0x0t
        0x21t 0x0t
        0x67t 0x0t
        0x65t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x60t 0x0t
        0x62t 0x0t
        0x57t 0x0t
        0x21t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x58t 0x0t
        0x60t 0x0t
        0x5ct 0x0t
        0x68t 0x0t
        0x60t 0x0t
    .end array-data

    .line 88
    nop

    :array_9
    .array-data 0x2
        0x56t 0x0t
        0x62t 0x0t
        0x60t 0x0t
        0x21t 0x0t
        0x55t 0x0t
        0x5ct 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x6ct 0x0t
        0x58t 0x0t
        0x66t 0x0t
        0x23t 0x0t
        0x6bt 0x0t
        0x23t 0x0t
        0x21t 0x0t
        0x67t 0x0t
        0x65t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x60t 0x0t
        0x62t 0x0t
        0x57t 0x0t
        0x21t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x58t 0x0t
        0x60t 0x0t
        0x5ct 0x0t
        0x68t 0x0t
        0x60t 0x0t
        0x21t 0x0t
        0x46t 0x0t
        0x58t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x58t 0x0t
        0x3ft 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x58t 0x0t
        0x61t 0x0t
        0x66t 0x0t
        0x58t 0x0t
        0x36t 0x0t
        0x5bt 0x0t
        0x58t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x26t 0x0t
    .end array-data

    .line 94
    :array_a
    .array-data 0x2
        0x46t 0x0t
        0x3ct 0x0t
        0x3at 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x45t 0x0t
        0x38t 0x0t
        0x52t 0x0t
        0x40t 0x0t
        0x34t 0x0t
        0x47t 0x0t
        0x36t 0x0t
        0x3bt 0x0t
    .end array-data

    .line 96
    nop

    :array_b
    .array-data 0x2
        0x5bt 0x0t
        0x67t 0x0t
        0x67t 0x0t
        0x63t 0x0t
        0x2dt 0x0t
        0x22t 0x0t
        0x22t 0x0t
        0x67t 0x0t
        0x5ct 0x0t
        0x60t 0x0t
        0x62t 0x0t
        0x66t 0x0t
        0x21t 0x0t
        0x60t 0x0t
        0x58t 0x0t
        0x22t 0x0t
        0x67t 0x0t
        0x60t 0x0t
        0x22t 0x0t
        0x60t 0x0t
        0x54t 0x0t
        0x5ct 0x0t
        0x61t 0x0t
    .end array-data

    .line 100
    nop

    :array_c
    .array-data 0x2
        0x5at 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x36t 0x0t
        0x65t 0x0t
        0x56t 0x0t
    .end array-data

    .line 101
    :array_d
    .array-data 0x2
        0x5dt 0x0t
        0x54t 0x0t
        0x69t 0x0t
        0x54t 0x0t
        0x21t 0x0t
        0x68t 0x0t
        0x67t 0x0t
        0x5ct 0x0t
        0x5ft 0x0t
        0x21t 0x0t
        0x6dt 0x0t
        0x5ct 0x0t
        0x63t 0x0t
        0x21t 0x0t
        0x4dt 0x0t
        0x5ct 0x0t
        0x63t 0x0t
        0x39t 0x0t
        0x5ct 0x0t
        0x5ft 0x0t
        0x58t 0x0t
    .end array-data

    .line 105
    nop

    :array_e
    .array-data 0x2
        0x5at 0x0t
        0x58t 0x0t
        0x67t 0x0t
        0x38t 0x0t
        0x61t 0x0t
        0x67t 0x0t
        0x65t 0x0t
        0x6ct 0x0t
    .end array-data
.end method
