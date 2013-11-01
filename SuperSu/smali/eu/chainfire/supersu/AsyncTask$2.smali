.class Leu/chainfire/supersu/AsyncTask$2;
.super Leu/chainfire/supersu/AsyncTask$WorkerRunnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AsyncTask;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AsyncTask;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/AsyncTask$2;->a:Leu/chainfire/supersu/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/supersu/AsyncTask$WorkerRunnable;-><init>(Leu/chainfire/supersu/AsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask$2;->a:Leu/chainfire/supersu/AsyncTask;

    invoke-static {v0}, Leu/chainfire/supersu/AsyncTask;->a(Leu/chainfire/supersu/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask$2;->a:Leu/chainfire/supersu/AsyncTask;

    iget-object v1, p0, Leu/chainfire/supersu/AsyncTask$2;->a:Leu/chainfire/supersu/AsyncTask;

    iget-object v2, p0, Leu/chainfire/supersu/AsyncTask$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/AsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/supersu/AsyncTask;->b(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
