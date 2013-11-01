.class Lcom/koushikdutta/async/ab;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static a:Lcom/koushikdutta/async/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/koushikdutta/async/ab;

    invoke-direct {v0}, Lcom/koushikdutta/async/ab;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/aa;Lcom/koushikdutta/async/aa;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 222
    iget-wide v0, p1, Lcom/koushikdutta/async/aa;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/aa;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-wide v0, p1, Lcom/koushikdutta/async/aa;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/aa;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    check-cast p1, Lcom/koushikdutta/async/aa;

    check-cast p2, Lcom/koushikdutta/async/aa;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/ab;->a(Lcom/koushikdutta/async/aa;Lcom/koushikdutta/async/aa;)I

    move-result v0

    return v0
.end method
