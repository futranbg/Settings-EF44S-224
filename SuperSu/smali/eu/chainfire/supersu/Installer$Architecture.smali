.class public final enum Leu/chainfire/supersu/Installer$Architecture;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum b:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum c:Leu/chainfire/supersu/Installer$Architecture;

.field public static final enum d:Leu/chainfire/supersu/Installer$Architecture;

.field private static final synthetic e:[Leu/chainfire/supersu/Installer$Architecture;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "ARM"

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->a:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "X86"

    invoke-direct {v0, v1, v3}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->b:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "MIPS"

    invoke-direct {v0, v1, v4}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->c:Leu/chainfire/supersu/Installer$Architecture;

    new-instance v0, Leu/chainfire/supersu/Installer$Architecture;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Leu/chainfire/supersu/Installer$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    const/4 v0, 0x4

    new-array v0, v0, [Leu/chainfire/supersu/Installer$Architecture;

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->a:Leu/chainfire/supersu/Installer$Architecture;

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->b:Leu/chainfire/supersu/Installer$Architecture;

    aput-object v1, v0, v3

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->c:Leu/chainfire/supersu/Installer$Architecture;

    aput-object v1, v0, v4

    sget-object v1, Leu/chainfire/supersu/Installer$Architecture;->d:Leu/chainfire/supersu/Installer$Architecture;

    aput-object v1, v0, v5

    sput-object v0, Leu/chainfire/supersu/Installer$Architecture;->e:[Leu/chainfire/supersu/Installer$Architecture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/supersu/Installer$Architecture;
    .locals 1

    const-class v0, Leu/chainfire/supersu/Installer$Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Installer$Architecture;

    return-object v0
.end method

.method public static values()[Leu/chainfire/supersu/Installer$Architecture;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Leu/chainfire/supersu/Installer$Architecture;->e:[Leu/chainfire/supersu/Installer$Architecture;

    array-length v1, v0

    new-array v2, v1, [Leu/chainfire/supersu/Installer$Architecture;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
