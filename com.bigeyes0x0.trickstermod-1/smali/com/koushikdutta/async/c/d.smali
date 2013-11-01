.class Lcom/koushikdutta/async/c/d;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ah;

.field final synthetic b:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/koushikdutta/async/c/d;->b:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/ah;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ah;->a(Lcom/koushikdutta/async/ah;)V

    .line 29
    return-void
.end method
