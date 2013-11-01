.class public final enum Lme/timos/br/a/c;
.super Ljava/lang/Enum;
.source "ReportMode.java"


# static fields
.field public static final enum a:Lme/timos/br/a/c;

.field public static final enum b:Lme/timos/br/a/c;

.field public static final enum c:Lme/timos/br/a/c;

.field private static final synthetic d:[Lme/timos/br/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lme/timos/br/a/c;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lme/timos/br/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/c;->a:Lme/timos/br/a/c;

    new-instance v0, Lme/timos/br/a/c;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lme/timos/br/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/c;->b:Lme/timos/br/a/c;

    new-instance v0, Lme/timos/br/a/c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lme/timos/br/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/timos/br/a/c;->c:Lme/timos/br/a/c;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lme/timos/br/a/c;

    sget-object v1, Lme/timos/br/a/c;->a:Lme/timos/br/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lme/timos/br/a/c;->b:Lme/timos/br/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lme/timos/br/a/c;->c:Lme/timos/br/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lme/timos/br/a/c;->d:[Lme/timos/br/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lme/timos/br/a/c;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lme/timos/br/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/timos/br/a/c;

    return-object v0
.end method

.method public static values()[Lme/timos/br/a/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lme/timos/br/a/c;->d:[Lme/timos/br/a/c;

    array-length v1, v0

    new-array v2, v1, [Lme/timos/br/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
