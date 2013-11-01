.class final Lcom/a/a/b/a/ak;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/a/a/ae;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/j;Lcom/a/a/c/a;)Lcom/a/a/ad;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/a/a/j;->a(Ljava/lang/Class;)Lcom/a/a/ad;

    move-result-object v1

    .line 524
    new-instance v0, Lcom/a/a/b/a/al;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/a/al;-><init>(Lcom/a/a/b/a/ak;Lcom/a/a/ad;)V

    goto :goto_0
.end method
