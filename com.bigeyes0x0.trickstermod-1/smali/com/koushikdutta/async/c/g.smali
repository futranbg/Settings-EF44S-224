.class Lcom/koushikdutta/async/c/g;
.super Lcom/koushikdutta/async/b/k;
.source "StringParser.java"


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/c/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/c/g;->a:Lcom/koushikdutta/async/c/f;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/c/g;->b(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/koushikdutta/async/ah;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/c/g;->a(Lcom/koushikdutta/async/ah;)V

    return-void
.end method
