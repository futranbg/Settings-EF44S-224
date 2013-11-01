.class Lcom/stericson/RootTools/c/h;
.super Ljava/lang/Thread;
.source "Shell.java"


# instance fields
.field final synthetic a:Lcom/stericson/RootTools/c/f;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/stericson/RootTools/c/h;->a:Lcom/stericson/RootTools/c/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/stericson/RootTools/c/h;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/h;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
