.class Lcom/bigeyes0x0/trickstermod/tool/g;
.super Ljava/lang/Object;
.source "SysctlEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/tool/g;)Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 55
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 56
    const-string v4, "if [ -x busybox ]; then"

    aput-object v4, v2, v3

    .line 57
    const-string v3, "./busybox sysctl -a 2> /dev/null|./sort"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "else"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 58
    const-string v4, "busybox sysctl -a 2> /dev/null|busybox sort"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "fi"

    aput-object v4, v2, v3

    .line 54
    invoke-static {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v0, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 61
    const v1, 0x7f080098

    .line 60
    invoke-virtual {v0, v1, v5}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(II)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->a(Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/bigeyes0x0/trickstermod/tool/h;

    invoke-direct {v1, p0}, Lcom/bigeyes0x0/trickstermod/tool/h;-><init>(Lcom/bigeyes0x0/trickstermod/tool/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void

    .line 64
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 65
    const-class v3, Lcom/bigeyes0x0/trickstermod/main/ActivitySysctlEditor;

    .line 64
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/tool/g;->a:Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/tool/SysctlEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
