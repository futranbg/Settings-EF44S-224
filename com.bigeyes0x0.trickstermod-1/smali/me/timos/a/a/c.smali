.class Lme/timos/a/a/c;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lme/timos/a/a/b;

.field private final synthetic b:Lme/timos/a/a/l;


# direct methods
.method constructor <init>(Lme/timos/a/a/b;Lme/timos/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    iput-object p2, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    iget-boolean v0, v0, Lme/timos/a/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    invoke-static {p2}, Lcom/android/vending/billing/a;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 222
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    iget-object v0, v0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    iget-object v1, v1, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    if-eqz v1, :cond_4

    .line 229
    iget-object v0, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    new-instance v2, Lme/timos/a/a/n;

    .line 230
    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 229
    invoke-interface {v0, v2}, Lme/timos/a/a/l;->a(Lme/timos/a/a/n;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lme/timos/a/a/b;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget-object v1, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    new-instance v2, Lme/timos/a/a/n;

    const/16 v3, -0x3e9

    .line 253
    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 252
    invoke-interface {v1, v2}, Lme/timos/a/a/l;->a(Lme/timos/a/a/n;)V

    .line 255
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_4
    :try_start_1
    iget-object v1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In-app billing version 3 supported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    iget-object v1, v1, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/timos/a/a/b;->e:Z

    .line 248
    :goto_1
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/timos/a/a/b;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    iget-object v0, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lme/timos/a/a/c;->b:Lme/timos/a/a/l;

    new-instance v1, Lme/timos/a/a/n;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lme/timos/a/a/l;->a(Lme/timos/a/a/n;)V

    goto/16 :goto_0

    .line 245
    :cond_5
    :try_start_2
    iget-object v1, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lme/timos/a/a/c;->a:Lme/timos/a/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 215
    return-void
.end method
