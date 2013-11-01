.class Lcom/a/a/b/a/al;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# instance fields
.field final synthetic a:Lcom/a/a/ad;

.field final synthetic b:Lcom/a/a/b/a/ak;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/ak;Lcom/a/a/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/a/a/b/a/al;->b:Lcom/a/a/b/a/ak;

    iput-object p2, p0, Lcom/a/a/b/a/al;->a:Lcom/a/a/ad;

    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/al;->a(Lcom/a/a/d/a;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/sql/Timestamp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/a/a/b/a/al;->a:Lcom/a/a/ad;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 532
    return-void
.end method
