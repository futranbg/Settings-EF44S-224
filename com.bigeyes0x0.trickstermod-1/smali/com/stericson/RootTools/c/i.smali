.class Lcom/stericson/RootTools/c/i;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/stericson/RootTools/c/f;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 383
    move-object v0, v2

    .line 385
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/f;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    const/4 v3, 0x0

    sput-boolean v3, Lcom/stericson/RootTools/c/f;->b:Z

    .line 387
    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->k(Lcom/stericson/RootTools/c/f;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 388
    const/4 v3, 0x1

    sput-boolean v3, Lcom/stericson/RootTools/c/f;->b:Z

    .line 393
    if-nez v4, :cond_3

    .line 451
    :cond_1
    :goto_1
    const-string v1, "Read all output"

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    :try_start_1
    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->o(Lcom/stericson/RootTools/c/f;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 454
    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->o(Lcom/stericson/RootTools/c/f;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 457
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V

    .line 458
    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->k(Lcom/stericson/RootTools/c/f;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Reader;)V

    .line 460
    const-string v1, "Shell destroyed"

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 462
    :goto_3
    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->e(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 463
    if-nez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->e(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/c/a;

    .line 466
    :cond_2
    const-string v1, "Unexpected Termination."

    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/c/a;->b(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->m(Lcom/stericson/RootTools/c/f;)I

    move-object v0, v2

    goto :goto_3

    .line 396
    :cond_3
    if-nez v0, :cond_8

    .line 397
    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->e(Lcom/stericson/RootTools/c/f;)I

    move-result v3

    iget-object v6, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v6}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 398
    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v3}, Lcom/stericson/RootTools/c/f;->e(Lcom/stericson/RootTools/c/f;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/c/a;

    move-object v3, v0

    .line 411
    :goto_4
    const-string v0, "F*D^W@#FGF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 414
    if-ne v0, v5, :cond_6

    .line 418
    iget v0, v3, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {v3, v0, v4}, Lcom/stericson/RootTools/c/a;->c(ILjava/lang/String;)V

    :cond_5
    move-object v0, v3

    .line 449
    goto/16 :goto_0

    .line 421
    :cond_6
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 423
    array-length v0, v4

    if-lt v0, v7, :cond_5

    const/4 v0, 0x1

    aget-object v0, v4, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_5

    .line 427
    const/4 v0, 0x1

    :try_start_3
    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 434
    :goto_5
    const/4 v6, 0x2

    :try_start_4
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    .line 438
    :goto_6
    :try_start_5
    iget-object v6, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v6}, Lcom/stericson/RootTools/c/f;->l(Lcom/stericson/RootTools/c/f;)I

    move-result v6

    if-ne v0, v6, :cond_5

    .line 439
    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/c/a;->a(I)V

    .line 440
    invoke-virtual {v3}, Lcom/stericson/RootTools/c/a;->b()V

    .line 443
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->m(Lcom/stericson/RootTools/c/f;)I

    .line 444
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->n(Lcom/stericson/RootTools/c/f;)I

    move-object v0, v2

    .line 445
    goto/16 :goto_0

    .line 428
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_5

    .line 435
    :catch_1
    move-exception v4

    move v4, v5

    goto :goto_6

    .line 471
    :cond_7
    iget-object v0, p0, Lcom/stericson/RootTools/c/i;->a:Lcom/stericson/RootTools/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/f;I)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 476
    :goto_7
    return-void

    .line 473
    :catch_2
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v0}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_7

    .line 455
    :catch_3
    move-exception v1

    goto/16 :goto_2

    :cond_8
    move-object v3, v0

    goto :goto_4
.end method
