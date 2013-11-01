.class public Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;
.super Lcom/bigeyes0x0/trickstermod/tool/j;
.source "BootloaderModder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static synthetic k:[I


# instance fields
.field private d:Landroid/app/AlertDialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/Switch;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a()V

    .line 53
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->b()[I

    move-result-object v0

    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    const-string v0, "./dd ibs=1 count=1 skip=124 if=/dev/block/platform/omap/omap_hsmmc.0/by-name/param 2> /dev/null|./base64"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->e:Ljava/lang/String;

    .line 58
    const-string v0, "|./base64 -d|./dd obs=1 count=1 seek=124 of=/dev/block/platform/omap/omap_hsmmc.0/by-name/param"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->f:Ljava/lang/String;

    .line 59
    const-string v0, "AQ=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->g:Ljava/lang/String;

    .line 60
    const-string v0, "AA=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->h:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v0, "./dd ibs=1 count=1 skip=16400 if=/dev/block/platform/msm_sdcc.1/by-name/misc 2> /dev/null|./base64"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->e:Ljava/lang/String;

    .line 64
    const-string v0, "|./base64 -d|./dd obs=1 count=1 seek=16400 of=/dev/block/platform/msm_sdcc.1/by-name/misc"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->f:Ljava/lang/String;

    .line 65
    const-string v0, "AA=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->g:Ljava/lang/String;

    .line 66
    const-string v0, "AQ=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->h:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v0, "./dd ibs=1 count=1 skip=548 if=/dev/block/platform/dw_mmc.0/by-name/param 2> /dev/null|./base64"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->e:Ljava/lang/String;

    .line 70
    const-string v0, "|./base64 -d|./dd obs=1 count=1 seek=548 of=/dev/block/platform/dw_mmc.0/by-name/param"

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->f:Ljava/lang/String;

    .line 71
    const-string v0, "AA=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->g:Ljava/lang/String;

    .line 72
    const-string v0, "AQ=="

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->h:Ljava/lang/String;

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/b;->values()[Lcom/bigeyes0x0/trickstermod/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->n:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_19

    :goto_1
    :try_start_1
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->p:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_18

    :goto_2
    :try_start_2
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->r:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_17

    :goto_3
    :try_start_3
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->o:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_16

    :goto_4
    :try_start_4
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->m:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_15

    :goto_5
    :try_start_5
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->q:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_14

    :goto_6
    :try_start_6
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->k:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_13

    :goto_7
    :try_start_7
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->j:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_12

    :goto_8
    :try_start_8
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->h:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_11

    :goto_9
    :try_start_9
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->v:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_10

    :goto_a
    :try_start_a
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->u:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_f

    :goto_b
    :try_start_b
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->x:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_e

    :goto_c
    :try_start_c
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->w:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_d

    :goto_d
    :try_start_d
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->f:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_c

    :goto_e
    :try_start_e
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->l:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_b

    :goto_f
    :try_start_f
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->y:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_a

    :goto_10
    :try_start_10
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->b:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_9

    :goto_11
    :try_start_11
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->d:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_8

    :goto_12
    :try_start_12
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->i:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_7

    :goto_13
    :try_start_13
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->t:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_6

    :goto_14
    :try_start_14
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->g:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_5

    :goto_15
    :try_start_15
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->a:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_4

    :goto_16
    :try_start_16
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->c:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_3

    :goto_17
    :try_start_17
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->z:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_2

    :goto_18
    :try_start_18
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->e:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1

    :goto_19
    :try_start_19
    sget-object v1, Lcom/bigeyes0x0/trickstermod/b;->s:Lcom/bigeyes0x0/trickstermod/b;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/b;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_0

    :goto_1a
    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->k:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1a

    :catch_1
    move-exception v1

    goto :goto_19

    :catch_2
    move-exception v1

    goto :goto_18

    :catch_3
    move-exception v1

    goto :goto_17

    :catch_4
    move-exception v1

    goto :goto_16

    :catch_5
    move-exception v1

    goto :goto_15

    :catch_6
    move-exception v1

    goto :goto_14

    :catch_7
    move-exception v1

    goto :goto_13

    :catch_8
    move-exception v1

    goto :goto_12

    :catch_9
    move-exception v1

    goto :goto_11

    :catch_a
    move-exception v1

    goto :goto_10

    :catch_b
    move-exception v1

    goto/16 :goto_f

    :catch_c
    move-exception v1

    goto/16 :goto_e

    :catch_d
    move-exception v1

    goto/16 :goto_d

    :catch_e
    move-exception v1

    goto/16 :goto_c

    :catch_f
    move-exception v1

    goto/16 :goto_b

    :catch_10
    move-exception v1

    goto/16 :goto_a

    :catch_11
    move-exception v1

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_8

    :catch_13
    move-exception v1

    goto/16 :goto_7

    :catch_14
    move-exception v1

    goto/16 :goto_6

    :catch_15
    move-exception v1

    goto/16 :goto_5

    :catch_16
    move-exception v1

    goto/16 :goto_4

    :catch_17
    move-exception v1

    goto/16 :goto_3

    :catch_18
    move-exception v1

    goto/16 :goto_2

    :catch_19
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 81
    invoke-static {v0, v5, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iput v3, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    .line 90
    :goto_0
    return-object v5

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iput v4, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    const v1, 0x7f030011

    .line 95
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    .line 99
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->setOrientation(I)V

    .line 100
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->setPadding(IIII)V

    .line 101
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs b([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    aget-object v0, p1, v7

    const-string v2, "locked_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->g:Ljava/lang/String;

    .line 158
    iput v4, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    .line 163
    :goto_0
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "echo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 163
    invoke-static {v2, v3, v4}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v2, "result"

    .line 167
    const-string v3, "1 bytes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08004d

    .line 165
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    return-object v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->h:Ljava/lang/String;

    .line 161
    iput v7, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    goto :goto_0

    .line 168
    :cond_2
    const v0, 0x7f08004e

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v1, "locked_state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->c([Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 112
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 113
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 115
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    const-string v1, "dialog_premium_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->d:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    const-string v1, "locked_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    .line 120
    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v0, "locked_state"

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->j:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v3, "dialog_premium_status"

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    new-instance v0, Lcom/bigeyes0x0/trickstermod/SavedState;

    invoke-direct {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 132
    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPostExecute(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->d:Landroid/app/AlertDialog;

    .line 177
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 179
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->i:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/BootloaderModder;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    goto :goto_0
.end method
