.class public Lde/robv/android/xposed/installer/repo/RepoParser;
.super Ljava/lang/Object;
.source "RepoParser.java"


# static fields
.field protected static final NS:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "XposedRepoParser"


# instance fields
.field protected final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 19
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 20
    iget-object v1, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private parseTimestamp(Ljava/lang/String;)J
    .locals 6
    .parameter "attName"

    .prologue
    const-wide/16 v2, -0x1

    .line 98
    iget-object v4, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v5, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    invoke-interface {v4, v5, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-wide v2

    .line 102
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method protected leave(I)V
    .locals 3
    .parameter "targetDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "XposedRepoParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "leaving up to level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 165
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method protected logError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 168
    const-string v0, "XposedRepoParser"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public parse()Lde/robv/android/xposed/installer/repo/Repository;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 25
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/repo/RepoParser;->readRepo()Lde/robv/android/xposed/installer/repo/Repository;

    move-result-object v0

    return-object v0
.end method

.method protected readModule(Lde/robv/android/xposed/installer/repo/Repository;)Lde/robv/android/xposed/installer/repo/Module;
    .locals 10
    .parameter "repository"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 49
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v8, "module"

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 52
    .local v2, startDepth:I
    new-instance v1, Lde/robv/android/xposed/installer/repo/Module;

    invoke-direct {v1, p1}, Lde/robv/android/xposed/installer/repo/Module;-><init>(Lde/robv/android/xposed/installer/repo/Repository;)V

    .line 53
    .local v1, module:Lde/robv/android/xposed/installer/repo/Module;
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v8, "package"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    .line 54
    iget-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 55
    const-string v6, "no package name defined"

    invoke-virtual {p0, v6}, Lde/robv/android/xposed/installer/repo/RepoParser;->logError(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/repo/RepoParser;->leave(I)V

    move-object v1, v5

    .line 94
    .end local v1           #module:Lde/robv/android/xposed/installer/repo/Module;
    :cond_0
    :goto_0
    return-object v1

    .line 60
    .restart local v1       #module:Lde/robv/android/xposed/installer/repo/Module;
    :cond_1
    const-string v6, "created"

    invoke-direct {p0, v6}, Lde/robv/android/xposed/installer/repo/RepoParser;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lde/robv/android/xposed/installer/repo/Module;->created:J

    .line 61
    const-string v6, "updated"

    invoke-direct {p0, v6}, Lde/robv/android/xposed/installer/repo/RepoParser;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lde/robv/android/xposed/installer/repo/Module;->updated:J

    .line 63
    :cond_2
    :goto_1
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 89
    iget-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 90
    const-string v6, "packages need at least a name"

    invoke-virtual {p0, v6}, Lde/robv/android/xposed/installer/repo/RepoParser;->logError(Ljava/lang/String;)V

    move-object v1, v5

    .line 91
    goto :goto_0

    .line 64
    :cond_3
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, tagName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->name:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_4
    const-string v6, "author"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 68
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->author:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_5
    const-string v6, "contact"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 70
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->contact:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_6
    const-string v6, "summary"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 72
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->summary:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_7
    const-string v6, "description"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 74
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v8, "html"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, isHtml:Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 76
    const/4 v6, 0x1

    iput-boolean v6, v1, Lde/robv/android/xposed/installer/repo/Module;->descriptionIsHtml:Z

    .line 77
    :cond_8
    iget-object v6, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->description:Ljava/lang/String;

    goto/16 :goto_1

    .line 78
    .end local v0           #isHtml:Ljava/lang/String;
    :cond_9
    const-string v6, "screenshot"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 79
    iget-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->screenshots:Ljava/util/List;

    iget-object v7, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 80
    :cond_a
    const-string v6, "version"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 81
    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/repo/RepoParser;->readModuleVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v4

    .line 82
    .local v4, version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    if-eqz v4, :cond_2

    .line 83
    iget-object v6, v1, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 85
    .end local v4           #version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    :cond_b
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/repo/RepoParser;->skip()V

    goto/16 :goto_1
.end method

.method protected readModuleVersion(Lde/robv/android/xposed/installer/repo/Module;)Lde/robv/android/xposed/installer/repo/ModuleVersion;
    .locals 9
    .parameter "module"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 109
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v6, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v7, "version"

    invoke-interface {v5, v8, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 111
    .local v2, startDepth:I
    new-instance v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;

    invoke-direct {v4, p1}, Lde/robv/android/xposed/installer/repo/ModuleVersion;-><init>(Lde/robv/android/xposed/installer/repo/Module;)V

    .line 113
    .local v4, version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    :goto_0
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 141
    .end local v4           #version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    :goto_1
    return-object v4

    .line 114
    .restart local v4       #version:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    :cond_0
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, tagName:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->name:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    const-string v5, "code"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    :try_start_0
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->code:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lde/robv/android/xposed/installer/repo/RepoParser;->logError(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v2}, Lde/robv/android/xposed/installer/repo/RepoParser;->leave(I)V

    .line 123
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "branch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->branch:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_3
    const-string v5, "download"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->downloadLink:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_4
    const-string v5, "md5sum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->md5sum:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_5
    const-string v5, "changelog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 132
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v6, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v7, "html"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, isHtml:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    const/4 v5, 0x1

    iput-boolean v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelogIsHtml:Z

    .line 135
    :cond_6
    iget-object v5, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelog:Ljava/lang/String;

    goto/16 :goto_0

    .line 137
    .end local v0           #isHtml:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/repo/RepoParser;->skip()V

    goto/16 :goto_0
.end method

.method protected readRepo()Lde/robv/android/xposed/installer/repo/Repository;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 29
    iget-object v3, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lde/robv/android/xposed/installer/repo/RepoParser;->NS:Ljava/lang/String;

    const-string v5, "repository"

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lde/robv/android/xposed/installer/repo/Repository;

    invoke-direct {v1}, Lde/robv/android/xposed/installer/repo/Repository;-><init>()V

    .line 32
    .local v1, repository:Lde/robv/android/xposed/installer/repo/Repository;
    :cond_0
    :goto_0
    iget-object v3, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 45
    return-object v1

    .line 33
    :cond_1
    iget-object v3, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    iget-object v3, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lde/robv/android/xposed/installer/repo/Repository;->name:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/repo/RepoParser;->readModule(Lde/robv/android/xposed/installer/repo/Repository;)Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v0

    .line 38
    .local v0, module:Lde/robv/android/xposed/installer/repo/Module;
    if-eqz v0, :cond_0

    .line 39
    iget-object v3, v1, Lde/robv/android/xposed/installer/repo/Repository;->modules:Ljava/util/Map;

    iget-object v4, v0, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v0           #module:Lde/robv/android/xposed/installer/repo/Module;
    :cond_3
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/repo/RepoParser;->skip()V

    goto :goto_0
.end method

.method protected skip()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 145
    iget-object v2, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v5, v3, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "XposedRepoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "skipping unknown/erronous tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x1

    .line 148
    .local v1, level:I
    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    .line 156
    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lde/robv/android/xposed/installer/repo/RepoParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 150
    .local v0, eventType:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 152
    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
