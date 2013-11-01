.class Lcom/stericson/RootTools/d/e;
.super Lcom/stericson/RootTools/c/e;
.source "RootToolsInternalMethods.java"


# instance fields
.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/stericson/RootTools/d/c;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/d/c;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/stericson/RootTools/d/e;->o:Lcom/stericson/RootTools/d/c;

    iput-object p5, p0, Lcom/stericson/RootTools/d/e;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/stericson/RootTools/d/e;->n:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1263
    iget-object v0, p0, Lcom/stericson/RootTools/d/e;->m:Ljava/lang/String;

    const-string v1, "toolbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    const-string v0, "no such tool"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    sput-boolean v2, Lcom/stericson/RootTools/d/a;->c:Z

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/stericson/RootTools/d/e;->m:Ljava/lang/String;

    const-string v1, "busybox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/stericson/RootTools/d/e;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const-string v0, "Found util!"

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 1271
    sput-boolean v2, Lcom/stericson/RootTools/d/a;->c:Z

    goto :goto_0
.end method
