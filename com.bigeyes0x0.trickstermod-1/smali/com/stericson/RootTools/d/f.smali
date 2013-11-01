.class Lcom/stericson/RootTools/d/f;
.super Lcom/stericson/RootTools/c/e;
.source "RootToolsInternalMethods.java"


# instance fields
.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/util/List;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/stericson/RootTools/d/c;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/stericson/RootTools/d/f;->p:Lcom/stericson/RootTools/d/c;

    iput-object p5, p0, Lcom/stericson/RootTools/d/f;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/stericson/RootTools/d/f;->n:Ljava/util/List;

    iput-object p7, p0, Lcom/stericson/RootTools/d/f;->o:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 613
    const-string v0, "File: "

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stericson/RootTools/d/f;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/stericson/RootTools/d/f;->n:Ljava/util/List;

    iget-object v1, p0, Lcom/stericson/RootTools/d/f;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stericson/RootTools/d/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was found here: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stericson/RootTools/d/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 619
    :cond_0
    invoke-static {p2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 620
    return-void
.end method
