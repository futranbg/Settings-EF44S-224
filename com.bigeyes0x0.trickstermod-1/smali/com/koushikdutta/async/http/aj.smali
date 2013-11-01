.class final Lcom/koushikdutta/async/http/aj;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/ai;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ai;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/koushikdutta/async/http/aj;->a:Lcom/koushikdutta/async/http/ai;

    iput-object p2, p0, Lcom/koushikdutta/async/http/aj;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/aj;->a:Lcom/koushikdutta/async/http/ai;

    iget-object v1, p0, Lcom/koushikdutta/async/http/aj;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ai;->a(Lcom/koushikdutta/async/http/ai;Ljava/lang/Exception;)V

    .line 58
    return-void
.end method
