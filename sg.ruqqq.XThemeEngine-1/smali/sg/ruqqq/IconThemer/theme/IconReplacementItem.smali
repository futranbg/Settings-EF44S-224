.class public Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
.super Ljava/lang/Object;
.source "IconReplacementItem.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private activityName:Ljava/lang/String;

.field private component:Ljava/lang/String;

.field private noCustomIcon:Z

.field private origRes:I

.field private packageName:Ljava/lang/String;

.field private replacementRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "IconThemer/IconReplacementItem"

    sput-object v0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter "component"
    .parameter "replacementRes"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v5, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->noCustomIcon:Z

    .line 27
    iput-object p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->component:Ljava/lang/String;

    .line 28
    iput p2, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->replacementRes:I

    .line 32
    const-string v2, "ComponentInfo{"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, stripped:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, splitComponentInfo:[Ljava/lang/String;
    aget-object v2, v0, v6

    iput-object v2, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->packageName:Ljava/lang/String;

    .line 38
    array-length v2, v0

    if-le v2, v5, :cond_0

    .line 39
    aget-object v2, v0, v5

    iput-object v2, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->activityName:Ljava/lang/String;

    .line 42
    .end local v0           #splitComponentInfo:[Ljava/lang/String;
    :cond_0
    iput-boolean v6, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->noCustomIcon:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->noCustomIcon:Z

    .line 22
    iput-object p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->packageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->activityName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 94
    check-cast v0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;

    .line 96
    .local v0, that:Lsg/ruqqq/IconThemer/theme/IconReplacementItem;
    iget v3, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    iget v4, v0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigRes()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementRes()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->replacementRes:I

    return v0
.end method

.method public hasNoCustomIcon()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->noCustomIcon:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .parameter "activityName"

    .prologue
    .line 66
    iput-object p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->activityName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 50
    iput-object p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->component:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setOrigRes(I)V
    .locals 0
    .parameter "origRes"

    .prologue
    .line 82
    iput p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    .line 83
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 58
    iput-object p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->packageName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setReplacementRes(I)V
    .locals 0
    .parameter "replacementRes"

    .prologue
    .line 74
    iput p1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->replacementRes:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconReplacementItem{component=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->component:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->replacementRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg/ruqqq/IconThemer/theme/IconReplacementItem;->origRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
