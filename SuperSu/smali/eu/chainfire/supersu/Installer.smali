.class public Leu/chainfire/supersu/Installer;
.super Ljava/lang/Object;


# static fields
.field private static synthetic k:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Leu/chainfire/supersu/Installer;->a:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->b:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->c:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->d:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->e:I

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->f:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->g:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->h:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Leu/chainfire/supersu/Installer;->d()[I

    move-result-object v1

    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->c()Leu/chainfire/supersu/Installer$Architecture;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v1, "%s.%s.png"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "x86"

    goto :goto_0

    :pswitch_2
    const-string v0, "arm"

    goto :goto_0

    :pswitch_3
    const-string v0, "arm"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "supersu.zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d()[I
    .locals 3

    sget-object v0, Leu/chainfire/supersu/Installer;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Leu/chainfire/supersu/Installer$Architecture;->values()[Leu/chainfire/supersu/Installer$Architecture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->a:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->c:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->b:Leu/chainfire/supersu/Installer$Architecture;

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer$Architecture;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Leu/chainfire/supersu/Installer;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sh"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "cat /proc/mounts"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "/system"

    iput-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "/system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/Installer;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xa1

    iput v0, p0, Leu/chainfire/supersu/Installer;->a:I

    const-string v0, "[Installer] detect(%d)"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/supersu/Installer;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "[Installer] su detect"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->b:I

    const-string v0, "[Installer] su --> %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/supersu/Installer;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "[Installer] su backup detect"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->c:I

    const-string v0, "[Installer] su backup --> %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/supersu/Installer;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "[Installer] su daemon detect"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->d:I

    const-string v0, "[Installer] su daemon --> %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/supersu/Installer;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "[Installer] su old detect"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "/system/.bash/.ssu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->e:I

    const-string v0, "[Installer] su old --> %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/supersu/Installer;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    iget v0, p0, Leu/chainfire/supersu/Installer;->b:I

    iget v3, p0, Leu/chainfire/supersu/Installer;->a:I

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    iget v0, p0, Leu/chainfire/supersu/Installer;->c:I

    iget v3, p0, Leu/chainfire/supersu/Installer;->a:I

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->h:Z

    iget v0, p0, Leu/chainfire/supersu/Installer;->d:I

    const/4 v3, -0x1

    if-ge v0, v3, :cond_0

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Leu/chainfire/supersu/Installer;->d:I

    iget v3, p0, Leu/chainfire/supersu/Installer;->a:I

    if-ge v0, v3, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->i:Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "superuser"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->g:Z

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->g:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    const-string v3, "[Installer] want_install == %d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v3, "[Installer] want_backup == %d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->h:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v3, "[Installer] wantInstall() == %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    const-string v0, "[Installer] canInstall() == %d"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8
.end method

.method public a(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;Z)V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer$2;

    invoke-direct {v0, p0, p1, p2, p3}, Leu/chainfire/supersu/Installer$2;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;Z)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$2;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer$5;

    invoke-direct {v0, p0, p1, p2}, Leu/chainfire/supersu/Installer$5;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$5;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method public a(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$1;

    invoke-direct {v1, p0, p1, v0, p3}, Leu/chainfire/supersu/Installer$1;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Leu/chainfire/supersu/Installer$1;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(J)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system/xbin"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    div-long v2, p1, v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)Z
    .locals 13

    const/4 v8, 0x3

    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->a:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v0, :cond_1

    const-string v0, "/system/bin/.ext/.su"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mount -o rw,remount /system /system"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mount -o rw,remount "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "rm /system/bin/su"

    aput-object v4, v3, v11

    const-string v4, "rm /system/xbin/su"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mount -o ro,remount "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " /system"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "mount -o ro,remount /system /system"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v12, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->g:Z

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->c(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    const-string v0, "chattr"

    invoke-direct {p0, v0}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Leu/chainfire/supersu/Settings;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    const-string v3, "setprop persist.service.adb.enable 1"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "mount -o rw,remount /system /system"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mount -o rw,remount "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " /system"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "chmod 0755 %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v3, :cond_3

    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v3, :cond_3

    const-string v3, "rm %s"

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "/system/.pin"

    aput-object v7, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/addon.d/99-supersu.sh"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->b:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v3, :cond_4

    const/16 v3, 0xa

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "/system/bin/su"

    aput-object v3, v6, v1

    const-string v3, "/system/xbin/su"

    aput-object v3, v6, v2

    const-string v3, "/system/xbin/daemonsu"

    aput-object v3, v6, v11

    const-string v3, "/system/etc/install-recovery.sh"

    aput-object v3, v6, v8

    const/4 v3, 0x4

    const-string v7, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    const-string v7, "/system/xbin/otasurvival.sh"

    aput-object v7, v6, v3

    const/4 v3, 0x6

    const-string v7, "/system/bin/log"

    aput-object v7, v6, v3

    const/4 v3, 0x7

    const-string v7, "/system/addon.d/99-supersu.sh"

    aput-object v7, v6, v3

    const/16 v3, 0x8

    const-string v7, "/system/etc/.has_su_daemon"

    aput-object v7, v6, v3

    const/16 v3, 0x9

    const-string v7, "/system/etc/.installed_su_daemon"

    aput-object v7, v6, v3

    array-length v7, v6

    move v3, v1

    :goto_2
    if-lt v3, v7, :cond_11

    const-string v3, "ln -s %s %s"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "toolbox"

    aput-object v7, v6, v1

    const-string v7, "/system/bin/log"

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v3, :cond_5

    const-string v3, "%s -i %s"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v7, "/system/.bash/.ssu"

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/.bash/.ssu"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/.bash/*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm -rf /system/.bash"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rmdir /system/.bash"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "%s -i %s"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v7, "/system/su-backup"

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/su-backup"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "%s -i %s"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v7, "/system/bin/.ext/.su"

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/bin/.ext/.su"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/bin/.ext/*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm -rf /system/bin/.ext"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rmdir /system/bin/.ext"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v3, :cond_6

    const-string v3, "/system/app/superuser.apk"

    invoke-direct {p0, v3}, Leu/chainfire/supersu/Installer;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "rm /system/app/superuser.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/superuser.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*superuser.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v3, :cond_8

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {p0, v3}, Leu/chainfire/supersu/Installer;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, "rm /system/app/Superuser.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/Superuser.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*Superuser.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v3, :cond_a

    const-string v3, "/system/app/SuperUser.apk"

    invoke-direct {p0, v3}, Leu/chainfire/supersu/Installer;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const-string v3, "rm /system/app/SuperUser.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/SuperUser.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*SuperUser.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v3, :cond_c

    const-string v3, "rm /system/app/supersu.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/supersu.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/Supersu.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/Supersu.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/SuperSU.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /system/app/SuperSU.odex"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*Supersu.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*SuperSU.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*supersu.apk*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v3, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*com.noshufou.android.su*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/app/com.koushikdutta.superuser.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/app/com.koushikdutta.superuser-*.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/dalvik-cache/*com.koushikdutta.superuser*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "pm uninstall com.koushikdutta.superuser"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Leu/chainfire/supersu/Installer$UninstallMode;->e:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v3, :cond_d

    const-string v3, "rm /data/dalvik-cache/*eu.chainfire.supersu*"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/app/eu.chainfire.supersu.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rm /data/app/eu.chainfire.supersu-*.apk"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "pm uninstall eu.chainfire.supersu"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v3, "rm %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mount -o ro,remount "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " /system"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o ro,remount /system /system"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_e

    const-string v0, "setprop persist.service.adb.enable 0"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v0, "su"

    iget v1, p0, Leu/chainfire/supersu/Installer;->b:I

    if-ge v1, v12, :cond_f

    const-string v0, "/system/bin/.ext/.su"

    :cond_f
    invoke-static {v0, v5}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move v1, v2

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :cond_11
    aget-object v8, v6, v3

    const-string v9, "%s -i %s"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v4, v10, v1

    aput-object v8, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "rm %s"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public a(Landroid/content/Context;Z)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "chattr"

    invoke-direct {p0, v0}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "otasurvival.sh"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    const-string v0, "su"

    iget v1, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v6, -0x1

    if-ge v1, v6, :cond_6

    const-string v0, "/system/bin/.ext/.su"

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mount -o rw,remount /system /system"

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "mount -o rw,remount "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " /system"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 0755 %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "%s %s %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v2

    if-eqz p2, :cond_8

    const-string v1, "+i"

    :goto_1
    aput-object v1, v8, v3

    const-string v1, "/system/bin/.ext/.su"

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "%s %s %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v2

    if-eqz p2, :cond_9

    const-string v1, "+i"

    :goto_2
    aput-object v1, v8, v3

    const-string v1, "/system/xbin/daemonsu"

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "%s %s %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v8, "-i"

    aput-object v8, v7, v3

    const-string v8, "/system/etc/install-recovery.sh"

    aput-object v8, v7, v9

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v1, v7, :cond_7

    if-eqz p2, :cond_a

    const-string v1, "rm %s"

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "/system/bin/log"

    aput-object v8, v7, v2

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cat %s > %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    const-string v5, "/system/xbin/otasurvival.sh"

    aput-object v5, v7, v3

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 0755 %s"

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "/system/xbin/otasurvival.sh"

    aput-object v7, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ln -s %s %s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v7, "/system/xbin/otasurvival.sh"

    aput-object v7, v5, v2

    const-string v7, "/system/bin/log"

    aput-object v7, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    const-string v1, "rm %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mount -o ro,remount "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o ro,remount /system /system"

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v6}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-string v1, "-i"

    goto/16 :goto_1

    :cond_9
    const-string v1, "-i"

    goto/16 :goto_2

    :cond_a
    const-string v1, "rm %s"

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "/system/bin/log"

    aput-object v7, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ln -s %s %s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v7, "toolbox"

    aput-object v7, v5, v2

    const-string v7, "/system/bin/log"

    aput-object v7, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "rm %s"

    new-array v5, v3, [Ljava/lang/Object;

    const-string v7, "/system/xbin/otasurvival.sh"

    aput-object v7, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public b(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Leu/chainfire/supersu/Installer;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Leu/chainfire/supersu/Installer;->c:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Leu/chainfire/supersu/Installer;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.noshufou.android.su"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.koushikdutta.superuser"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    :goto_3
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3
.end method

.method public c()Leu/chainfire/supersu/Installer$Architecture;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    new-array v0, v11, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v3

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v10

    :goto_0
    sget-object v2, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v1, v2, :cond_0

    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "mips"

    aput-object v2, v5, v3

    array-length v6, v5

    move v4, v3

    :goto_1
    if-lt v4, v6, :cond_5

    :cond_0
    sget-object v2, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v1, v2, :cond_1

    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "x86"

    aput-object v2, v5, v3

    array-length v6, v5

    move v4, v3

    :goto_2
    if-lt v4, v6, :cond_8

    :cond_1
    sget-object v2, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v1, v2, :cond_2

    new-array v5, v11, [Ljava/lang/String;

    const-string v2, "armeabi"

    aput-object v2, v5, v3

    const-string v2, "armeabi-v7a"

    aput-object v2, v5, v10

    array-length v6, v5

    move v4, v3

    :goto_3
    if-lt v4, v6, :cond_b

    :cond_2
    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->c:Leu/chainfire/supersu/Installer$Architecture;

    if-ne v1, v0, :cond_3

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    :cond_3
    return-object v1

    :cond_4
    new-array v0, v10, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v3

    goto :goto_0

    :cond_5
    aget-object v7, v5, v4

    array-length v8, v0

    move v2, v3

    :goto_4
    if-lt v2, v8, :cond_6

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_6
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->c:Leu/chainfire/supersu/Installer$Architecture;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    aget-object v7, v5, v4

    array-length v8, v0

    move v2, v3

    :goto_5
    if-lt v2, v8, :cond_9

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_9
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->b:Leu/chainfire/supersu/Installer$Architecture;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    aget-object v7, v5, v4

    array-length v8, v0

    move v2, v3

    :goto_6
    if-lt v2, v8, :cond_c

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_c
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->a:Leu/chainfire/supersu/Installer$Architecture;

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public c(Landroid/content/Context;)Z
    .locals 13

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "supersu"

    invoke-direct {p0, v0}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/Installer;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    const-string v1, "chattr"

    invoke-direct {p0, v1}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const-string v1, "otasurvival.sh"

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const-string v1, "install-recovery.sh"

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const-string v1, "99SuperSUDaemon"

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    iget v7, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v8, -0x1

    if-lt v7, v8, :cond_14

    const-string v1, "su"

    :cond_12
    :goto_2
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mount -o rw,remount /system /system"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mount -o rw,remount "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /system"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "mount -o rw,remount / /"

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    if-eqz v0, :cond_13

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "cat /system/app/Maps.apk > /Maps.apk"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "cat /system/app/GMS_Maps.apk > /GMS_Maps.apk"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "cat /system/app/YouTube.apk > /YouTube.apk"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "rm /system/app/Maps.apk"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "rm /system/app/GMS_Maps.apk"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "rm /system/app/YouTube.apk"

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_13
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Leu/chainfire/supersu/Installer;->a(J)Z

    move-result v7

    if-nez v7, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    iget v7, p0, Leu/chainfire/supersu/Installer;->c:I

    const/4 v8, -0x1

    if-lt v7, v8, :cond_15

    const-string v1, "/system/bin/.ext/.su"

    goto :goto_2

    :cond_15
    iget v7, p0, Leu/chainfire/supersu/Installer;->e:I

    const/4 v8, -0x1

    if-lt v7, v8, :cond_12

    const-string v1, "/system/.bash/.ssu"

    goto :goto_2

    :cond_16
    const/16 v7, 0x1a

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mkdir /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "chmod 755 /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "chown 0.2000 /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "chown 0:2000 /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "chown root.shell /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "chown root:shell /system/xbin"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "mkdir %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "chown 0.0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "chown 0:0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "chown root.root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "chown root:root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "chmod 600 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "mkdir %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "chown 0.0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "chown 0:0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "chown root.root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "chown root:root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "chmod 755 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "rm %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "cat %s > %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "chown 0.0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "chown 0:0 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "chown root.root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "chown root:root %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "chmod %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "/system/.tmpsu"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "chmod 0755 %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v1, "/system/.tmpsu"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/bin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-eqz v8, :cond_17

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/.bash/.ssu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm /system/.bash/.ssu"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm /system/.bash/*"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm -rf /system/.bash"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rmdir /system/.bash"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/su-backup"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm /system/su-backup"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm /system/bin/.ext/.su"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm /system/bin/.ext/*"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm -rf /system/bin/.ext"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rmdir /system/bin/.ext"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Leu/chainfire/supersu/Installer;->g:Z

    if-nez v8, :cond_18

    iget-boolean v8, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-eqz v8, :cond_18

    const-string v8, "cat %s > %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0.0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0:0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root.root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root:root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chmod %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v8, "mkdir %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0.0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0:0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root.root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root:root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chmod 0777 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "cat %s > %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0.0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0:0 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root.root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root:root %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chmod %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "survival"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v8, "%s +i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/bin/.ext/.su"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    const-string v8, "chmod 0711 %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/bin/.ext"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Leu/chainfire/supersu/Installer;->i:Z

    if-eqz v8, :cond_1a

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "%s -i %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/etc/install-recovery.sh"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "cat %s > %s_old"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0.0 %s_old"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown 0:0 %s_old"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root.root %s_old"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chown root:root %s_old"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "chmod %s %s_old"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "rm %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "/system/xbin/daemonsu"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "cat %s > %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0.0 %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0:0 %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root.root %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root:root %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chmod %s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Leu/chainfire/supersu/Constants;->d:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "/system/xbin/daemonsu"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/system/etc/install-recovery.sh"

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "cat %s > %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v8, v5

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0.0 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0:0 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root.root %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root:root %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chmod 0755 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/install-recovery.sh"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "cat %s > %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0.0 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0:0 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root.root %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root:root %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chmod 0755 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "echo 1 > %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/.has_su_daemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "echo 1 > %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/etc/.installed_su_daemon"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "survival"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "%s +i %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v8, "/system/xbin/daemonsu"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v2, v5, :cond_1a

    const-string v2, "rm %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "/system/bin/log"

    aput-object v8, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "cat %s > %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const-string v6, "/system/xbin/otasurvival.sh"

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chmod 0755 %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/otasurvival.sh"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ln -s %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/otasurvival.sh"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/system/bin/log"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {v1, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    iget-boolean v2, p0, Leu/chainfire/supersu/Installer;->i:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v2, "%s_old --reload"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/daemonsu"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "sh"

    invoke-static {v2, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    :cond_1b
    iget-boolean v2, p0, Leu/chainfire/supersu/Installer;->i:Z

    if-eqz v2, :cond_1c

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v2, "rm %s_old"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/daemonsu"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    :cond_1c
    iget-boolean v1, p0, Leu/chainfire/supersu/Installer;->g:Z

    if-nez v1, :cond_22

    const-string v1, "su"

    :goto_4
    if-eqz v0, :cond_1f

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "cat /Maps.apk > /system/app/Maps.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v4, "cat /GMS_Maps.apk > /system/app/GMS_Maps.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "cat /YouTube.apk > /system/app/YouTube.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "chown 0.0 /system/app/Maps.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "chown 0.0 /system/app/GMS_Maps.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "chown 0.0 /system/app/YouTube.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x6

    const-string v4, "chmod 644 /system/app/Maps.apk"

    aput-object v4, v0, v2

    const/4 v2, 0x7

    const-string v4, "chmod 644 /system/app/GMS_Maps.apk"

    aput-object v4, v0, v2

    const/16 v2, 0x8

    const-string v4, "chmod 644 /system/app/YouTube.apk"

    aput-object v4, v0, v2

    const/16 v2, 0x9

    const-string v4, "rm /Maps.apk"

    aput-object v4, v0, v2

    const/16 v2, 0xa

    const-string v4, "rm /GMS_Maps.apk"

    aput-object v4, v0, v2

    const/16 v2, 0xb

    const-string v4, "rm /YouTube.apk"

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Maps.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "rm /system/app/Maps.apk"

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_1d
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/GMS_Maps.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "rm /system/app/GMS_Maps.apk"

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_1e
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/YouTube.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "rm /system/app/YouTube.apk"

    aput-object v4, v0, v2

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_1f
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "rm %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "/system/.tmpsu"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v4, "rm %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "mount -o ro,remount / /"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mount -o ro,remount "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "mount -o ro,remount /system /system"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa1

    if-ge v0, v1, :cond_20

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->g:Z

    if-eqz v0, :cond_23

    :cond_20
    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_23

    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_21

    const-string v0, "/system/xbin/daemonsu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_22
    const-string v1, "/system/bin/.ext/.su"

    goto/16 :goto_4

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method public d(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "eu.chainfire.supersu"

    invoke-static {p1, v2}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Leu/chainfire/supersu/Settings;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    const-string v4, "setprop persist.service.adb.enable 1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "mount -o rw,remount /system /system"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mount -o rw,remount "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/superuser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/superuser.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/Superuser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/Superuser.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/SuperUser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/SuperUser.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/supersu.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/supersu.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/Supersu.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/Supersu.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/SuperSU.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/SuperSU.odex"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/com.koushikdutta.superuser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/com.koushikdutta.superuser-*.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "pm uninstall com.koushikdutta.superuser"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "sleep 5s"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cat \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" > /system/app/Superuser.apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0.0 /system/app/Superuser.apk"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown 0:0 /system/app/Superuser.apk"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root.root /system/app/Superuser.apk"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chown root:root /system/app/Superuser.apk"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "chmod 644 /system/app/Superuser.apk"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mount -o ro,remount "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " /system"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "mount -o ro,remount /system /system"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*com.noshufou.android.su*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*com.koushikdutta.superuser*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*eu.chainfire.supersu*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*Superuser.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*SuperUser.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*superuser.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*Supersu.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*SuperSU.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "rm /data/dalvik-cache/*supersu.apk*"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "pm uninstall -k eu.chainfire.supersu"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    const-string v0, "setprop persist.service.adb.enable 0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "su"

    iget v2, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v4, -0x1

    if-ge v2, v4, :cond_5

    const-string v0, "/system/bin/.ext/.su"

    :cond_5
    invoke-static {v0, v3}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mount -o rw,remount /system /system"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mount -o rw,remount "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " /system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/superuser.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/superuser.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Superuser.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Superuser.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperUser.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperUser.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/supersu.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/supersu.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/Supersu.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /system/app/SuperSU.odex"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/app/com.koushikdutta.superuser-*.apk"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "pm uninstall com.koushikdutta.superuser"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.noshufou.android.su*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*com.koushikdutta.superuser*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*eu.chainfire.supersu*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Superuser.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperUser.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*superuser.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*Supersu.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*SuperSU.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /data/dalvik-cache/*supersu.apk*"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mount -o ro,remount "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " /system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mount -o ro,remount /system /system"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "su"

    iget v2, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v0, "/system/bin/.ext/.su"

    :cond_1
    invoke-static {v0, v1}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method

.method public f(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "99-supersu.sh"

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "mount -o rw,remount /system /system"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mount -o rw,remount "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cat \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/system/addon.d/99-supersu.sh"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chown 0.0 /system/addon.d/99-supersu.sh"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chown 0:0 /system/addon.d/99-supersu.sh"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chown root.root /system/addon.d/99-supersu.sh"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chown root:root /system/addon.d/99-supersu.sh"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chmod 755 /system/addon.d/99-supersu.sh"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mount -o ro,remount "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Leu/chainfire/supersu/Installer;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " /system"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mount -o ro,remount /system /system"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "rm \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "su"

    iget v1, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v3, -0x1

    if-ge v1, v3, :cond_2

    const-string v0, "/system/bin/.ext/.su"

    :cond_2
    invoke-static {v0, v2}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public g(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer$3;

    invoke-direct {v0, p0, p1}, Leu/chainfire/supersu/Installer$3;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$3;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer$4;

    invoke-direct {v0, p0, p1}, Leu/chainfire/supersu/Installer$4;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer$4;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "chattr"

    invoke-direct {p0, v0}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "supersu"

    invoke-direct {p0, v1}, Leu/chainfire/supersu/Installer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "install-recovery.sh"

    invoke-static {p1, v2}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "99SuperSUDaemon"

    invoke-static {p1, v3}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "supersu.zip"

    invoke-static {p1, v4}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x15

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "rm /cache/recovery/*"

    aput-object v6, v5, v8

    const-string v6, "cat %s > /cache/recovery/chattr"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    const-string v6, "cat %s > /cache/recovery/su"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "cat %s > /cache/recovery/install-recovery.sh"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "cat %s > /cache/recovery/99SuperSUDaemon"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "cat %s > /cache/recovery/update.zip"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "echo 1 > %s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "/system/etc/.has_su_daemon"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x7

    const-string v1, "echo 1 > %s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "/system/etc/.installed_su_daemon"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    const-string v1, "chown 0.0 /cache/recovery/chattr"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    const-string v1, "chown 0.0 /cache/recovery/su"

    aput-object v1, v5, v0

    const/16 v0, 0xa

    const-string v1, "chown 0.0 /cache/recovery/install-recovery.sh"

    aput-object v1, v5, v0

    const/16 v0, 0xb

    const-string v1, "chown 0.0 /cache/recovery/99SuperSUDaemon"

    aput-object v1, v5, v0

    const/16 v0, 0xc

    const-string v1, "chown 0.0 /cache/recovery/update.zip"

    aput-object v1, v5, v0

    const/16 v0, 0xd

    const-string v1, "chmod 755 /cache/recovery/chattr"

    aput-object v1, v5, v0

    const/16 v0, 0xe

    const-string v1, "chmod 644 /cache/recovery/su"

    aput-object v1, v5, v0

    const/16 v0, 0xf

    const-string v1, "chown 644 /cache/recovery/install-recovery.sh"

    aput-object v1, v5, v0

    const/16 v0, 0x10

    const-string v1, "chown 644 /cache/recovery/99SuperSUDaemon"

    aput-object v1, v5, v0

    const/16 v0, 0x11

    const-string v1, "chmod 644 /cache/recovery/.has_su_daemon"

    aput-object v1, v5, v0

    const/16 v0, 0x12

    const-string v1, "chmod 644 /cache/recovery/.installed_su_daemon"

    aput-object v1, v5, v0

    const/16 v0, 0x13

    const-string v1, "chmod 644 /cache/recovery/update.zip"

    aput-object v1, v5, v0

    const/16 v0, 0x14

    const-string v1, "echo --update_package=/cache/recovery/update.zip > /cache/recovery/command"

    aput-object v1, v5, v0

    invoke-static {v5}, Leu/chainfire/supersu/SuperUser;->a([Ljava/lang/String;)Ljava/util/List;

    invoke-static {p1}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/Installer$6;

    invoke-direct {v2, p0, p1}, Leu/chainfire/supersu/Installer$6;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
