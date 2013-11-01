.class public Lsg/ruqqq/XThemeEngine/theme/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "XThemeEngine/Util"

    sput-object v0, Lsg/ruqqq/XThemeEngine/theme/Util;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParsePackageRedirections(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    .locals 9
    .parameter "xrp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, packageRedirectionArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 27
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 28
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 29
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package-redirections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v2, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;

    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "name"

    invoke-interface {p0, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "resource"

    invoke-interface {p0, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "minSdkVersion"

    const/4 v7, 0x0

    invoke-interface {p0, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    .local v2, pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    const-string v3, "deviceManufacturer"

    invoke-interface {p0, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 33
    const-string v3, "deviceModel"

    invoke-interface {p0, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->setDeviceModel(Ljava/lang/String;)V

    .line 34
    const-string v3, "deviceId"

    invoke-interface {p0, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;->setDeviceId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v2           #pr:Lsg/ruqqq/XThemeEngine/theme/PackageRedirection;
    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 41
    :cond_1
    return-object v1
.end method

.method public static ParseRedirections(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    .locals 9
    .parameter "packageName"
    .parameter "themePackageName"
    .parameter "r"
    .parameter "xrp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, redirectionItemArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 49
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 50
    .local v0, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_4

    .line 51
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, origRes:Ljava/lang/String;
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, repRes:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    :cond_0
    sget-object v6, Lsg/ruqqq/XThemeEngine/theme/Util;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid origRes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or repRes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    new-instance v5, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;

    invoke-direct {v5, v1, v3, p0, p1}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v5, ri:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    invoke-virtual {v5}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;->getReplacementPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, resId:I
    if-nez v4, :cond_2

    .line 67
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 68
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1           #origRes:Ljava/lang/String;
    .end local v3           #repRes:Ljava/lang/String;
    .end local v4           #resId:I
    .end local v5           #ri:Lsg/ruqqq/XThemeEngine/theme/RedirectionItem;
    :cond_3
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_4
    return-object v2
.end method
