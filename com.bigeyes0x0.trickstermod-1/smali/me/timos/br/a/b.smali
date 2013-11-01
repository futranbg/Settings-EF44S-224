.class public final enum Lme/timos/br/a/b;
.super Ljava/lang/Enum;
.source "LogStorageType.java"


# static fields
.field public static final enum a:Lme/timos/br/a/b;

.field public static final enum b:Lme/timos/br/a/b;

.field private static final synthetic c:[Lme/timos/br/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lme/timos/br/a/b;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2}, Lme/timos/br/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    new-instance v0, Lme/timos/br/a/b;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v3}, Lme/timos/br/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/b;->b:Lme/timos/br/a/b;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lme/timos/br/a/b;

    sget-object v1, Lme/timos/br/a/b;->a:Lme/timos/br/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lme/timos/br/a/b;->b:Lme/timos/br/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lme/timos/br/a/b;->c:[Lme/timos/br/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lme/timos/br/a/b;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lme/timos/br/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/timos/br/a/b;

    return-object v0
.end method

.method public static values()[Lme/timos/br/a/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lme/timos/br/a/b;->c:[Lme/timos/br/a/b;

    array-length v1, v0

    new-array v2, v1, [Lme/timos/br/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
