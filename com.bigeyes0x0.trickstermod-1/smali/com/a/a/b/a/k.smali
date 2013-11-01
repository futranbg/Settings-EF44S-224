.class public final Lcom/a/a/b/a/k;
.super Lcom/a/a/ad;
.source "ObjectTypeAdapter.java"


# static fields
.field public static final a:Lcom/a/a/ae;


# instance fields
.field private final b:Lcom/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/a/a/b/a/l;

    invoke-direct {v0}, Lcom/a/a/b/a/l;-><init>()V

    sput-object v0, Lcom/a/a/b/a/k;->a:Lcom/a/a/ae;

    return-void
.end method

.method private constructor <init>(Lcom/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/a/a/b/a/k;->b:Lcom/a/a/j;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/j;Lcom/a/a/b/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/a/a/b/a/k;-><init>(Lcom/a/a/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/k;->b:Lcom/a/a/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Ljava/lang/Class;)Lcom/a/a/ad;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/a/a/b/a/k;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()Lcom/a/a/d/a;

    .line 103
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Lcom/a/a/d/a;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/a/a/ad;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_0
.end method
