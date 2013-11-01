.class final Lcom/koushikdutta/a/i;
.super Lcom/koushikdutta/async/b/j;
.source "IonBitmapRequestBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/a/i;->a(Ljava/lang/Exception;)Z

    .line 166
    return-void
.end method
