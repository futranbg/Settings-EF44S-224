.class Lme/timos/a/a/d;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/a/a/b;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Lme/timos/a/a/m;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lme/timos/a/a/b;ZLjava/util/List;Lme/timos/a/a/m;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/d;->a:Lme/timos/a/a/b;

    iput-boolean p2, p0, Lme/timos/a/a/d;->b:Z

    iput-object p3, p0, Lme/timos/a/a/d;->c:Ljava/util/List;

    iput-object p4, p0, Lme/timos/a/a/d;->d:Lme/timos/a/a/m;

    iput-object p5, p0, Lme/timos/a/a/d;->e:Landroid/os/Handler;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 614
    new-instance v1, Lme/timos/a/a/n;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 615
    const/4 v0, 0x0

    .line 617
    :try_start_0
    iget-object v2, p0, Lme/timos/a/a/d;->a:Lme/timos/a/a/b;

    iget-boolean v3, p0, Lme/timos/a/a/d;->b:Z

    iget-object v4, p0, Lme/timos/a/a/d;->c:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lme/timos/a/a/b;->a(ZLjava/util/List;)Lme/timos/a/a/o;
    :try_end_0
    .catch Lme/timos/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 623
    :goto_0
    iget-object v2, p0, Lme/timos/a/a/d;->a:Lme/timos/a/a/b;

    invoke-virtual {v2}, Lme/timos/a/a/b;->b()V

    .line 627
    iget-object v2, p0, Lme/timos/a/a/d;->a:Lme/timos/a/a/b;

    iget-boolean v2, v2, Lme/timos/a/a/b;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lme/timos/a/a/d;->d:Lme/timos/a/a/m;

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lme/timos/a/a/d;->e:Landroid/os/Handler;

    new-instance v3, Lme/timos/a/a/e;

    iget-object v4, p0, Lme/timos/a/a/d;->d:Lme/timos/a/a/m;

    invoke-direct {v3, p0, v4, v1, v0}, Lme/timos/a/a/e;-><init>(Lme/timos/a/a/d;Lme/timos/a/a/m;Lme/timos/a/a/n;Lme/timos/a/a/o;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_0
    return-void

    .line 619
    :catch_0
    move-exception v1

    .line 620
    invoke-virtual {v1}, Lme/timos/a/a/a;->a()Lme/timos/a/a/n;

    move-result-object v1

    goto :goto_0
.end method
