.class public Lme/timos/br/d;
.super Ljava/lang/Object;
.source "Logcat.java"


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v1, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    sget-object v2, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    invoke-interface {v1, v2, v0}, Lme/timos/br/b/d;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    sget-object v2, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    invoke-virtual {v1, v2, v0}, Lme/timos/br/b/c;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-static {p2}, Lme/timos/br/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    sget-object v2, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-interface {v1, v2, v0}, Lme/timos/br/b/d;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    sget-object v2, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-virtual {v1, v2, v0}, Lme/timos/br/b/c;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    sget-object v1, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    invoke-interface {v0, v1, p0}, Lme/timos/br/b/d;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    sget-object v1, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    invoke-virtual {v0, v1, p0}, Lme/timos/br/b/c;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lme/timos/br/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    sget-object v2, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-interface {v1, v2, v0}, Lme/timos/br/b/d;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    sget-object v2, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-virtual {v1, v2, v0}, Lme/timos/br/b/c;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-object v0, Lme/timos/br/a;->b:Lme/timos/br/b/d;

    sget-object v1, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-interface {v0, v1, p0}, Lme/timos/br/b/d;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lme/timos/br/a;->c:Lme/timos/br/b/c;

    sget-object v1, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-virtual {v0, v1, p0}, Lme/timos/br/b/c;->a(Lme/timos/br/a/a;Ljava/lang/String;)V

    .line 37
    return-void
.end method
