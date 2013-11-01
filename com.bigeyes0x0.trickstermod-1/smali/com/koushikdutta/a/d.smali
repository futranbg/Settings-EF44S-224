.class Lcom/koushikdutta/a/d;
.super Ljava/lang/Object;
.source "Ion.java"

# interfaces
.implements Lcom/koushikdutta/a/e/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/koushikdutta/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;Ljava/lang/String;Lcom/koushikdutta/async/http/c/p;)Lcom/koushikdutta/async/http/m;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    new-instance v0, Lcom/koushikdutta/async/http/m;

    invoke-direct {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/m;-><init>(Ljava/net/URI;Ljava/lang/String;Lcom/koushikdutta/async/http/c/p;)V

    return-object v0
.end method
