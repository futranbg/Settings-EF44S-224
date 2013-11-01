.class Lcom/stericson/RootTools/d/g;
.super Lcom/stericson/RootTools/c/e;
.source "RootToolsInternalMethods.java"


# instance fields
.field final synthetic m:Lcom/stericson/RootTools/d/c;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/stericson/RootTools/d/g;->m:Lcom/stericson/RootTools/d/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 812
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 813
    new-instance v0, Ljava/util/HashSet;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 814
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid=0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/d/a;->a:Z

    .line 819
    const-string v0, "Access Given"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 823
    :cond_1
    sget-boolean v0, Lcom/stericson/RootTools/d/a;->a:Z

    if-nez v0, :cond_2

    .line 824
    const-string v0, "Access Denied?"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 827
    :cond_2
    return-void
.end method
