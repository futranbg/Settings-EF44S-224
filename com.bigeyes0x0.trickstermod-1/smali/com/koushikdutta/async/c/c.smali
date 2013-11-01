.class Lcom/koushikdutta/async/c/c;
.super Lcom/koushikdutta/async/b/j;
.source "ByteBufferListParser.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ak;

.field final synthetic b:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/c/c;->b:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/c;->a:Lcom/koushikdutta/async/ak;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/c/c;->a:Lcom/koushikdutta/async/ak;

    invoke-interface {v0}, Lcom/koushikdutta/async/ak;->d()V

    .line 23
    return-void
.end method
