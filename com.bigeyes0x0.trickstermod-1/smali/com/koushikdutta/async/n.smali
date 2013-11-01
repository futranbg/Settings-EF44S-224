.class public Lcom/koushikdutta/async/n;
.super Ljava/lang/Object;
.source "AsyncServer.java"


# static fields
.field static a:Lcom/koushikdutta/async/n;

.field static final d:Ljava/util/WeakHashMap;

.field static final synthetic f:Z


# instance fields
.field b:Ljava/util/PriorityQueue;

.field c:Ljava/util/concurrent/ExecutorService;

.field e:Ljava/lang/Thread;

.field private g:Z

.field private h:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/koushikdutta/async/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/n;->f:Z

    .line 82
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 83
    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_1
    new-instance v0, Lcom/koushikdutta/async/o;

    invoke-direct {v0}, Lcom/koushikdutta/async/o;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/n;->a:Lcom/koushikdutta/async/n;

    .line 492
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/n;->g:Z

    .line 213
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/ab;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    .line 387
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/n;->c:Ljava/util/concurrent/ExecutorService;

    .line 116
    return-void
.end method

.method private static a(Lcom/koushikdutta/async/n;Ljava/util/PriorityQueue;)J
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 648
    const-wide v0, 0x7fffffffffffffffL

    move-wide v1, v0

    .line 652
    :goto_0
    const/4 v3, 0x0

    .line 654
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 657
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 658
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/aa;

    .line 659
    iget-wide v6, v0, Lcom/koushikdutta/async/aa;->b:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    move-object v8, v0

    move-wide v9, v1

    move-wide v0, v9

    move-object v2, v8

    .line 667
    :goto_1
    monitor-exit p0

    .line 669
    if-nez v2, :cond_2

    .line 675
    return-wide v0

    .line 663
    :cond_0
    iget-wide v1, v0, Lcom/koushikdutta/async/aa;->b:J

    sub-long/2addr v1, v4

    .line 664
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    move-wide v8, v1

    move-wide v0, v8

    move-object v2, v3

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 672
    :cond_2
    iget-object v2, v2, Lcom/koushikdutta/async/aa;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move-wide v1, v0

    .line 673
    goto :goto_0
.end method

