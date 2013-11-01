.class public Lcom/koushikdutta/async/az;
.super Ljava/lang/Object;
.source "PushParser.java"


# static fields
.field static e:Ljava/util/Hashtable;

.field static final synthetic f:Z


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/am;

.field c:Lcom/koushikdutta/async/ak;

.field d:Ljava/nio/ByteOrder;

.field private g:Ljava/util/LinkedList;

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/koushikdutta/async/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/koushikdutta/async/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/az;->f:Z

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/az;->e:Ljava/util/Hashtable;

    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/az;->a:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/az;->h:Ljava/util/ArrayList;

    .line 111
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/az;->d:Ljava/nio/ByteOrder;

    .line 94
    iput-object p1, p0, Lcom/koushikdutta/async/az;->c:Lcom/koushikdutta/async/ak;

    .line 95
    new-instance v0, Lcom/koushikdutta/async/am;

    invoke-direct {v0}, Lcom/koushikdutta/async/am;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/az;->b:Lcom/koushikdutta/async/am;

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/async/az;->c:Lcom/koushikdutta/async/ak;

    iget-object v1, p0, Lcom/koushikdutta/async/az;->b:Lcom/koushikdutta/async/am;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/ak;->a(Lcom/koushikdutta/async/a/d;)V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/az;Lcom/koushikdutta/async/bf;)Lcom/koushikdutta/async/bf;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/koushikdutta/async/az;->i:Lcom/koushikdutta/async/bf;

    return-object p1
.end method

.method static synthetic a(Lcom/koushikdutta/async/az;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method static b(Lcom/koushikdutta/async/bf;)Ljava/lang/reflect/Method;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    sget-object v0, Lcom/koushikdutta/async/az;->e:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 254
    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 259
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 260
    aget-object v0, v0, v1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 263
    const-string v4, "tap"

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    sget-object v1, Lcom/koushikdutta/async/az;->e:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 268
    :cond_3
    const-string v0, "-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n"

    .line 274
    sget-boolean v0, Lcom/koushikdutta/async/az;->f:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 275
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/koushikdutta/async/az;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/az;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/az;)Lcom/koushikdutta/async/bf;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/az;->i:Lcom/koushikdutta/async/bf;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/az;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public a(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/az;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/koushikdutta/async/bd;

    invoke-direct {v0}, Lcom/koushikdutta/async/bd;-><init>()V

    .line 79
    iput-byte p1, v0, Lcom/koushikdutta/async/bd;->a:B

    .line 80
    iput-object p2, v0, Lcom/koushikdutta/async/bd;->b:Lcom/koushikdutta/async/a/d;

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    iget v0, p0, Lcom/koushikdutta/async/az;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/az;->a:I

    .line 83
    return-object p0
.end method

.method public a(I)Lcom/koushikdutta/async/az;
    .locals 2
    .parameter

    .prologue
    .line 53
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 54
    iget v0, p0, Lcom/koushikdutta/async/az;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/az;->a:I

    .line 55
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/bb;

    invoke-direct {v0}, Lcom/koushikdutta/async/bb;-><init>()V

    .line 56
    iput p1, v0, Lcom/koushikdutta/async/bb;->a:I

    .line 57
    iget-object v1, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/bf;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    sget-boolean v0, Lcom/koushikdutta/async/az;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/az;->i:Lcom/koushikdutta/async/bf;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/az;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/az;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/koushikdutta/async/az;->i:Lcom/koushikdutta/async/bf;

    .line 126
    new-instance v0, Lcom/koushikdutta/async/ba;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/ba;-><init>(Lcom/koushikdutta/async/az;)V

    .line 249
    return-void
.end method
