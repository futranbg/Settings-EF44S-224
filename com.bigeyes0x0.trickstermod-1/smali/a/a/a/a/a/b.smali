.class public La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xbb8

    iput v0, p0, La/a/a/a/a/b;->a:I

    .line 33
    iput v1, p0, La/a/a/a/a/b;->b:I

    .line 34
    iput v1, p0, La/a/a/a/a/b;->c:I

    .line 31
    return-void
.end method

.method static synthetic a(La/a/a/a/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, La/a/a/a/a/b;->a:I

    return v0
.end method

.method static synthetic b(La/a/a/a/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, La/a/a/a/a/b;->b:I

    return v0
.end method

.method static synthetic c(La/a/a/a/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, La/a/a/a/a/b;->c:I

    return v0
.end method


# virtual methods
.method public a()La/a/a/a/a/a;
    .locals 2

    .prologue
    .line 42
    new-instance v0, La/a/a/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/a/a;-><init>(La/a/a/a/a/b;La/a/a/a/a/a;)V

    return-object v0
.end method

.method public a(I)La/a/a/a/a/b;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, La/a/a/a/a/b;->a:I

    .line 57
    return-object p0
.end method
