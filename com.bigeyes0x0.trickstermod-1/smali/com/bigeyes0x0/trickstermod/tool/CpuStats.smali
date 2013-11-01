.class public Lcom/bigeyes0x0/trickstermod/tool/CpuStats;
.super Lcom/bigeyes0x0/trickstermod/tool/j;
.source "CpuStats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final d:Lcom/bigeyes0x0/trickstermod/tool/c;


# instance fields
.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/bigeyes0x0/trickstermod/tool/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/c;-><init>(Lcom/bigeyes0x0/trickstermod/tool/c;)V

    sput-object v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d:Lcom/bigeyes0x0/trickstermod/tool/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/bigeyes0x0/trickstermod/tool/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->a()V

    .line 76
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-static {p1, p2}, Lcom/bigeyes0x0/trickstermod/k;->a(J)[J

    move-result-object v0

    .line 80
    aget-wide v1, v0, v6

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080064

    new-array v3, v9, [Ljava/lang/Object;

    aget-wide v4, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aget-wide v4, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 82
    aget-wide v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    aget-wide v1, v0, v6

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080065

    new-array v3, v5, [Ljava/lang/Object;

    aget-wide v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aget-wide v4, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 85
    aget-wide v4, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    aget-wide v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080066

    new-array v3, v5, [Ljava/lang/Object;

    aget-wide v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 88
    aget-wide v4, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aget-wide v4, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    aget-wide v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 150
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->g()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    array-length v0, v1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d:Lcom/bigeyes0x0/trickstermod/tool/c;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->b:Lcom/bigeyes0x0/trickstermod/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/j;->b(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-object p1

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    sget-object v3, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 156
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const/4 v3, 0x2

    new-array v3, v3, [J

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 164
    array-length v0, v1

    .line 163
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d:Lcom/bigeyes0x0/trickstermod/tool/c;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 171
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 170
    sub-long v7, v1, v3

    .line 172
    const-string v0, "-1"

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 173
    aput-wide v7, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v1, v2

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 174
    const/4 v0, 0x1

    move v4, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 175
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v2, v9

    .line 177
    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    .line 179
    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v11, 0x0

    aput-wide v9, v0, v11

    const/4 v9, 0x1

    .line 180
    aput-wide v2, v0, v9

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 174
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 165
    :cond_3
    aget-object v3, v1, v0

    .line 166
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_4
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v9

    div-long/2addr v2, v7

    goto :goto_3

    .line 185
    :cond_5
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 186
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 188
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_6

    const-wide/16 v1, 0x0

    .line 190
    :goto_5
    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    const/4 v6, 0x1

    .line 191
    aput-wide v1, v8, v6

    .line 190
    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_4

    .line 188
    :cond_6
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v6

    .line 189
    div-long/2addr v1, v3

    goto :goto_5
.end method


# virtual methods
.method public varargs a([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    const-string v1, "-1"

    const/4 v5, 0x2

    new-array v5, v5, [J

    .line 99
    aput-wide v3, v5, v2

    const-wide/16 v2, 0x64

    aput-wide v2, v5, v11

    .line 98
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 117
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string v5, "-1"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    sget-object v5, Lcom/bigeyes0x0/trickstermod/k;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 107
    const-string v1, "0"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    array-length v3, v5

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    aget-object v4, v5, v1

    .line 109
    sget-object v6, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 110
    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    aget-object v4, v4, v11

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xa

    mul-long/2addr v7, v9

    .line 113
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->e:Landroid/widget/ImageButton;

    .line 125
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->j:Landroid/widget/CheckBox;

    .line 128
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->j:Landroid/widget/CheckBox;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/j;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->f:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->g:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->h:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->i:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p0, v3}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->setOrientation(I)V

    .line 140
    invoke-virtual {p0, v2, v4, v2, v4}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->setPadding(IIII)V

    .line 142
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->k:Landroid/os/Bundle;

    .line 234
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->g:Landroid/widget/TextView;

    .line 235
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    .line 234
    invoke-direct {p0, v1, v2}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->j:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    sget-object v2, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d:Lcom/bigeyes0x0/trickstermod/tool/c;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 288
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->i:Landroid/widget/TextView;

    if-lez v0, :cond_6

    .line 289
    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 254
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 256
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    .line 257
    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 258
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f08005f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MHz, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_4
    const/4 v6, 0x1

    aget-wide v6, v3, v6

    .line 267
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 269
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    const v8, 0x7f080063

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f08005f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 272
    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-direct {p0, v4, v5}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v4

    .line 269
    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 281
    const/4 v4, 0x0

    const v5, 0x1010078

    .line 280
    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 282
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 283
    long-to-int v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 284
    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 275
    const v9, 0x7f080063

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    const-string v11, "MHz"

    aput-object v11, v10, v0

    const/4 v0, 0x2

    .line 276
    invoke-direct {p0, v4, v5}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v0

    const/4 v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v0

    .line 274
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 289
    :cond_6
    const-string v0, ""

    goto/16 :goto_2
.end method

.method public varargs b([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, p2}, Lcom/bigeyes0x0/trickstermod/j;->b(Z)V

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d([Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d([Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    check-cast p1, Lcom/bigeyes0x0/trickstermod/SavedState;

    .line 209
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    invoke-virtual {p1}, Lcom/bigeyes0x0/trickstermod/SavedState;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->a(Landroid/os/Bundle;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->d([Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/bigeyes0x0/trickstermod/tool/j;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/bigeyes0x0/trickstermod/SavedState;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/CpuStats;->k:Landroid/os/Bundle;

    invoke-direct {v1, v0, v2}, Lcom/bigeyes0x0/trickstermod/SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 223
    return-object v1
.end method
