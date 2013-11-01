.class Lme/timos/a/a/f;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/a/a/b;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lme/timos/a/a/i;

.field private final synthetic d:Landroid/os/Handler;

.field private final synthetic e:Lme/timos/a/a/j;


# direct methods
.method constructor <init>(Lme/timos/a/a/b;Ljava/util/List;Lme/timos/a/a/i;Landroid/os/Handler;Lme/timos/a/a/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/f;->a:Lme/timos/a/a/b;

    iput-object p2, p0, Lme/timos/a/a/f;->b:Ljava/util/List;

    iput-object p3, p0, Lme/timos/a/a/f;->c:Lme/timos/a/a/i;

    iput-object p4, p0, Lme/timos/a/a/f;->d:Landroid/os/Handler;

    iput-object p5, p0, Lme/timos/a/a/f;->e:Lme/timos/a/a/j;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 950
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 951
    iget-object v0, p0, Lme/timos/a/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 961
    iget-object v0, p0, Lme/timos/a/a/f;->a:Lme/timos/a/a/b;

    invoke-virtual {v0}, Lme/timos/a/a/b;->b()V

    .line 962
    iget-object v0, p0, Lme/timos/a/a/f;->a:Lme/timos/a/a/b;

    iget-boolean v0, v0, Lme/timos/a/a/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/timos/a/a/f;->c:Lme/timos/a/a/i;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lme/timos/a/a/f;->d:Landroid/os/Handler;

    new-instance v2, Lme/timos/a/a/g;

    iget-object v3, p0, Lme/timos/a/a/f;->c:Lme/timos/a/a/i;

    iget-object v4, p0, Lme/timos/a/a/f;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lme/timos/a/a/g;-><init>(Lme/timos/a/a/f;Lme/timos/a/a/i;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    :cond_0
    iget-object v0, p0, Lme/timos/a/a/f;->a:Lme/timos/a/a/b;

    iget-boolean v0, v0, Lme/timos/a/a/b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/timos/a/a/f;->e:Lme/timos/a/a/j;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lme/timos/a/a/f;->d:Landroid/os/Handler;

    new-instance v2, Lme/timos/a/a/h;

    iget-object v3, p0, Lme/timos/a/a/f;->e:Lme/timos/a/a/j;

    iget-object v4, p0, Lme/timos/a/a/f;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lme/timos/a/a/h;-><init>(Lme/timos/a/a/f;Lme/timos/a/a/j;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 976
    :cond_1
    return-void

    .line 951
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/timos/a/a/p;

    .line 953
    :try_start_0
    iget-object v3, p0, Lme/timos/a/a/f;->a:Lme/timos/a/a/b;

    invoke-virtual {v3, v0}, Lme/timos/a/a/b;->a(Lme/timos/a/a/p;)V

    .line 954
    new-instance v3, Lme/timos/a/a/n;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lme/timos/a/a/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lme/timos/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    invoke-virtual {v0}, Lme/timos/a/a/a;->a()Lme/timos/a/a/n;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
