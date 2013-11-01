.class public abstract Leu/chainfire/supersu/AsyncTask;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/BlockingQueue;

.field private static final e:Leu/chainfire/supersu/AsyncTask$InternalHandler;

.field private static volatile f:Ljava/util/concurrent/Executor;

.field private static synthetic k:[I


# instance fields
.field private final g:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

.field private final h:Ljava/util/concurrent/FutureTask;

.field private volatile i:Leu/chainfire/supersu/AsyncTask$Status;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/16 v3, 0x1

    const/4 v8, 0x1

    new-instance v0, Leu/chainfire/supersu/AsyncTask$1;

    invoke-direct {v0}, Leu/chainfire/supersu/AsyncTask$1;-><init>()V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Leu/chainfire/supersu/AsyncTask;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Leu/chainfire/supersu/AsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Leu/chainfire/supersu/AsyncTask;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Leu/chainfire/supersu/AsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Leu/chainfire/supersu/AsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/AsyncTask$InternalHandler;-><init>(Leu/chainfire/supersu/AsyncTask$InternalHandler;)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->e:Leu/chainfire/supersu/AsyncTask$InternalHandler;

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Leu/chainfire/supersu/AsyncTask;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->a:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->i:Leu/chainfire/supersu/AsyncTask$Status;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Leu/chainfire/supersu/AsyncTask$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/AsyncTask$2;-><init>(Leu/chainfire/supersu/AsyncTask;)V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->g:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    new-instance v0, Leu/chainfire/supersu/AsyncTask$3;

    iget-object v1, p0, Leu/chainfire/supersu/AsyncTask;->g:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Leu/chainfire/supersu/AsyncTask$3;-><init>(Leu/chainfire/supersu/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->h:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/supersu/AsyncTask;->e(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Leu/chainfire/supersu/AsyncTask;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Leu/chainfire/supersu/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/supersu/AsyncTask;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Leu/chainfire/supersu/AsyncTask;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->e:Leu/chainfire/supersu/AsyncTask$InternalHandler;

    new-instance v1, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Leu/chainfire/supersu/AsyncTask$AsyncTaskResult;-><init>(Leu/chainfire/supersu/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Leu/chainfire/supersu/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic d()[I
    .locals 3

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Leu/chainfire/supersu/AsyncTask$Status;->values()[Leu/chainfire/supersu/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->c:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v1}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->a:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v1}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->b:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v1}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Leu/chainfire/supersu/AsyncTask;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/AsyncTask;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AsyncTask;->b(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->c:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->i:Leu/chainfire/supersu/AsyncTask$Status;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AsyncTask;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->i:Leu/chainfire/supersu/AsyncTask$Status;

    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->a:Leu/chainfire/supersu/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    invoke-static {}, Leu/chainfire/supersu/AsyncTask;->d()[I

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AsyncTask;->i:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {v1}, Leu/chainfire/supersu/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->b:Leu/chainfire/supersu/AsyncTask$Status;

    iput-object v0, p0, Leu/chainfire/supersu/AsyncTask;->i:Leu/chainfire/supersu/AsyncTask$Status;

    invoke-virtual {p0}, Leu/chainfire/supersu/AsyncTask;->a()V

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->g:Leu/chainfire/supersu/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Leu/chainfire/supersu/AsyncTask$WorkerRunnable;->b:[Ljava/lang/Object;

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->h:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Leu/chainfire/supersu/AsyncTask;->b()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;
    .locals 1

    sget-object v0, Leu/chainfire/supersu/AsyncTask;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Leu/chainfire/supersu/AsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AsyncTask;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method