.method static synthetic a(Lcom/koushikdutta/async/n;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/y;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/n;->b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/n;)Ljava/nio/channels/Selector;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/koushikdutta/async/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/z;-><init>(Lcom/koushikdutta/async/o;)V

    .line 68
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/bg;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/bg;

    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/bg;

    .line 70
    iput-object p0, v0, Lcom/koushikdutta/async/z;->d:Landroid/os/Handler;

    .line 71
    iput-object p1, v0, Lcom/koushikdutta/async/z;->b:Ljava/lang/Runnable;

    .line 73
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/bg;->a(Ljava/lang/Runnable;)Z

    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    iget-object v0, v1, Lcom/koushikdutta/async/bg;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/n;->b(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V

    return-void
.end method

.method private static a(Ljava/nio/channels/Selector;)V
    .locals 3
    .parameter

    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 621
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    goto :goto_0

    .line 632
    :catch_1
    move-exception v0

    .line 634
    :cond_0
    return-void

    .line 623
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/Selector;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/r;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/r;-><init>(Ljava/nio/channels/Selector;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/y;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    new-instance v0, Lcom/koushikdutta/async/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/y;-><init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/o;)V

    .line 331
    sget-boolean v1, Lcom/koushikdutta/async/n;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 333
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/t;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/koushikdutta/async/t;-><init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/b;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 363
    return-object v0
.end method

.method private static b(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/n;->c(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_1
    monitor-enter p0

    .line 599
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 600
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    const-string v1, "NIO"

    const-string v2, "exception?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/koushikdutta/async/n;->b(Ljava/nio/channels/Selector;)V

    .line 603
    iget-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    if-ne v0, p1, :cond_2

    .line 604
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/ab;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    .line 608
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    sget-object v1, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 612
    :try_start_3
    sget-object v0, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    monitor-exit v1

    .line 615
    return-void

    .line 613
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 592
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/nio/channels/Selector;)V
    .locals 1
    .parameter

    .prologue
    .line 637
    invoke-static {p0}, Lcom/koushikdutta/async/n;->a(Ljava/nio/channels/Selector;)V

    .line 640
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 680
    .line 683
    invoke-static {p0, p2}, Lcom/koushikdutta/async/n;->a(Lcom/koushikdutta/async/n;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 684
    monitor-enter p0

    .line 687
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v4

    .line 688
    if-nez v4, :cond_0

    .line 691
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    .line 693
    monitor-exit p0

    .line 765
    :goto_0
    return-void

    :cond_0
    move v2, v3

    .line 699
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    if-eqz v2, :cond_3

    .line 702
    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 703
    const-wide/16 v0, 0x64

    .line 705
    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    .line 709
    :cond_3
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    .line 710
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 712
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 713
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ServerSocketChannel;

    .line 714
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 715
    if-eqz v2, :cond_4

    .line 717
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 718
    const/4 v1, 0x1

    invoke-virtual {v2, p1, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 719
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/a/e;

    .line 720
    new-instance v6, Lcom/koushikdutta/async/d;

    invoke-direct {v6}, Lcom/koushikdutta/async/d;-><init>()V

    .line 721
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v1}, Lcom/koushikdutta/async/d;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 722
    invoke-virtual {v6, p0, v3}, Lcom/koushikdutta/async/d;->a(Lcom/koushikdutta/async/n;Ljava/nio/channels/SelectionKey;)V

    .line 723
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-interface {v0, v6}, Lcom/koushikdutta/async/a/e;->a(Lcom/koushikdutta/async/ac;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    const-string v1, "NIO"

    const-string v2, "inner loop exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 699
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 726
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 727
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/d;

    .line 728
    invoke-virtual {v0}, Lcom/koushikdutta/async/d;->c()I

    move-result v0

    .line 729
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/n;->a(I)V

    goto :goto_1

    .line 731
    :cond_6
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 732
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/d;

    .line 733
    invoke-virtual {v0}, Lcom/koushikdutta/async/d;->b()V

    goto :goto_1

    .line 735
    :cond_7
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 736
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/y;

    .line 737
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 738
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 740
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 741
    new-instance v6, Lcom/koushikdutta/async/d;

    invoke-direct {v6}, Lcom/koushikdutta/async/d;-><init>()V

    .line 742
    invoke-virtual {v6, p0, v0}, Lcom/koushikdutta/async/d;->a(Lcom/koushikdutta/async/n;Ljava/nio/channels/SelectionKey;)V

    .line 743
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v3}, Lcom/koushikdutta/async/d;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 744
    invoke-virtual {v0, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-virtual {v1, v6}, Lcom/koushikdutta/async/y;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 746
    iget-object v3, v1, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/a/b;

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 748
    :catch_1
    move-exception v3

    .line 749
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 750
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    .line 751
    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/y;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, v1, Lcom/koushikdutta/async/y;->b:Lcom/koushikdutta/async/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/koushikdutta/async/a/b;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/ac;)V

    goto/16 :goto_1

    .line 756
    :cond_8
    const-string v0, "NIO"

    const-string v1, "wtf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sget-boolean v0, Lcom/koushikdutta/async/n;->f:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 764
    :cond_9
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 495
    sget-object v1, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 496
    :try_start_0
    sget-object v0, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/n;

    .line 497
    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    monitor-exit v1

    .line 503
    :goto_0
    return v0

    .line 501
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/n;->d:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    monitor-exit v1

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/koushikdutta/async/n;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/n;->b(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/y;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/koushikdutta/async/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/u;-><init>(Lcom/koushikdutta/async/n;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/n;->b(Ljava/lang/String;)Lcom/koushikdutta/async/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/u;->a(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/koushikdutta/async/b/f;
    .locals 3
    .parameter

    .prologue
    .line 389
    new-instance v0, Lcom/koushikdutta/async/b/j;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/j;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/koushikdutta/async/n;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/v;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/v;-><init>(Lcom/koushikdutta/async/n;Ljava/lang/String;Lcom/koushikdutta/async/b/j;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 413
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 144
    monitor-enter p0

    .line 154
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 155
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/koushikdutta/async/aa;

    invoke-direct {v3, p1, v0, v1}, Lcom/koushikdutta/async/aa;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/n;->a(ZZ)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/n;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/koushikdutta/async/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/Selector;)V

    .line 165
    :cond_1
    monitor-exit p0

    .line 166
    return-object v3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/koushikdutta/async/n;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 268
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/koushikdutta/async/n;->g:Z

    .line 103
    return-void
.end method

.method public a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 517
    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "NIO"

    const-string v1, "Reentrant call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-boolean v0, Lcom/koushikdutta/async/n;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 523
    :cond_0
    const/4 v0, 0x1

    .line 524
    :try_start_1
    iget-object v3, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    .line 525
    iget-object v4, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    .line 564
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    if-eqz v0, :cond_4

    .line 568
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0, v3, v4, v0}, Lcom/koushikdutta/async/n;->c(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    :goto_1
    return-void

    .line 529
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v3

    iput-object v3, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    .line 530
    iget-object v4, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 535
    if-eqz p2, :cond_2

    .line 536
    :try_start_4
    new-instance v0, Lcom/koushikdutta/async/q;

    const-string v2, "AsyncServer"

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/q;-><init>(Lcom/koushikdutta/async/n;Ljava/lang/String;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V

    iput-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    .line 545
    :goto_2
    invoke-direct {p0}, Lcom/koushikdutta/async/n;->d()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 547
    :try_start_5
    iget-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 551
    :goto_3
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/koushikdutta/async/n;->h:Ljava/nio/channels/Selector;

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    .line 553
    monitor-exit p0

    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    monitor-exit p0

    goto :goto_1

    .line 543
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    goto :goto_2

    .line 555
    :cond_3
    if-eqz p2, :cond_5

    .line 556
    iget-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 558
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 570
    :catch_1
    move-exception v0

    .line 571
    const-string v1, "NIO"

    const-string v2, "exception?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 576
    :cond_4
    invoke-static {p0, v3, v4, p1}, Lcom/koushikdutta/async/n;->b(Lcom/koushikdutta/async/n;Ljava/nio/channels/Selector;Ljava/util/PriorityQueue;Z)V

    goto :goto_1

    .line 549
    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/koushikdutta/async/b/f;
    .locals 2
    .parameter

    .prologue
    .line 417
    new-instance v0, Lcom/koushikdutta/async/p;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/p;-><init>(Lcom/koushikdutta/async/n;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/String;)Lcom/koushikdutta/async/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/p;->a(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/n;->b:Ljava/util/PriorityQueue;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/n;->a(Lcom/koushikdutta/async/n;Ljava/util/PriorityQueue;)J

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 190
    new-instance v1, Lcom/koushikdutta/async/s;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/async/s;-><init>(Lcom/koushikdutta/async/n;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/n;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 198
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v1, "NIO"

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/koushikdutta/async/n;->e:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
