.class public Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
.super Ljava/lang/Object;
.source "RedirectionItem.java"


# instance fields
.field originalName:Ljava/lang/String;

.field originalPackage:Ljava/lang/String;

.field originalType:Ljava/lang/String;

.field replacementIsFromAnotherPackage:Z

.field replacementName:Ljava/lang/String;

.field replacementPackage:Ljava/lang/String;

.field replacementType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "resId"
    .parameter "packageName"
    .parameter "themePackageName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, name_split:[Ljava/lang/String;
    iput-object p3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalPackage:Ljava/lang/String;

    .line 22
    aget-object v3, v0, v5

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalType:Ljava/lang/String;

    .line 23
    aget-object v3, v0, v6

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalName:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementPackage:Ljava/lang/String;

    .line 26
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, res_split:[Ljava/lang/String;
    aget-object v3, v1, v5

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    iput-boolean v6, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementIsFromAnotherPackage:Z

    .line 29
    aget-object v3, v1, v5

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, res_split_list:[Ljava/lang/String;
    aget-object v3, v2, v5

    const-string v4, "@"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementPackage:Ljava/lang/String;

    .line 31
    aget-object v3, v2, v6

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementType:Ljava/lang/String;

    .line 32
    aget-object v3, v1, v6

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementName:Ljava/lang/String;

    .line 37
    .end local v2           #res_split_list:[Ljava/lang/String;
    :goto_0
    return-void

    .line 34
    :cond_0
    aget-object v3, v1, v5

    const-string v4, "@"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementType:Ljava/lang/String;

    .line 35
    aget-object v3, v1, v6

    iput-object v3, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getOriginalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalType:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementType:Ljava/lang/String;

    return-object v0
.end method

.method public isReplacementIsFromAnotherPackage()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementIsFromAnotherPackage:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedirectionItem{originalPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->originalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementIsFromAnotherPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->replacementIsFromAnotherPackage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
