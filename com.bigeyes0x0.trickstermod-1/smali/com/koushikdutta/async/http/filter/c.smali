.class final enum Lcom/koushikdutta/async/http/filter/c;
.super Ljava/lang/Enum;
.source "ChunkedInputFilter.java"


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum b:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum c:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum d:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum e:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum f:Lcom/koushikdutta/async/http/filter/c;

.field public static final enum g:Lcom/koushikdutta/async/http/filter/c;

.field private static final synthetic h:[Lcom/koushikdutta/async/http/filter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK_LEN"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->a:Lcom/koushikdutta/async/http/filter/c;

    .line 15
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK_LEN_CR"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->b:Lcom/koushikdutta/async/http/filter/c;

    .line 16
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK_LEN_CRLF"

    invoke-direct {v0, v1, v5}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/http/filter/c;

    .line 17
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK"

    invoke-direct {v0, v1, v6}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->d:Lcom/koushikdutta/async/http/filter/c;

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK_CR"

    invoke-direct {v0, v1, v7}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->e:Lcom/koushikdutta/async/http/filter/c;

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "CHUNK_CRLF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->f:Lcom/koushikdutta/async/http/filter/c;

    .line 20
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    const-string v1, "COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/filter/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->g:Lcom/koushikdutta/async/http/filter/c;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/koushikdutta/async/http/filter/c;

    sget-object v1, Lcom/koushikdutta/async/http/filter/c;->a:Lcom/koushikdutta/async/http/filter/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/async/http/filter/c;->b:Lcom/koushikdutta/async/http/filter/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/http/filter/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/koushikdutta/async/http/filter/c;->d:Lcom/koushikdutta/async/http/filter/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/koushikdutta/async/http/filter/c;->e:Lcom/koushikdutta/async/http/filter/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/koushikdutta/async/http/filter/c;->f:Lcom/koushikdutta/async/http/filter/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/koushikdutta/async/http/filter/c;->g:Lcom/koushikdutta/async/http/filter/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/koushikdutta/async/http/filter/c;->h:[Lcom/koushikdutta/async/http/filter/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/filter/c;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/koushikdutta/async/http/filter/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/filter/c;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/filter/c;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/koushikdutta/async/http/filter/c;->h:[Lcom/koushikdutta/async/http/filter/c;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/filter/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/filter/c;

    return-object v0
.end method
