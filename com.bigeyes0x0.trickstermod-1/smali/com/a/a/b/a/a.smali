.class public final Lcom/a/a/b/a/a;
.super Lcom/a/a/ad;
.source "ArrayTypeAdapter.java"


# static fields
.field public static final a:Lcom/a/a/ae;


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Lcom/a/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/a/a/b/a/b;

    invoke-direct {v0}, Lcom/a/a/b/a/b;-><init>()V

    sput-object v0, Lcom/a/a/b/a/a;->a:Lcom/a/a/ae;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 58
    new-instance v0, Lcom/a/a/b/a/u;

    invoke-direct {v0, p1, p2, p3}, Lcom/a/a/b/a/u;-><init>(Lcom/a/a/j;Lcom/a/a/ad;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/a/a/b/a/a;->c:Lcom/a/a/ad;

    .line 60
    iput-object p3, p0, Lcom/a/a/b/a/a;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()Lcom/a/a/d/a;

    .line 91
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/a/a/b/a/a;->c:Lcom/a/a/ad;

    invoke-virtual {v3, p1, v2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()Lcom/a/a/d/a;

    goto :goto_0
.end method
