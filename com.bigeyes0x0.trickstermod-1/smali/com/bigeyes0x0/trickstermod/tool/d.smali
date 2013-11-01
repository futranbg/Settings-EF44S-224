.class Lcom/bigeyes0x0/trickstermod/tool/d;
.super Ljava/lang/Object;
.source "HostnameSetter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/d;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/tool/d;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    :goto_0
    if-lt p2, p3, :cond_0

    .line 34
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 29
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    .line 31
    const-string v0, ""

    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
