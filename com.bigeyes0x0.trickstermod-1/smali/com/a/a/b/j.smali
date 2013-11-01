.class Lcom/a/a/b/j;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/a/a/b/ad;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/a/a/b/f;

.field private final d:Lcom/a/a/b/ag;


# direct methods
.method constructor <init>(Lcom/a/a/b/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/a/a/b/j;->c:Lcom/a/a/b/f;

    iput-object p2, p0, Lcom/a/a/b/j;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/a/a/b/j;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {}, Lcom/a/a/b/ag;->a()Lcom/a/a/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/j;->d:Lcom/a/a/b/ag;

    return-void
.end method
