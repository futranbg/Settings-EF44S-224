.class public Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;
.super Lcom/bigeyes0x0/trickstermod/tool/m;
.source "DeviceStatus.java"

# interfaces
.implements Lcom/bigeyes0x0/trickstermod/tool/a/d;


# static fields
.field private static final d:Ljava/text/DecimalFormat;


# instance fields
.field private e:Landroid/os/Bundle;

.field private f:Landroid/util/SparseArray;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->d:Ljava/text/DecimalFormat;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a()V

    .line 57
    return-void
.end method

.method private a(F)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->d:Ljava/text/DecimalFormat;

    const/high16 v1, 0x4110

    mul-float/2addr v1, p1

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    const/high16 v2, 0x4200

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f060037

    .line 213
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 214
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    move-object v1, v0

    .line 233
    const v0, 0x7f06003f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v0, 0x7f060040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v0, 0x7f060042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v0, 0x7f060041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 242
    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 243
    invoke-virtual {v0, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 244
    return-void
.end method

.method private getMaxTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "212\u00b0F"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "100\u00b0C"

    goto :goto_0
.end method

.method private getMinTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "32\u00b0F"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0\u00b0C"

    goto :goto_0
.end method

.method private getTempUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080007

    .line 76
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const v0, 0x7f080006

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    const v6, 0x7f06002f

    const v2, 0x7f06002e

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-virtual {p0, v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060035

    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060036

    const v2, 0x7f060036

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060037

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060034

    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->setOrientation(I)V

    .line 97
    invoke-virtual {p0, v3, v5, v3, v5}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->setPadding(IIII)V

    .line 99
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    const v2, 0x7f080058

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->g:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 105
    const-string v0, "cpu_usage"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 106
    if-le v5, v10, :cond_0

    .line 107
    const v1, 0x7f06002e

    .line 108
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080054

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string v3, "0%"

    const-string v4, "100%"

    const/16 v6, 0x64

    move-object v0, p0

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 112
    :cond_0
    const-string v0, "mem_total"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 113
    const-string v0, "mem_used"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 114
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 115
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->d:Ljava/text/DecimalFormat;

    int-to-float v1, v6

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 116
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->d:Ljava/text/DecimalFormat;

    int-to-float v1, v5

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 117
    const v1, 0x7f06002f

    .line 118
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080055

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v7

    aput-object v4, v8, v11

    invoke-virtual {v2, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v3, "0MB"

    move-object v0, p0

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 122
    :cond_1
    const-string v0, "max_freq"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 123
    if-le v6, v10, :cond_2

    .line 124
    const-string v0, "core_speeds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    .line 125
    const-string v0, "num_of_cores"

    invoke-virtual {p1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move v1, v7

    .line 126
    :goto_0
    if-lt v1, v9, :cond_9

    .line 146
    :cond_2
    const-string v0, "gpu_freq"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    const v1, 0x7f060034

    .line 149
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080053

    new-array v4, v11, [Ljava/lang/Object;

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    const-string v3, "0"

    aget v4, v0, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aget v5, v0, v7

    aget v6, v0, v11

    move-object v0, p0

    .line 148
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 153
    :cond_3
    const-string v0, "temperature"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    if-le v0, v10, :cond_4

    .line 155
    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->g:[Ljava/lang/String;

    .line 157
    const-string v2, "health"

    .line 156
    invoke-virtual {p1, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aget-object v2, v1, v2

    .line 159
    const v1, 0x7f060035

    .line 160
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080057

    new-array v5, v13, [Ljava/lang/Object;

    .line 161
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v11

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getTempUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v12

    .line 160
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getMinTemp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getMaxTemp()Ljava/lang/String;

    move-result-object v4

    float-to-int v5, v0

    const/16 v6, 0x64

    move-object v0, p0

    .line 158
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 165
    :cond_4
    const-string v0, "cpu_temp"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 166
    if-le v0, v10, :cond_5

    .line 168
    const v1, 0x7f060036

    .line 169
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080059

    new-array v4, v12, [Ljava/lang/Object;

    .line 170
    int-to-float v5, v0

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getTempUnit()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 169
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getMinTemp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getMaxTemp()Ljava/lang/String;

    move-result-object v4

    div-int/lit8 v5, v0, 0xa

    const/16 v6, 0x64

    move-object v0, p0

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 174
    :cond_5
    const-string v0, "core_vol"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 175
    if-lez v0, :cond_6

    .line 176
    const v1, 0x7f060043

    const v2, 0x7f08005a

    invoke-direct {p0, v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(III)V

    .line 178
    :cond_6
    const-string v0, "iva_vol"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    if-lez v0, :cond_7

    .line 180
    const v1, 0x7f060044

    const v2, 0x7f08005b

    invoke-direct {p0, v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(III)V

    .line 182
    :cond_7
    const-string v0, "mpu_vol"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 183
    if-lez v0, :cond_8

    .line 184
    const v1, 0x7f060045

    const v2, 0x7f08005c

    invoke-direct {p0, v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(III)V

    .line 186
    :cond_8
    return-void

    .line 127
    :cond_9
    aget v0, v8, v1

    if-nez v0, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080052

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 131
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    .line 132
    const-string v4, ""

    aput-object v4, v3, v12

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080056

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aget v5, v8, v1

    move-object v0, p0

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 126
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080052

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 139
    aget v4, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "MHz"

    aput-object v4, v3, v12

    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    const v3, 0x7f080056

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aget v5, v8, v1

    move-object v0, p0

    .line 136
    invoke-direct/range {v0 .. v6}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 190
    instance-of v0, p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    if-eqz v0, :cond_1

    .line 191
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 192
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/m;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 194
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    .line 195
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_1
    return-void

    .line 195
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    .line 197
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 197
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 198
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->f:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lcom/bigeyes0x0/trickstermod/tool/m;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/m;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/bigeyes0x0/trickstermod/SavedState;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/DeviceStatus;->e:Landroid/os/Bundle;

    invoke-direct {v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 209
    return-object v1
.end method
