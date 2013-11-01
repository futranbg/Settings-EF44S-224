.class Lcom/bigeyes0x0/trickstermod/m;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/m;->b:Landroid/app/Activity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 352
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 353
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/m;->a:Landroid/content/Context;

    const-class v2, Lcom/bigeyes0x0/trickstermod/main/ActivityDonate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/m;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/m;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/m;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 359
    :cond_1
    return-void
.end method
