.class Lcom/bigeyes0x0/trickstermod/tool/a/b;
.super Ljava/lang/Object;
.source "DeviceStatusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/tool/a/a;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/b;->a:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a/b;->a:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->a(Lcom/bigeyes0x0/trickstermod/tool/a/a;)Lcom/bigeyes0x0/trickstermod/tool/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a/b;->a:Lcom/bigeyes0x0/trickstermod/tool/a/a;

    invoke-static {v1}, Lcom/bigeyes0x0/trickstermod/tool/a/a;->b(Lcom/bigeyes0x0/trickstermod/tool/a/a;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bigeyes0x0/trickstermod/tool/a/d;->a(Landroid/content/Intent;)V

    .line 303
    return-void
.end method
