.class Lcom/bigeyes0x0/trickstermod/g;
.super Ljava/lang/Object;
.source "TrApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/TrApp;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/g;->b:Ljava/lang/String;

    iput p3, p0, Lcom/bigeyes0x0/trickstermod/g;->c:I

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/TrApp;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/g;->b:Ljava/lang/String;

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/g;->c:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/TrApp;Landroid/widget/Toast;)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/TrApp;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/TrApp;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/g;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Lcom/bigeyes0x0/trickstermod/TrApp;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/g;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
