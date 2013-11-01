.class Lcom/stericson/RootTools/c/c;
.super Landroid/os/Handler;
.source "Command.java"


# instance fields
.field final synthetic a:Lcom/stericson/RootTools/c/a;


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/c/a;Lcom/stericson/RootTools/c/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/c/c;-><init>(Lcom/stericson/RootTools/c/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget-object v2, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget v2, v2, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {v0, v2, v1}, Lcom/stericson/RootTools/c/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget-object v1, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget v1, v1, Lcom/stericson/RootTools/c/a;->k:I

    iget-object v2, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget v2, v2, Lcom/stericson/RootTools/c/a;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/stericson/RootTools/c/a;->a(II)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget-object v2, p0, Lcom/stericson/RootTools/c/c;->a:Lcom/stericson/RootTools/c/a;

    iget v2, v2, Lcom/stericson/RootTools/c/a;->k:I

    invoke-virtual {v0, v2, v1}, Lcom/stericson/RootTools/c/a;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
