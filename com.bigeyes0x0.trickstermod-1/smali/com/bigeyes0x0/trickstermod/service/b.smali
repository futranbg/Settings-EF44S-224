.class Lcom/bigeyes0x0/trickstermod/service/b;
.super Ljava/lang/Object;
.source "ServiceApplySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/service/b;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/b;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;)Lcom/bigeyes0x0/trickstermod/TrApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->g()Lcom/bigeyes0x0/trickstermod/main/p;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/p;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/p;->E()V

    .line 207
    :cond_0
    return-void
.end method
