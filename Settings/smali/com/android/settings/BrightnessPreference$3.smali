.class Lcom/android/settings/BrightnessPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$3;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.pantech.statusbar.fully.closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v1, "com.pantech.statusbar.fully.opened"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference$3;->this$0:Lcom/android/settings/BrightnessPreference;

    #calls: Lcom/android/settings/BrightnessPreference;->finishDialog()V
    invoke-static {v1}, Lcom/android/settings/BrightnessPreference;->access$300(Lcom/android/settings/BrightnessPreference;)V

    goto :goto_0
.end method
