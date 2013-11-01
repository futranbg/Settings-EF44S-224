.class public Lcom/koushikdutta/a/a/a;
.super Ljava/lang/Object;
.source "IonBitmapCache.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field a:Landroid/content/res/Resources;

.field b:Landroid/util/DisplayMetrics;

.field c:Lcom/koushikdutta/a/a/b;

.field d:Lcom/koushikdutta/a/b;

.field e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/koushikdutta/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/a/a;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/a/b;)V
    .locals 5
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/koushikdutta/a/a/a;->e:J

    .line 39
    invoke-virtual {p1}, Lcom/koushikdutta/a/b;->a()Landroid/content/Context;

    move-result-object v1

    .line 40
    iput-object p1, p0, Lcom/koushikdutta/a/a/a;->d:Lcom/koushikdutta/a/b;

    .line 41
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/a/a;->b:Landroid/util/DisplayMetrics;

    .line 42
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/a/a/a;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 45
    new-instance v2, Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/koushikdutta/a/a/a;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/koushikdutta/a/a/a;->a:Landroid/content/res/Resources;

    .line 46
    new-instance v0, Lcom/koushikdutta/a/a/b;

    invoke-static {v1}, Lcom/koushikdutta/a/a/a;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Lcom/koushikdutta/a/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/a/a/a;->c:Lcom/koushikdutta/a/a/b;

    .line 47
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 144
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method
