.class Lcom/bigeyes0x0/trickstermod/tool/h;
.super Ljava/lang/Object;
.source "SysctlEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/tool/g;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/g;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/h;->a:Lcom/bigeyes0x0/trickstermod/tool/g;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/h;->a:Lcom/bigeyes0x0/trickstermod/tool/g;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/g;->a(Lcom/bigeyes0x0/trickstermod/tool/g;)Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    move-result-object v0

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->a(Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    return-void
.end method
