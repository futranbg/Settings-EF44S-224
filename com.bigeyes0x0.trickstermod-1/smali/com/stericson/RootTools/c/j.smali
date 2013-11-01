.class public Lcom/stericson/RootTools/c/j;
.super Ljava/lang/Thread;
.source "Shell.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/Process;

.field public c:Ljava/io/BufferedReader;

.field public d:Ljava/io/OutputStreamWriter;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 558
    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/c/j;->a:I

    .line 565
    iput-object p1, p0, Lcom/stericson/RootTools/c/j;->b:Ljava/lang/Process;

    .line 566
    iput-object p2, p0, Lcom/stericson/RootTools/c/j;->c:Ljava/io/BufferedReader;

    .line 567
    iput-object p3, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    .line 568
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;Lcom/stericson/RootTools/c/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/c/j;-><init>(Ljava/lang/Process;Ljava/io/BufferedReader;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 621
    :try_start_1
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 625
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 626
    iget-object v1, p0, Lcom/stericson/RootTools/c/j;->b:Ljava/lang/Process;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(echo -17 > /proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/oom_adj) &> /dev/null\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    const-string v1, "(echo -17 > /proc/$$/oom_adj) &> /dev/null\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 632
    :goto_1
    return-void

    .line 622
    :catch_0
    move-exception v1

    .line 623
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 630
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    const-string v1, "echo Started\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/j;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 588
    if-nez v0, :cond_1

    .line 589
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const/16 v1, -0x2a

    iput v1, p0, Lcom/stericson/RootTools/c/j;->a:I

    .line 603
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 604
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    :goto_1
    return-void

    .line 591
    :cond_1
    :try_start_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x1

    iput v0, p0, Lcom/stericson/RootTools/c/j;->a:I

    .line 595
    invoke-direct {p0}, Lcom/stericson/RootTools/c/j;->a()V

    goto :goto_1

    .line 599
    :cond_2
    const-string v0, "unkown error occured."

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 606
    :cond_3
    const-string v0, "RootAccess denied?."

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
