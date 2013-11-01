.class Lcom/a/a/b/t;
.super Lcom/a/a/ad;
.source "Excluder.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/a/a/j;

.field final synthetic d:Lcom/a/a/c/a;

.field final synthetic e:Lcom/a/a/b/s;

.field private f:Lcom/a/a/ad;


# direct methods
.method constructor <init>(Lcom/a/a/b/s;ZZLcom/a/a/j;Lcom/a/a/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/a/a/b/t;->e:Lcom/a/a/b/s;

    iput-boolean p2, p0, Lcom/a/a/b/t;->a:Z

    iput-boolean p3, p0, Lcom/a/a/b/t;->b:Z

    iput-object p4, p0, Lcom/a/a/b/t;->c:Lcom/a/a/j;

    iput-object p5, p0, Lcom/a/a/b/t;->d:Lcom/a/a/c/a;

    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method

.method private a()Lcom/a/a/ad;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/a/a/b/t;->f:Lcom/a/a/ad;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/t;->c:Lcom/a/a/j;

    iget-object v1, p0, Lcom/a/a/b/t;->e:Lcom/a/a/b/s;

    iget-object v2, p0, Lcom/a/a/b/t;->d:Lcom/a/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/j;->a(Lcom/a/a/ae;Lcom/a/a/c/a;)Lcom/a/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/t;->f:Lcom/a/a/ad;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/a/a/b/t;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/a/a/b/t;->a()Lcom/a/a/ad;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_0
.end method
