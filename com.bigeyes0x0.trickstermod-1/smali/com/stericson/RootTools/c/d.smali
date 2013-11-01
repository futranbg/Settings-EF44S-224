.class Lcom/stericson/RootTools/c/d;
.super Ljava/lang/Thread;
.source "Command.java"


# instance fields
.field final synthetic a:Lcom/stericson/RootTools/c/a;


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/c/a;Lcom/stericson/RootTools/c/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/c/d;-><init>(Lcom/stericson/RootTools/c/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    iget-boolean v0, v0, Lcom/stericson/RootTools/c/a;->g:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    iget-object v2, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    iget v2, v2, Lcom/stericson/RootTools/c/a;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    iget-object v0, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    iget-boolean v0, v0, Lcom/stericson/RootTools/c/a;->g:Z

    if-nez v0, :cond_0

    .line 281
    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/stericson/RootTools/c/d;->a:Lcom/stericson/RootTools/c/a;

    const-string v1, "Timeout Exception"

    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 285
    :cond_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    goto :goto_1
.end method
