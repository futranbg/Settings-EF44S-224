.class Lcom/bigeyes0x0/trickstermod/tool/a/c;
.super Ljava/lang/Object;
.source "DeviceStatusHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-string v0, "cpu[0-9]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
