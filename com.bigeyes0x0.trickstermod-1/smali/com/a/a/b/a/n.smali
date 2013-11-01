.class Lcom/a/a/b/a/n;
.super Lcom/a/a/b/a/p;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field final a:Lcom/a/a/ad;

.field final synthetic b:Lcom/a/a/j;

.field final synthetic c:Lcom/a/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/a/a/b/a/m;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/m;Ljava/lang/String;ZZLcom/a/a/j;Lcom/a/a/c/a;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/a/a/b/a/n;->f:Lcom/a/a/b/a/m;

    iput-object p5, p0, Lcom/a/a/b/a/n;->b:Lcom/a/a/j;

    iput-object p6, p0, Lcom/a/a/b/a/n;->c:Lcom/a/a/c/a;

    iput-object p7, p0, Lcom/a/a/b/a/n;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/a/a/b/a/n;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/a/a/b/a/p;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lcom/a/a/b/a/n;->b:Lcom/a/a/j;

    iget-object v1, p0, Lcom/a/a/b/a/n;->c:Lcom/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/n;->a:Lcom/a/a/ad;

    return-void
.end method


# virtual methods
.method a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/a/a/b/a/n;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/a/a/b/a/u;

    iget-object v2, p0, Lcom/a/a/b/a/n;->b:Lcom/a/a/j;

    iget-object v3, p0, Lcom/a/a/b/a/n;->a:Lcom/a/a/ad;

    iget-object v4, p0, Lcom/a/a/b/a/n;->c:Lcom/a/a/c/a;

    invoke-virtual {v4}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/a/a/b/a/u;-><init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V

    .line 89
    invoke-virtual {v1, p1, v0}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
