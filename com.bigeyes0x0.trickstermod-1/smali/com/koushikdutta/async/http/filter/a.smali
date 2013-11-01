.class public Lcom/koushikdutta/async/http/filter/a;
.super Lcom/koushikdutta/async/at;
.source "ChunkedInputFilter.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field private g:I

.field private h:I

.field private i:Lcom/koushikdutta/async/http/filter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/http/filter/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/a;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/at;-><init>()V

    .line 9
    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->h:I

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->a:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    .line 13
    return-void
.end method

.method private a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/a;->a(CC)Z

    move-result v0

    return v0
.end method

.method private a(CC)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expeceted, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->a(Ljava/lang/Exception;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/a;->a(CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 42
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 43
    sget-object v0, Lcom/koushikdutta/async/http/filter/b;->a:[I

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/filter/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->f()C

    move-result v0

    .line 46
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 47
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->b:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    .line 62
    :goto_1
    iget v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->a(Ljava/lang/Exception;)V

    .line 114
    :cond_1
    :goto_2
    return-void

    .line 50
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    .line 51
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 52
    iget v1, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    goto :goto_1

    .line 53
    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 54
    iget v1, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    goto :goto_1

    .line 55
    :cond_4
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x46

    if-gt v0, v1, :cond_5

    .line 56
    iget v1, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    goto :goto_1

    .line 58
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid chunk length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/filter/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 65
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->f()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->d:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    goto/16 :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    .line 71
    iget v1, p0, Lcom/koushikdutta/async/http/filter/a;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 72
    iget v2, p0, Lcom/koushikdutta/async/http/filter/a;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/koushikdutta/async/http/filter/a;->h:I

    .line 73
    iget v2, p0, Lcom/koushikdutta/async/http/filter/a;->h:I

    if-nez v2, :cond_6

    .line 74
    sget-object v2, Lcom/koushikdutta/async/http/filter/c;->e:Lcom/koushikdutta/async/http/filter/c;

    iput-object v2, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    .line 76
    :cond_6
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ah;->a(I)Lcom/koushikdutta/async/ah;

    move-result-object v2

    .line 79
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v3

    .line 80
    sget-boolean v4, Lcom/koushikdutta/async/http/filter/a;->f:Z

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v4

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v5

    add-int/2addr v4, v5

    if-eq v0, v4, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_7
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/a;->f:Z

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_8
    invoke-static {p0, v2}, Lcom/koushikdutta/async/bh;->a(Lcom/koushikdutta/async/ak;Lcom/koushikdutta/async/ah;)V

    .line 83
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/a;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->c()I

    move-result v0

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->f()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->f:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    goto/16 :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/ah;->f()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    if-lez v0, :cond_9

    .line 94
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->a:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    .line 101
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/a;->g:I

    goto/16 :goto_0

    .line 98
    :cond_9
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->g:Lcom/koushikdutta/async/http/filter/c;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/a;->i:Lcom/koushikdutta/async/http/filter/c;

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 104
    :pswitch_5
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/a;->f:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
