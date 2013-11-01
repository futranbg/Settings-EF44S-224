.class public Lcom/koushikdutta/a/e;
.super Ljava/lang/Object;
.source "Ion.java"


# instance fields
.field a:Lcom/koushikdutta/a/e/a;

.field b:Ljava/util/ArrayList;

.field private c:Lcom/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0}, Lcom/a/a/j;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/e;->c:Lcom/a/a/j;

    .line 383
    new-instance v0, Lcom/koushikdutta/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/a/d;-><init>(Lcom/koushikdutta/a/c;)V

    iput-object v0, p0, Lcom/koushikdutta/a/e;->a:Lcom/koushikdutta/a/e/a;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/a/e;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/a/e/a;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/koushikdutta/a/e;->a:Lcom/koushikdutta/a/e/a;

    return-object v0
.end method

.method public a(Lcom/koushikdutta/a/v;)Lcom/koushikdutta/a/e;
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/koushikdutta/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-object p0
.end method
