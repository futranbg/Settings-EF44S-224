.class Lcom/bigeyes0x0/trickstermod/tool/f;
.super Ljava/lang/Object;
.source "KernelBackupRestore.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/f;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/f;-><init>()V

    return-void
.end method

.method private a(C)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    const-string v0, "|\\?*<\":>+[]/"

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    :goto_0
    if-lt p2, p3, :cond_0

    .line 67
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 62
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 63
    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/tool/f;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xff

    if-le p6, v0, :cond_2

    .line 64
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
