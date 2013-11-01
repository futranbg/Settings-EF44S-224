.class public La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final a:La/a/a/a/a/a;


# instance fields
.field final b:I

.field final c:I

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/b;-><init>()V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, La/a/a/a/a/b;->a(I)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()La/a/a/a/a/a;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a;->a:La/a/a/a/a/a;

    .line 108
    return-void
.end method

.method private constructor <init>(La/a/a/a/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, La/a/a/a/a/b;->a(La/a/a/a/a/b;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->b:I

    .line 122
    invoke-static {p1}, La/a/a/a/a/b;->b(La/a/a/a/a/b;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->c:I

    .line 123
    invoke-static {p1}, La/a/a/a/a/b;->c(La/a/a/a/a/b;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->d:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/a/b;La/a/a/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, La/a/a/a/a/a;-><init>(La/a/a/a/a/b;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration{durationInMilliseconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget v1, p0, La/a/a/a/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget v1, p0, La/a/a/a/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
