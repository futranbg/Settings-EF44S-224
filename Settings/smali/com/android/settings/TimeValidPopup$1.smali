.class Lcom/android/settings/TimeValidPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeValidPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TimeValidPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeValidPopup;


# direct methods
.method constructor <init>(Lcom/android/settings/TimeValidPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/TimeValidPopup$1;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v1, 0x4

    .line 33
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$1;->this$0:Lcom/android/settings/TimeValidPopup;

    iget v0, v0, Lcom/android/settings/TimeValidPopup;->mJobType:I

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$1;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeValidPopup;->dismissDialog(I)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$1;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0}, Lcom/android/settings/TimeValidPopup;->finish()V

    .line 37
    :cond_0
    return-void
.end method
