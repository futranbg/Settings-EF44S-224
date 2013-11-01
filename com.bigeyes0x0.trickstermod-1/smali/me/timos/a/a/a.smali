.class public Lme/timos/a/a/a;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field a:Lme/timos/a/a/n;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lme/timos/a/a/n;

    invoke-direct {v0, p1, p2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lme/timos/a/a/a;-><init>(Lme/timos/a/a/n;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lme/timos/a/a/n;

    invoke-direct {v0, p1, p2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lme/timos/a/a/a;-><init>(Lme/timos/a/a/n;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lme/timos/a/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/timos/a/a/a;-><init>(Lme/timos/a/a/n;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lme/timos/a/a/n;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lme/timos/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lme/timos/a/a/a;->a:Lme/timos/a/a/n;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lme/timos/a/a/n;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lme/timos/a/a/a;->a:Lme/timos/a/a/n;

    return-object v0
.end method
