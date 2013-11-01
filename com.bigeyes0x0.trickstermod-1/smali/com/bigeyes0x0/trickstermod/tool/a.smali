.class Lcom/bigeyes0x0/trickstermod/tool/a;
.super Ljava/lang/Object;
.source "AdbWireless.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/a;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/a;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->a(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/a;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 292
    return-void
.end method
