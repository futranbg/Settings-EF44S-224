.class public final enum Lme/timos/br/a/a;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# static fields
.field public static final enum a:Lme/timos/br/a/a;

.field public static final enum b:Lme/timos/br/a/a;

.field public static final enum c:Lme/timos/br/a/a;

.field public static final enum d:Lme/timos/br/a/a;

.field public static final enum e:Lme/timos/br/a/a;

.field private static final synthetic f:[Lme/timos/br/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lme/timos/br/a/a;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lme/timos/br/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/a;->a:Lme/timos/br/a/a;

    new-instance v0, Lme/timos/br/a/a;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lme/timos/br/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    new-instance v0, Lme/timos/br/a/a;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lme/timos/br/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/a;->c:Lme/timos/br/a/a;

    new-instance v0, Lme/timos/br/a/a;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v5}, Lme/timos/br/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/a;->d:Lme/timos/br/a/a;

    new-instance v0, Lme/timos/br/a/a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lme/timos/br/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lme/timos/br/a/a;

    sget-object v1, Lme/timos/br/a/a;->a:Lme/timos/br/a/a;

    aput-object v1, v0, v2

    sget-object v1, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lme/timos/br/a/a;->c:Lme/timos/br/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lme/timos/br/a/a;->d:Lme/timos/br/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    aput-object v1, v0, v6

    sput-object v0, Lme/timos/br/a/a;->f:[Lme/timos/br/a/a;

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

.method public static valueOf(Ljava/lang/String;)Lme/timos/br/a/a;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lme/timos/br/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/timos/br/a/a;

    return-object v0
.end method

.method public static values()[Lme/timos/br/a/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lme/timos/br/a/a;->f:[Lme/timos/br/a/a;

    array-length v1, v0

    new-array v2, v1, [Lme/timos/br/a/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
