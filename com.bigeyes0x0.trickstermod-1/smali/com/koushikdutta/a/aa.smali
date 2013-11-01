.class final enum Lcom/koushikdutta/a/aa;
.super Ljava/lang/Enum;
.source "ScaleMode.java"


# static fields
.field public static final enum a:Lcom/koushikdutta/a/aa;

.field public static final enum b:Lcom/koushikdutta/a/aa;

.field public static final enum c:Lcom/koushikdutta/a/aa;

.field private static final synthetic d:[Lcom/koushikdutta/a/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/koushikdutta/a/aa;

    const-string v1, "FitXY"

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/a/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/a/aa;->a:Lcom/koushikdutta/a/aa;

    .line 5
    new-instance v0, Lcom/koushikdutta/a/aa;

    const-string v1, "CenterCrop"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/a/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/a/aa;->b:Lcom/koushikdutta/a/aa;

    .line 6
    new-instance v0, Lcom/koushikdutta/a/aa;

    const-string v1, "CenterInside"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/a/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/a/aa;->c:Lcom/koushikdutta/a/aa;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/a/aa;

    sget-object v1, Lcom/koushikdutta/a/aa;->a:Lcom/koushikdutta/a/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/a/aa;->b:Lcom/koushikdutta/a/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/a/aa;->c:Lcom/koushikdutta/a/aa;

    aput-object v1, v0, v4

    sput-object v0, Lcom/koushikdutta/a/aa;->d:[Lcom/koushikdutta/a/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/koushikdutta/a/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/a/aa;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/a/aa;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/koushikdutta/a/aa;->d:[Lcom/koushikdutta/a/aa;

    invoke-virtual {v0}, [Lcom/koushikdutta/a/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/a/aa;

    return-object v0
.end method
