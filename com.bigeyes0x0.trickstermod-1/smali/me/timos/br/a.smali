.class public Lme/timos/br/a;
.super Ljava/lang/Object;
.source "BR.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static a:Landroid/app/Application;

.field static b:Lme/timos/br/b/d;

.field static c:Lme/timos/br/b/c;

.field private static d:Lme/timos/br/e;

.field private static e:Lme/timos/br/a/b;

.field private static f:Lme/timos/br/a/c;

.field private static g:Landroid/net/Uri;

.field private static h:Ljava/io/File;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static synthetic y:[I

.field private static synthetic z:[I


# instance fields
.field private x:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 3
    .parameter

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    invoke-static {}, Lme/timos/br/a;->v()V

    .line 543
    sput-object p1, Lme/timos/br/a;->a:Landroid/app/Application;

    .line 544
    new-instance v0, Ljava/io/File;

    sget-object v1, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lme/timos/br/a;->h:Ljava/io/File;

    .line 545
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lme/timos/br/a;->x:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 546
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 547
    invoke-static {}, Lme/timos/br/a;->w()V

    .line 548
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 209
    sget-object v0, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    sget-object v1, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    if-ne v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 211
    const-string v1, "You can only use this method in BUFFER mode"

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lme/timos/br/a;->h:Ljava/io/File;

    const-string v2, "logfile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 215
    return-void
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 487
    sput p0, Lme/timos/br/a;->n:I

    .line 488
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2
    .parameter

    .prologue
    .line 443
    sget-object v0, Lme/timos/br/a;->a:Landroid/app/Application;

    if-nez v0, :cond_2

    .line 444
    if-nez p0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/NullPointerException;

    .line 446
    const-string v1, "You need to initialize BR with your Android Application object"

    .line 445
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 450
    const-string v1, "Wrong argument type, BR requires an Application object to init"

    .line 449
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    new-instance v0, Lme/timos/br/a;

    invoke-direct {v0, p0}, Lme/timos/br/a;-><init>(Landroid/app/Application;)V

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_2
    invoke-static {}, Lme/timos/br/a;->v()V

    .line 455
    invoke-static {}, Lme/timos/br/a;->w()V

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    sput-object p0, Lme/timos/br/a;->g:Landroid/net/Uri;

    .line 484
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    sput-object p0, Lme/timos/br/a;->i:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 365
    sget-object v0, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    sget-object v1, Lme/timos/br/a/c;->c:Lme/timos/br/a/c;

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Lme/timos/br/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/timos/br/b;-><init>(Ljava/lang/Throwable;Lme/timos/br/b;)V

    invoke-virtual {v0}, Lme/timos/br/b;->start()V

    .line 368
    :cond_0
    return-void
.end method

.method public static a(Lme/timos/br/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    sput-object p0, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    .line 496
    return-void
.end method

.method public static a(Lme/timos/br/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    sput-object p0, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    .line 504
    return-void
.end method

.method public static b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 218
    sget-object v0, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    sget-object v1, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    if-ne v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 220
    const-string v1, "You can only use this method in BUFFER mode"

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    invoke-interface {v0}, Lme/timos/br/b/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 223
    sget-object v1, Lme/timos/br/a;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    sget-object v1, Lme/timos/br/a;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 225
    sget-object v1, Lme/timos/br/a;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lme/timos/br/a;->h:Ljava/io/File;

    const-string v3, "logfile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/timos/br/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v3, "[ 20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 230
    if-eq v3, v4, :cond_2

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 234
    if-eq v3, v4, :cond_2

    .line 235
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 244
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0
    .parameter

    .prologue
    .line 507
    sput p0, Lme/timos/br/a;->v:I

    .line 508
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    sput-object p0, Lme/timos/br/a;->j:Ljava/lang/String;

    .line 480
    return-void
.end method

.method static c()V
    .locals 1

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 361
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 362
    return-void
.end method

.method public static c(I)V
    .locals 0
    .parameter

    .prologue
    .line 511
    sput p0, Lme/timos/br/a;->u:I

    .line 512
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    sput-object p0, Lme/timos/br/a;->k:Ljava/lang/String;

    .line 500
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lme/timos/br/a;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 372
    sget-object v0, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    const-string v1, "android_id"

    .line 372
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/timos/br/a;->l:Ljava/lang/String;

    .line 375
    :cond_0
    sget-object v0, Lme/timos/br/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static d(I)V
    .locals 0
    .parameter

    .prologue
    .line 515
    sput p0, Lme/timos/br/a;->q:I

    .line 516
    return-void
.end method

.method static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    sget-object v0, Lme/timos/br/a;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    :try_start_0
    sget-object v0, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 382
    sget-object v1, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 382
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 381
    sput-object v0, Lme/timos/br/a;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    sget-object v0, Lme/timos/br/a;->m:Ljava/lang/String;

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    const-string v1, "Cannot get version"

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(I)V
    .locals 0
    .parameter

    .prologue
    .line 519
    sput p0, Lme/timos/br/a;->r:I

    .line 520
    return-void
.end method

.method static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lme/timos/br/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static f(I)V
    .locals 0
    .parameter

    .prologue
    .line 523
    sput p0, Lme/timos/br/a;->s:I

    .line 524
    return-void
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lme/timos/br/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static g(I)V
    .locals 0
    .parameter

    .prologue
    .line 527
    sput p0, Lme/timos/br/a;->w:I

    .line 528
    return-void
.end method

.method static h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lme/timos/br/a;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public static h(I)V
    .locals 0
    .parameter

    .prologue
    .line 531
    sput p0, Lme/timos/br/a;->t:I

    .line 533
    return-void
.end method

.method static i()Lme/timos/br/a/b;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    return-object v0
.end method

.method public static i(I)V
    .locals 0
    .parameter

    .prologue
    .line 536
    sput p0, Lme/timos/br/a;->p:I

    .line 537
    return-void
.end method

.method static j()Lme/timos/br/a/c;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    return-object v0
.end method

.method static k()I
    .locals 1

    .prologue
    .line 411
    sget v0, Lme/timos/br/a;->v:I

    return v0
.end method

.method static l()I
    .locals 1

    .prologue
    .line 415
    sget v0, Lme/timos/br/a;->u:I

    return v0
.end method

.method static m()I
    .locals 1

    .prologue
    .line 419
    sget v0, Lme/timos/br/a;->q:I

    return v0
.end method

.method static n()I
    .locals 1

    .prologue
    .line 423
    sget v0, Lme/timos/br/a;->r:I

    return v0
.end method

.method static o()I
    .locals 1

    .prologue
    .line 431
    sget v0, Lme/timos/br/a;->w:I

    return v0
.end method

.method static p()I
    .locals 1

    .prologue
    .line 435
    sget v0, Lme/timos/br/a;->t:I

    return v0
.end method

.method static q()I
    .locals 1

    .prologue
    .line 439
    sget v0, Lme/timos/br/a;->p:I

    return v0
.end method

.method static synthetic r()Ljava/io/File;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lme/timos/br/a;->h:Ljava/io/File;

    return-object v0
.end method

.method static synthetic s()Lme/timos/br/e;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lme/timos/br/a;->d:Lme/timos/br/e;

    return-object v0
.end method

.method static synthetic t()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lme/timos/br/a;->y:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lme/timos/br/a/b;->values()[Lme/timos/br/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lme/timos/br/a/b;->b:Lme/timos/br/a/b;

    invoke-virtual {v1}, Lme/timos/br/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    invoke-virtual {v1}, Lme/timos/br/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lme/timos/br/a;->y:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic u()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lme/timos/br/a;->z:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lme/timos/br/a/c;->values()[Lme/timos/br/a/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lme/timos/br/a/c;->a:Lme/timos/br/a/c;

    invoke-virtual {v1}, Lme/timos/br/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lme/timos/br/a/c;->b:Lme/timos/br/a/c;

    invoke-virtual {v1}, Lme/timos/br/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lme/timos/br/a/c;->c:Lme/timos/br/a/c;

    invoke-virtual {v1}, Lme/timos/br/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lme/timos/br/a;->z:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static v()V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 254
    const-string v1, "Bug reporter mode must be set before initialization"

    .line 253
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sget-object v0, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 258
    const-string v1, "Log Storage Mode must be set before initialization"

    .line 257
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    sget-object v0, Lme/timos/br/a;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 262
    const-string v1, "Log tag must be set before initialization"

    .line 261
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    invoke-static {}, Lme/timos/br/a;->t()[I

    move-result-object v0

    sget-object v1, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    invoke-virtual {v1}, Lme/timos/br/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_3
    invoke-static {}, Lme/timos/br/a;->u()[I

    move-result-object v0

    .line 280
    sget-object v1, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    invoke-virtual {v1}, Lme/timos/br/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 332
    :cond_4
    return-void

    .line 267
    :pswitch_0
    sget v0, Lme/timos/br/a;->n:I

    if-nez v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 269
    const-string v1, "Log buffer size must be set before initialization"

    .line 268
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_1
    sget v0, Lme/timos/br/a;->o:I

    if-nez v0, :cond_3

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 275
    const-string v1, "Log file size must be set before initialization"

    .line 274
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_2
    sget-object v0, Lme/timos/br/a;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 284
    const-string v1, "Email address must be set for email mode before initialization"

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_5
    sget-object v0, Lme/timos/br/a;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 288
    const-string v1, "Email subject must be set for email mode before initialization"

    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_6
    sget v0, Lme/timos/br/a;->p:I

    if-nez v0, :cond_7

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 292
    const-string v1, "Resource id for dialog title must be set for email mode before initialization"

    .line 291
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_7
    sget v0, Lme/timos/br/a;->q:I

    if-nez v0, :cond_8

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 296
    const-string v1, "Resource id for dialog hint must be set for email mode before initialization"

    .line 295
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_8
    sget v0, Lme/timos/br/a;->r:I

    if-nez v0, :cond_9

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 300
    const-string v1, "Resource id for log creation error must be set for email mode before initialization"

    .line 299
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_9
    sget v0, Lme/timos/br/a;->s:I

    if-nez v0, :cond_a

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    const-string v1, "Resource id for OK text must be set for email mode before initialization"

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_a
    sget v0, Lme/timos/br/a;->t:I

    if-nez v0, :cond_b

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 308
    const-string v1, "Resource id for Send text must be set for email mode before initialization"

    .line 307
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_b
    sget-object v0, Lme/timos/br/a;->g:Landroid/net/Uri;

    if-eqz v0, :cond_c

    sget v0, Lme/timos/br/a;->u:I

    if-nez v0, :cond_c

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 312
    const-string v1, "Resource id for FAQ text must be set for email mode if you set a FAQ Uri before initialization"

    .line 311
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_c
    sget v0, Lme/timos/br/a;->v:I

    if-nez v0, :cond_d

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 316
    const-string v1, "Resource id for Cancel text must be set for email mode before initialization"

    .line 315
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_d
    sget v0, Lme/timos/br/a;->w:I

    if-nez v0, :cond_4

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 320
    const-string v1, "Resource id for Select email client text must be set for email mode before initialization"

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_3
    sget-object v0, Lme/timos/br/a;->d:Lme/timos/br/e;

    if-nez v0, :cond_4

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 326
    const-string v1, "You must register the callback before initialization"

    .line 325
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 280
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static w()V
    .locals 3

    .prologue
    .line 335
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    invoke-interface {v0}, Lme/timos/br/b/d;->a()V

    .line 338
    :cond_0
    invoke-static {}, Lme/timos/br/a;->t()[I

    move-result-object v0

    sget-object v1, Lme/timos/br/a;->e:Lme/timos/br/a/b;

    invoke-virtual {v1}, Lme/timos/br/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    const/4 v1, 0x1

    .line 350
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v2, ".BuildConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 352
    const-string v2, "DEBUG"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 356
    :goto_1
    new-instance v1, Lme/timos/br/b/c;

    sget-object v2, Lme/timos/br/a;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lme/timos/br/b/c;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    .line 357
    return-void

    .line 340
    :pswitch_0
    new-instance v0, Lme/timos/br/b/a;

    sget v1, Lme/timos/br/a;->n:I

    invoke-direct {v0, v1}, Lme/timos/br/b/a;-><init>(I)V

    sput-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    goto :goto_0

    .line 343
    :pswitch_1
    new-instance v0, Lme/timos/br/b/b;

    sget-object v1, Lme/timos/br/a;->h:Ljava/io/File;

    sget v2, Lme/timos/br/a;->o:I

    invoke-direct {v0, v1, v2}, Lme/timos/br/b/b;-><init>(Ljava/io/File;I)V

    sput-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 553
    :try_start_0
    const-string v0, "App crash with uncaught exception"

    invoke-static {v0, p2}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    sget-object v0, Lme/timos/br/a;->f:Lme/timos/br/a/c;

    sget-object v1, Lme/timos/br/a/c;->c:Lme/timos/br/a/c;

    if-ne v0, v1, :cond_0

    .line 555
    invoke-static {}, Lme/timos/br/a;->c()V

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    new-instance v0, Lme/timos/br/b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lme/timos/br/b;-><init>(Ljava/lang/Throwable;Lme/timos/br/b;)V

    invoke-virtual {v0}, Lme/timos/br/b;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    iget-object v0, p0, Lme/timos/br/a;->x:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
