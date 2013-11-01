.class public abstract enum Lcom/a/a/aa;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# static fields
.field public static final enum a:Lcom/a/a/aa;

.field public static final enum b:Lcom/a/a/aa;

.field private static final synthetic c:[Lcom/a/a/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/a/a/ab;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/a/a/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/aa;->a:Lcom/a/a/aa;

    .line 45
    new-instance v0, Lcom/a/a/ac;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/a/a/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/aa;->b:Lcom/a/a/aa;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/aa;

    sget-object v1, Lcom/a/a/aa;->a:Lcom/a/a/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/aa;->b:Lcom/a/a/aa;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/a/aa;->c:[Lcom/a/a/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/ab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/a/a/aa;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/a/a/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/aa;

    return-object v0
.end method

.method public static values()[Lcom/a/a/aa;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/a/a/aa;->c:[Lcom/a/a/aa;

    invoke-virtual {v0}, [Lcom/a/a/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/aa;

    return-object v0
.end method
