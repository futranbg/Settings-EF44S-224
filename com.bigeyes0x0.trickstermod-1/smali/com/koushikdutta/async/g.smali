.class public Lcom/koushikdutta/async/g;
.super Ljavax/net/ssl/SSLPeerUnverifiedException;
.source "AsyncSSLException.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "Peer not trusted by any of the system trust managers."

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/g;->a:Z

    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/koushikdutta/async/g;->a:Z

    return v0
.end method
