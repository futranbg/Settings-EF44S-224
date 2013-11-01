.class Lcom/stericson/RootTools/d/h;
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
    .line 884
    iput-object p1, p0, Lcom/stericson/RootTools/d/h;->m:Lcom/stericson/RootTools/d/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/stericson/RootTools/c/e;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 887
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 888
    const-string v0, ""

    .line 890
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 891
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 898
    :try_start_0
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 899
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 900
    const-string v2, "Symlink found."

    invoke-static {v2}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    .line 901
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 906
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/stericson/RootTools/d/h;->m:Lcom/stericson/RootTools/d/c;

    invoke-virtual {v1, p2}, Lcom/stericson/RootTools/d/c;->a(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;

    move-result-object v1

    sput-object v1, Lcom/stericson/RootTools/d/a;->i:Lcom/stericson/RootTools/a/b;

    .line 907
    sget-object v1, Lcom/stericson/RootTools/d/a;->i:Lcom/stericson/RootTools/a/b;

    if-eqz v1, :cond_0

    .line 908
    sget-object v1, Lcom/stericson/RootTools/d/a;->i:Lcom/stericson/RootTools/a/b;

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :catch_1
    move-exception v1

    goto :goto_1
.end method
