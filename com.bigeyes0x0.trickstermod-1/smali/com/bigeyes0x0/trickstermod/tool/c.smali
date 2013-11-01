.class Lcom/bigeyes0x0/trickstermod/tool/c;
.super Ljava/lang/Object;
.source "CpuStats.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/c;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    const/4 v0, -0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    if-ne v0, v1, :cond_1

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/tool/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
