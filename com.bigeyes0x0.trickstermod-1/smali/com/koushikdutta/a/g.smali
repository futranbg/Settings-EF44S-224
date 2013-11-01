.class Lcom/koushikdutta/a/g;
.super Ljava/lang/Object;
.source "IonBitmapRequestBuilder.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Lcom/koushikdutta/async/b/j;

.field private static final e:Lcom/koushikdutta/async/b/j;


# instance fields
.field a:Lcom/koushikdutta/a/b;

.field b:Lcom/koushikdutta/a/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/koushikdutta/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/a/g;->c:Z

    .line 157
    new-instance v0, Lcom/koushikdutta/a/h;

    invoke-direct {v0}, Lcom/koushikdutta/a/h;-><init>()V

    sput-object v0, Lcom/koushikdutta/a/g;->d:Lcom/koushikdutta/async/b/j;

    .line 163
    new-instance v0, Lcom/koushikdutta/a/i;

    invoke-direct {v0}, Lcom/koushikdutta/a/i;-><init>()V

    sput-object v0, Lcom/koushikdutta/a/g;->e:Lcom/koushikdutta/async/b/j;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    sget-object v0, Lcom/koushikdutta/a/aa;->a:Lcom/koushikdutta/a/aa;

    iput-object v0, p0, Lcom/koushikdutta/a/g;->b:Lcom/koushikdutta/a/aa;

    .line 67
    iput-object p1, p0, Lcom/koushikdutta/a/g;->a:Lcom/koushikdutta/a/b;

    .line 68
    return-void
.end method
