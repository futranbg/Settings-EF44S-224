.class public final Lcom/bigeyes0x0/trickstermod/k;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field private static final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->a:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->c:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->d:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->e:Ljava/util/regex/Pattern;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigeyes0x0/trickstermod/k;->f:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1ft
        0x8bt
    .end array-data
.end method

.method public static a(I)I
    .locals 13
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v12, 0x1

    .line 134
    if-ge p0, v5, :cond_1

    move v0, v5

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    if-eq p0, v5, :cond_0

    .line 140
    if-ne p0, v0, :cond_2

    .line 141
    const/4 v0, 0x5

    goto :goto_0

    .line 144
    :cond_2
    int-to-double v0, p0

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    int-to-double v7, p0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    add-double/2addr v2, v7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    .line 145
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 146
    rem-int/lit8 v2, v0, 0x6

    sparse-switch v2, :sswitch_data_0

    .line 154
    div-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    .line 156
    :goto_1
    rem-int/lit8 v2, v1, 0x6

    sparse-switch v2, :sswitch_data_1

    .line 164
    div-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    .line 166
    :goto_2
    add-int/lit8 v2, v0, 0x1f

    shr-int/lit8 v2, v2, 0x5

    .line 167
    new-array v8, v2, [I

    move v7, v6

    .line 168
    :goto_3
    if-lt v7, v1, :cond_3

    move v0, v6

    move v1, v5

    .line 191
    :goto_4
    if-lt v1, p0, :cond_7

    .line 194
    add-int/lit8 v2, v0, -0x1

    .line 195
    aget v0, v8, v2

    xor-int/lit8 v3, v0, -0x1

    .line 197
    const/16 v0, 0x1f

    :goto_5
    if-ge v1, p0, :cond_8

    .line 200
    shl-int/lit8 v1, v2, 0x5

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 148
    :sswitch_0
    div-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 149
    goto :goto_1

    .line 151
    :sswitch_1
    div-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 152
    goto :goto_1

    .line 158
    :sswitch_2
    div-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    .line 159
    goto :goto_2

    .line 161
    :sswitch_3
    div-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 162
    goto :goto_2

    .line 169
    :cond_3
    shr-int/lit8 v2, v7, 0x5

    aget v2, v8, v2

    and-int/lit8 v3, v7, 0x1f

    shl-int v3, v12, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    .line 171
    and-int/lit8 v2, v7, 0x1

    if-ne v2, v12, :cond_5

    .line 172
    mul-int/lit8 v2, v7, 0x3

    add-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v7

    add-int/lit8 v4, v2, 0x4

    .line 173
    mul-int/lit8 v2, v7, 0x4

    add-int/lit8 v3, v2, 0x5

    .line 174
    mul-int/lit8 v2, v7, 0x2

    add-int/lit8 v2, v2, 0x3

    .line 180
    :goto_6
    if-lt v4, v0, :cond_6

    .line 168
    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    .line 176
    :cond_5
    mul-int/lit8 v2, v7, 0x3

    add-int/lit8 v2, v2, 0xa

    mul-int/2addr v2, v7

    add-int/lit8 v4, v2, 0x7

    .line 177
    mul-int/lit8 v2, v7, 0x2

    add-int/lit8 v3, v2, 0x3

    .line 178
    mul-int/lit8 v2, v7, 0x4

    add-int/lit8 v2, v2, 0x7

    goto :goto_6

    .line 181
    :cond_6
    shr-int/lit8 v9, v4, 0x5

    aget v10, v8, v9

    and-int/lit8 v11, v4, 0x1f

    shl-int v11, v12, v11

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 182
    add-int/2addr v4, v3

    .line 183
    if-ge v4, v0, :cond_4

    .line 186
    shr-int/lit8 v9, v4, 0x5

    aget v10, v8, v9

    and-int/lit8 v11, v4, 0x1f

    shl-int v11, v12, v11

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 180
    add-int/2addr v4, v2

    goto :goto_6

    .line 192
    :cond_7
    aget v2, v8, v0

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/bigeyes0x0/trickstermod/k;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 198
    :cond_8
    shr-int v4, v3, v0

    and-int/lit8 v4, v4, 0x1

    sub-int/2addr v1, v4

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 156
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 292
    move v0, v1

    .line 293
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 299
    :cond_0
    return v0

    .line 294
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 4
    .parameter

    .prologue
    .line 99
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 100
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 106
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 113
    :goto_0
    return-wide v0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 111
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 109
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 350
    new-instance v0, Lcom/bigeyes0x0/trickstermod/m;

    invoke-direct {v0, p0, p1}, Lcom/bigeyes0x0/trickstermod/m;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 361
    sget-object v1, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 362
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    const v3, 0x7f080048

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v3, 0x7f080020

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 374
    invoke-virtual {v1, v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Landroid/app/AlertDialog;)V

    .line 375
    return-object v0

    .line 368
    :cond_0
    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 369
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 370
    const v3, 0x7f080024

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const v3, 0x7f08001f

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 401
    return-object p0
.end method

.method public static a(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 249
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 251
    :goto_0
    return-object p1

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 51
    aget-char v0, v4, v3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    aput-char v0, v4, v3

    move v0, v1

    move v2, v3

    .line 52
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_1

    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 53
    :cond_1
    aget-char v5, v4, v0

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v1

    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_3
    if-eqz v2, :cond_2

    .line 56
    aget-char v2, v4, v0

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v3

    .line 57
    goto :goto_2
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    const-class v1, Lcom/bigeyes0x0/trickstermod/k;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Warning execute commands on main thread\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    :cond_0
    if-eqz p0, :cond_1

    .line 321
    :try_start_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 322
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cd \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 323
    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {p2, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 327
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 329
    new-instance v3, Lcom/bigeyes0x0/trickstermod/l;

    const/4 v4, 0x0

    if-nez p1, :cond_2

    const/16 v0, 0x1388

    :goto_0
    invoke-direct {v3, v4, v0, p2, v2}, Lcom/bigeyes0x0/trickstermod/l;-><init>(II[Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 337
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stericson/RootTools/a;->b(Z)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/a;)Lcom/stericson/RootTools/c/a;

    .line 338
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 338
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 344
    :goto_1
    monitor-exit v1

    return-object v0

    .line 330
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error execute command\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 341
    :cond_3
    :try_start_8
    const-string v0, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 315
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 262
    const-string v0, "r"

    .line 261
    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 266
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    move-object p1, v0

    .line 269
    :goto_0
    return-object p1

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 267
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a([C)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 71
    array-length v0, p0

    new-array v1, v0, [C

    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    aget-char v2, p0, v0

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/bigeyes0x0/trickstermod/k;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(J)[J
    .locals 10
    .parameter

    .prologue
    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v2, p0, v2

    .line 82
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    .line 83
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 84
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 85
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 86
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 88
    const/4 v8, 0x4

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v4, v8, v0

    const/4 v0, 0x2

    aput-wide v6, v8, v0

    const/4 v0, 0x3

    aput-wide v2, v8, v0

    return-object v8
.end method

.method public static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    new-array v1, p1, [Ljava/lang/String;

    .line 282
    if-eqz p0, :cond_0

    .line 283
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 284
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 288
    :cond_0
    return-object v1

    .line 285
    :cond_1
    aget-object v3, p0, v0

    aput-object v3, v1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(I)I
    .locals 4
    .parameter

    .prologue
    const v3, 0x33333333

    const v2, 0xf0f0f0f

    .line 213
    ushr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int v0, p0, v0

    .line 214
    ushr-int/lit8 v1, v0, 0x2

    and-int/2addr v1, v3

    and-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 215
    shr-int/lit8 v1, v0, 0x4

    and-int/2addr v1, v2

    and-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 216
    const v1, 0x1010101

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 3
    .parameter

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 242
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [B

    .line 121
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 124
    sget-object v3, Lcom/bigeyes0x0/trickstermod/k;->f:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 126
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :goto_0
    return v0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 127
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 221
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 223
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 223
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 225
    const/16 v0, 0x1000

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 232
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 234
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 236
    :goto_1
    return-object v0

    .line 229
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 233
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v0, ""

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 256
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 382
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 391
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
