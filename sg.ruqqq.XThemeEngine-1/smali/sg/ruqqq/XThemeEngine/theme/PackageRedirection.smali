.class public Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
.super Ljava/lang/Object;
.source "PackageRedirection.java"


# instance fields
.field private deviceId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceManufacturer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private minSdkVersion:I

.field private name:Ljava/lang/String;

.field private resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "resId"
    .parameter "minSdkVersion"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->name:Ljava/lang/String;

    .line 15
    invoke-direct {p0, p2}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->resStringIdToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->resId:I

    .line 16
    iput p3, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->minSdkVersion:I

    .line 17
    return-void
.end method

.method private resStringIdToInt(Ljava/lang/String;)I
    .locals 2
    .parameter "resId"

    .prologue
    .line 20
    const-string v0, "@"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDeviceId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceManufacturer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceModel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceModel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->minSdkVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->resId:I

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceId"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, items:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceId:Ljava/util/ArrayList;

    .line 75
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 76
    .local v2, item:Ljava/lang/String;
    iget-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceId:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #len$:I
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceId:Ljava/util/ArrayList;

    .line 81
    :cond_1
    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceManufacturer"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, items:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceManufacturer:Ljava/util/ArrayList;

    .line 43
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 44
    .local v2, item:Ljava/lang/String;
    iget-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceManufacturer:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #len$:I
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceManufacturer:Ljava/util/ArrayList;

    .line 49
    :cond_1
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceModel"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, items:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceModel:Ljava/util/ArrayList;

    .line 59
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 60
    .local v2, item:Ljava/lang/String;
    iget-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceModel:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #len$:I
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->deviceModel:Ljava/util/ArrayList;

    .line 65
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageRedirection{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
