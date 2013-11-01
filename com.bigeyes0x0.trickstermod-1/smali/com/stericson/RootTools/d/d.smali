.class Lcom/stericson/RootTools/d/d;
.super Lcom/stericson/RootTools/c/e;
.source "RootToolsInternalMethods.java"


# instance fields
.field final synthetic m:Ljava/util/List;

.field final synthetic n:Lcom/stericson/RootTools/d/c;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/stericson/RootTools/d/d;->n:Lcom/stericson/RootTools/d/c;

    iput-object p5, p0, Lcom/stericson/RootTools/d/d;->m:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-static {p2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/stericson/RootTools/d/d;->m:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method
