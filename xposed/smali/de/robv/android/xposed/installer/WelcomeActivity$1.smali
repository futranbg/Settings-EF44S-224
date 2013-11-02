.class Lde/robv/android/xposed/installer/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/WelcomeActivity;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$1;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$1;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    const-class v2, Lde/robv/android/xposed/installer/XposedInstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "opentab"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$1;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    invoke-virtual {v1, v0}, Lde/robv/android/xposed/installer/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$1;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    const v2, 0x7f040001

    const v3, 0x7f040002

    invoke-virtual {v1, v2, v3}, Lde/robv/android/xposed/installer/WelcomeActivity;->overridePendingTransition(II)V

    .line 47
    return-void
.end method
