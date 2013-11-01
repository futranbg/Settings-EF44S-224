.class public abstract Lcom/a/a/ad;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/a/a/t;
    .locals 2
    .parameter

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Lcom/a/a/b/a/g;

    invoke-direct {v0}, Lcom/a/a/b/a/g;-><init>()V

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v0}, Lcom/a/a/b/a/g;->a()Lcom/a/a/t;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lcom/a/a/u;

    invoke-direct {v1, v0}, Lcom/a/a/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract a(Lcom/a/a/d/a;Ljava/lang/Object;)V
.end method
