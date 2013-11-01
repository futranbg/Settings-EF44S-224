.class public Lcom/koushikdutta/async/c/f;
.super Ljava/lang/Object;
.source "StringParser.java"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;)Lcom/koushikdutta/async/b/f;
    .locals 2
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/koushikdutta/async/c/g;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/c/g;-><init>(Lcom/koushikdutta/async/c/f;)V

    new-instance v1, Lcom/koushikdutta/async/c/b;

    invoke-direct {v1}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/c/b;->a(Lcom/koushikdutta/async/ak;)Lcom/koushikdutta/async/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/c/g;->a(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/k;

    move-result-object v0

    return-object v0
.end method
