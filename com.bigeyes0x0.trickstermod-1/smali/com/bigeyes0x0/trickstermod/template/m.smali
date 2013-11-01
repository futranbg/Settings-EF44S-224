.class Lcom/bigeyes0x0/trickstermod/template/m;
.super Ljava/lang/Object;
.source "SettingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/template/l;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/template/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/m;->a:Lcom/bigeyes0x0/trickstermod/template/l;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/m;->a:Lcom/bigeyes0x0/trickstermod/template/l;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/template/l;->a(Lcom/bigeyes0x0/trickstermod/template/l;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    return-void
.end method
