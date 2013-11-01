.class Lcom/stericson/RootTools/c/g;
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
    .line 293
    iput-object p1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/f;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/f;)I

    move-result v0

    iget-object v2, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v2}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/c/f;->a:Z

    .line 306
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;I)I

    .line 360
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V

    .line 362
    :goto_2
    return-void

    .line 308
    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :try_start_5
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/f;)I

    move-result v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->d(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 315
    :goto_3
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->e(Lcom/stericson/RootTools/c/f;)I

    move-result v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 317
    const-string v0, "Waiting for read and write to catch up before cleanup."

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 356
    :catch_1
    move-exception v0

    .line 357
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 359
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;I)I

    .line 360
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V

    goto :goto_2

    .line 322
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->f(Lcom/stericson/RootTools/c/f;)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/f;)I

    move-result v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 332
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/c/f;->a:Z

    .line 333
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->c(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/c/a;

    .line 334
    invoke-virtual {v0}, Lcom/stericson/RootTools/c/a;->g()V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stericson/RootTools/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\necho F*D^W@#FGF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->h(Lcom/stericson/RootTools/c/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " $?\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 341
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->i(Lcom/stericson/RootTools/c/f;)I

    .line 342
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->j(Lcom/stericson/RootTools/c/f;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 359
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;I)I

    .line 360
    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    iget-object v2, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v2}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V

    throw v0

    .line 343
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->b(Lcom/stericson/RootTools/c/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/c/f;->a:Z

    .line 348
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    const-string v1, "\nexit 0\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 350
    const-string v0, "Closing shell"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 359
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v0, v3}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;I)I

    .line 360
    iget-object v0, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    iget-object v1, p0, Lcom/stericson/RootTools/c/g;->a:Lcom/stericson/RootTools/c/f;

    invoke-static {v1}, Lcom/stericson/RootTools/c/f;->g(Lcom/stericson/RootTools/c/f;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/RootTools/c/f;->a(Lcom/stericson/RootTools/c/f;Ljava/io/Writer;)V

    goto/16 :goto_2
.end method
