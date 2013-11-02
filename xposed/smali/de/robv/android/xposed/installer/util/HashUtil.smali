.class public Lde/robv/android/xposed/installer/util/HashUtil;
.super Ljava/lang/Object;
.source "HashUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 33
    .local v3, md:Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    .local v2, is:Ljava/io/InputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 35
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 36
    .local v5, read:I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 41
    .local v4, messageDigest:[B
    invoke-static {v4}, Lde/robv/android/xposed/installer/util/HashUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 37
    .end local v4           #messageDigest:[B
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v5           #read:I
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static final hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"
    .parameter "algorithm"

    .prologue
    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 14
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 15
    .local v2, messageDigest:[B
    invoke-static {v2}, Lde/robv/android/xposed/installer/util/HashUtil;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 16
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #messageDigest:[B
    :catch_0
    move-exception v0

    .line 17
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lde/robv/android/xposed/installer/util/HashUtil;->hash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 22
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lde/robv/android/xposed/installer/util/HashUtil;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final sha1(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lde/robv/android/xposed/installer/util/HashUtil;->hash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 26
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lde/robv/android/xposed/installer/util/HashUtil;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 58
    :cond_0
    aget-byte v0, p0, v3

    .line 59
    .local v0, b:B
    and-int/lit16 v2, v0, 0xff

    .line 60
    .local v2, unsignedB:I
    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 61
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
