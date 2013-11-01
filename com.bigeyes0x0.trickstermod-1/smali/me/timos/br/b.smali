.class Lme/timos/br/b;
.super Ljava/lang/Thread;
.source "BR.java"


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    iput-object p1, p0, Lme/timos/br/b;->a:Ljava/lang/Throwable;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lme/timos/br/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lme/timos/br/b;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const-string v0, "===== APP LOG ===========================\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    invoke-interface {v0}, Lme/timos/br/b/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lme/timos/br/b;->b:[I

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
    sput-object v0, Lme/timos/br/b;->b:[I

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

.method private b(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const-string v0, "===== BUILD.PROP ========================\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "/system/build.prop"

    invoke-static {v0}, Lme/timos/br/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method

.method private c(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lme/timos/br/a;->i()Lme/timos/br/a/b;

    move-result-object v0

    sget-object v1, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    if-ne v0, v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "===== BURST LOG =========================\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lme/timos/br/a;->r()Ljava/io/File;

    move-result-object v1

    const-string v2, "logfile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/timos/br/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private d(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x1000

    .line 60
    const-string v0, "===== APP FILES DIRECTORY STRUCTURE =====\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 64
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ls"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-lR"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 65
    sget-object v4, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 67
    const-string v3, "Retrieving ls output..."

    invoke-static {v3}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 70
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lme/timos/br/c;

    invoke-direct {v4, p0, v1}, Lme/timos/br/c;-><init>(Lme/timos/br/b;Ljava/lang/Process;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 83
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 85
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    return-void

    .line 86
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "Unable to run ls command"

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private e(Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter

    .prologue
    .line 96
    const-string v0, "===== SHARED PREFERENCE =================\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/io/File;

    sget-object v0, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v2, "shared_prefs"

    .line 97
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 109
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-void

    .line 101
    :cond_1
    aget-object v4, v2, v0

    .line 102
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ---\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lme/timos/br/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private f(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    const-string v0, "===== STACK TRACE =======================\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lme/timos/br/b;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "Report initialized by user, no stack trace\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lme/timos/br/b;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lme/timos/br/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v1, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trickstermod_log_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lme/timos/br/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x19000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    invoke-direct {p0, v1}, Lme/timos/br/b;->b(Ljava/lang/StringBuilder;)V

    .line 128
    invoke-direct {p0, v1}, Lme/timos/br/b;->e(Ljava/lang/StringBuilder;)V

    .line 129
    invoke-direct {p0, v1}, Lme/timos/br/b;->d(Ljava/lang/StringBuilder;)V

    .line 130
    invoke-direct {p0, v1}, Lme/timos/br/b;->f(Ljava/lang/StringBuilder;)V

    .line 131
    invoke-direct {p0, v1}, Lme/timos/br/b;->c(Ljava/lang/StringBuilder;)V

    .line 132
    invoke-direct {p0, v1}, Lme/timos/br/b;->a(Ljava/lang/StringBuilder;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {}, Lme/timos/br/b;->a()[I

    move-result-object v2

    invoke-static {}, Lme/timos/br/a;->j()Lme/timos/br/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lme/timos/br/a/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lme/timos/br/a;->a:Landroid/app/Application;

    const-class v4, Lme/timos/br/ActivityBugReport;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lme/timos/br/b;->a:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 141
    const v3, 0x40808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create bug report file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 151
    const-string v1, "report_file"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    sget-object v0, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lme/timos/br/b;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lme/timos/br/a;->c()V

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "appName"

    sget-object v5, Lme/timos/br/a;->a:Landroid/app/Application;

    .line 164
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 165
    sget-object v6, Lme/timos/br/a;->a:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "appVersion"

    .line 167
    invoke-static {}, Lme/timos/br/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lme/timos/br/a;->s()Lme/timos/br/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lme/timos/br/e;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
