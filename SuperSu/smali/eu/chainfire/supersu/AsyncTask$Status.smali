.class public final enum Leu/chainfire/supersu/AsyncTask$Status;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leu/chainfire/supersu/AsyncTask$Status;

.field public static final enum b:Leu/chainfire/supersu/AsyncTask$Status;

.field public static final enum c:Leu/chainfire/supersu/AsyncTask$Status;

.field private static final synthetic d:[Leu/chainfire/supersu/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Leu/chainfire/supersu/AsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask$Status;->a:Leu/chainfire/supersu/AsyncTask$Status;

    new-instance v0, Leu/chainfire/supersu/AsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Leu/chainfire/supersu/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask$Status;->b:Leu/chainfire/supersu/AsyncTask$Status;

    new-instance v0, Leu/chainfire/supersu/AsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Leu/chainfire/supersu/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/AsyncTask$Status;->c:Leu/chainfire/supersu/AsyncTask$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Leu/chainfire/supersu/AsyncTask$Status;

    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->a:Leu/chainfire/supersu/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->b:Leu/chainfire/supersu/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Leu/chainfire/supersu/AsyncTask$Status;->c:Leu/chainfire/supersu/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Leu/chainfire/supersu/AsyncTask$Status;->d:[Leu/chainfire/supersu/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/supersu/AsyncTask$Status;
    .locals 1

    const-class v0, Leu/chainfire/supersu/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Leu/chainfire/supersu/AsyncTask$Status;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Leu/chainfire/supersu/AsyncTask$Status;->d:[Leu/chainfire/supersu/AsyncTask$Status;

    array-length v1, v0

    new-array v2, v1, [Leu/chainfire/supersu/AsyncTask$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
