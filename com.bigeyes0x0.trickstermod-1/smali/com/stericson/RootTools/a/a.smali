.class public Lcom/stericson/RootTools/a/a;
.super Ljava/lang/Object;
.source "Mount.java"


# instance fields
.field final a:Ljava/io/File;

.field final b:Ljava/io/File;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stericson/RootTools/a/a;->a:Ljava/io/File;

    .line 38
    iput-object p2, p0, Lcom/stericson/RootTools/a/a;->b:Ljava/io/File;

    .line 39
    iput-object p3, p0, Lcom/stericson/RootTools/a/a;->c:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/stericson/RootTools/a/a;->d:Ljava/util/Set;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stericson/RootTools/a/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stericson/RootTools/a/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/stericson/RootTools/a/a;->d:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const-string v0, "%s on %s type %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/stericson/RootTools/a/a;->a:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/stericson/RootTools/a/a;->b:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/stericson/RootTools/a/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/stericson/RootTools/a/a;->d:Ljava/util/Set;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
