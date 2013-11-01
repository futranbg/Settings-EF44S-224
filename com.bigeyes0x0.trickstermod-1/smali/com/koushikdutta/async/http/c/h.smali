.class public final Lcom/koushikdutta/async/http/c/h;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/b;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/h;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p2, p0, Lcom/koushikdutta/async/http/c/h;->b:Ljava/lang/String;

    .line 689
    iput-wide p3, p0, Lcom/koushikdutta/async/http/c/h;->c:J

    .line 690
    iput-object p5, p0, Lcom/koushikdutta/async/http/c/h;->d:[Ljava/io/InputStream;

    .line 691
    iput-object p6, p0, Lcom/koushikdutta/async/http/c/h;->e:[J

    .line 692
    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/koushikdutta/async/http/c/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    invoke-direct/range {p0 .. p6}, Lcom/koushikdutta/async/http/c/h;-><init>(Lcom/koushikdutta/async/http/c/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/h;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)J
    .locals 2
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/h;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 719
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/h;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 720
    invoke-static {v3}, Lcom/koushikdutta/async/http/c/m;->a(Ljava/io/Closeable;)V

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method
