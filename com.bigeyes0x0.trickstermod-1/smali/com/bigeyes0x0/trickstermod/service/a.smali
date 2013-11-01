.class Lcom/bigeyes0x0/trickstermod/service/a;
.super Ljava/lang/Object;
.source "ServiceApplySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/service/a;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/service/a;->b:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/service/a;->a:Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;->a(Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;)Lcom/bigeyes0x0/trickstermod/TrApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/TrApp;->f()[Lcom/bigeyes0x0/trickstermod/main/n;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 196
    :cond_0
    return-void

    .line 190
    :cond_1
    aget-object v3, v1, v0

    .line 191
    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/main/n;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/service/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bigeyes0x0/trickstermod/main/n;->b(Ljava/lang/String;)V

    .line 190
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
