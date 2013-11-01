.class Lcom/koushikdutta/async/http/ai;
.super Lcom/koushikdutta/async/at;
.source "HttpUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/ai;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/koushikdutta/async/http/ai;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/ai;-><init>()V

    .line 54
    new-instance v1, Lcom/koushikdutta/async/http/aj;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/aj;-><init>(Lcom/koushikdutta/async/http/ai;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/ai;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/ai;->a(Ljava/lang/Exception;)V

    return-void
.end method
