.class public Lme/timos/br/b/a;
.super Ljava/lang/Object;
.source "BufferLogger.java"

# interfaces
.implements Lme/timos/br/b/d;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lme/timos/br/b/a;->b:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    .line 19
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    .line 18
    monitor-exit v1

    .line 21
    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lme/timos/br/a/a;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1, p2}, Lme/timos/br/f;->a(Lme/timos/br/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    monitor-enter v3

    .line 35
    :try_start_0
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lme/timos/br/b/a;->b:I

    if-le v0, v1, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lme/timos/br/b/a;->b:I

    if-ge v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 38
    div-int/lit8 v1, v0, 0x2

    .line 39
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 40
    :goto_0
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lme/timos/br/b/a;->b:I

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    iget-object v4, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    monitor-exit v3

    .line 48
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lme/timos/br/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
