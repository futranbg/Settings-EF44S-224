.class public Lcom/koushikdutta/async/c/b;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;)Lcom/koushikdutta/async/b/f;
    .locals 3
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/koushikdutta/async/ah;

    invoke-direct {v0}, Lcom/koushikdutta/async/ah;-><init>()V

    .line 19
    new-instance v1, Lcom/koushikdutta/async/c/c;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/c/c;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/ak;)V

    .line 25
    new-instance v2, Lcom/koushikdutta/async/c/d;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/c/d;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/ah;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 32
    new-instance v2, Lcom/koushikdutta/async/c/e;

    invoke-direct {v2, p0, v1, v0}, Lcom/koushikdutta/async/c/e;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/b/j;Lcom/koushikdutta/async/ah;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/ak;->b(Lcom/koushikdutta/async/a/a;)V

    .line 49
    return-object v1
.end method
