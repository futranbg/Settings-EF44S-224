.class Lcom/koushikdutta/async/aa;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/aa;->a:Ljava/lang/Runnable;

    .line 208
    iput-wide p2, p0, Lcom/koushikdutta/async/aa;->b:J

    .line 209
    return-void
.end method
