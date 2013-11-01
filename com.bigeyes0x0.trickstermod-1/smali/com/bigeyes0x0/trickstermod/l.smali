.class Lcom/bigeyes0x0/trickstermod/l;
.super Lcom/stericson/RootTools/c/e;
.source "Utility.java"


# instance fields
.field private final synthetic m:Ljava/lang/StringBuilder;


# direct methods
.method varargs constructor <init>(II[Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p4, p0, Lcom/bigeyes0x0/trickstermod/l;->m:Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/c/e;-><init>(II[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/l;->m:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    return-void
.end method
