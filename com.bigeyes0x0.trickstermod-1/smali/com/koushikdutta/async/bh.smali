.class public Lcom/koushikdutta/async/bh;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/koushikdutta/async/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/bh;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/koushikdutta/async/ac;Ljava/lang/Class;)Lcom/koushikdutta/async/ac;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-object p0

    :cond_0
    move-object v0, p0

    .line 206
    :cond_1
    instance-of v1, v0, Lcom/koushikdutta/async/f/a;

    if-eqz v1, :cond_2

    .line 207
    check-cast v0, Lcom/koushikdutta/async/f/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/f/a;->b()Lcom/koushikdutta/async/ac;

    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 209
    goto :goto_0

    .line 211
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->i()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->f()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    if-lez v1, :cond_2

    .line 20
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/a/d;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->f()Lcom/koushikdutta/async/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    sget-boolean v0, Lcom/koushikdutta/async/bh;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->c()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/koushikdutta/async/ak;->i()Z

    move-result v1

    if-nez v1, :cond_4

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/koushikdutta/async/ah;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    sget-boolean v0, Lcom/koushikdutta/async/bh;->a:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/ah;Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    new-instance v0, Lcom/koushikdutta/async/bi;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/bi;-><init>(Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/ah;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p0, v0}, Lcom/koushikdutta/async/an;->a(Lcom/koushikdutta/async/a/f;)V

    .line 194
    invoke-interface {v0}, Lcom/koushikdutta/async/a/f;->a()V

    .line 195
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/an;[BLcom/koushikdutta/async/a/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/koushikdutta/async/ah;

    invoke-direct {v1}, Lcom/koushikdutta/async/ah;-><init>()V

    .line 199
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 200
    invoke-static {p0, v1, p2}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/an;Lcom/koushikdutta/async/ah;Lcom/koushikdutta/async/a/a;)V

    .line 201
    return-void
.end method
