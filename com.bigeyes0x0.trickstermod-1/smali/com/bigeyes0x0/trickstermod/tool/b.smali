.class Lcom/bigeyes0x0/trickstermod/tool/b;
.super Ljava/lang/Object;
.source "AdbWireless.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    iput-boolean p2, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->b:Z

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;->b(Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/tool/b;->a:Lcom/bigeyes0x0/trickstermod/tool/AdbWireless;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    return-void
.end method
