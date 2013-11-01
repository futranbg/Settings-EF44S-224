.class public Leu/chainfire/supersu/Permission;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v4, "android.permission.ACCESS_SUPERUSER"

    invoke-virtual {v0, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "%s: %s found by PackageManager"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "android.permission.ACCESS_SUPERUSER"

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_2
    if-nez v5, :cond_c

    :try_start_2
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    long-to-int v0, v7

    new-array v0, v0, [B

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    const-string v4, "android.content.res.XmlBlock"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :try_start_3
    const-string v0, "newParser"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v7, "close"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v5, v4

    move-object v6, v0

    move-object v4, v3

    :goto_3
    if-eqz v6, :cond_b

    :try_start_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    move v3, v1

    :cond_3
    :goto_4
    :try_start_5
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_4

    if-ne v0, v12, :cond_6

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v8

    if-gt v8, v7, :cond_6

    :cond_4
    move v0, v3

    :goto_5
    :try_start_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_6
    if-eqz v0, :cond_a

    const-string v3, "%s: %s found by XmlParser"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string v1, "android.permission.ACCESS_SUPERUSER"

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object v5, v3

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v4, v3

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_3

    :cond_6
    if-eq v0, v12, :cond_3

    const/4 v8, 0x4

    if-eq v0, v8, :cond_3

    :try_start_8
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v8, "uses-permission"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v8

    move v0, v1

    :goto_8
    if-lt v0, v8, :cond_8

    :goto_9
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_7
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_3

    if-ne v8, v12, :cond_7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-gt v8, v0, :cond_7

    goto :goto_4

    :cond_8
    invoke-interface {v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.permission.ACCESS_SUPERUSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result v9

    if-eqz v9, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_3
    move-exception v0

    move v3, v1

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_6

    :cond_a
    const-string v3, "%s: %s not found"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string v1, "android.permission.ACCESS_SUPERUSER"

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v3

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :cond_b
    move v0, v1

    goto/16 :goto_5

    :cond_c
    move-object v4, v3

    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_3

    :cond_d
    move-object v0, v3

    goto/16 :goto_1
.end method
