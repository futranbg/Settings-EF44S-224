.class Lde/robv/android/xposed/installer/InstallerFragment$4$1;
.super Ljava/lang/Object;
.source "InstallerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/InstallerFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/robv/android/xposed/installer/InstallerFragment$4;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/InstallerFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$4$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$4;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$4$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$4;

    #getter for: Lde/robv/android/xposed/installer/InstallerFragment$4;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;
    invoke-static {v0}, Lde/robv/android/xposed/installer/InstallerFragment$4;->access$0(Lde/robv/android/xposed/installer/InstallerFragment$4;)Lde/robv/android/xposed/installer/InstallerFragment;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$4$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$4;

    #getter for: Lde/robv/android/xposed/installer/InstallerFragment$4;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment$4;->access$0(Lde/robv/android/xposed/installer/InstallerFragment$4;)Lde/robv/android/xposed/installer/InstallerFragment;

    move-result-object v1

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->reboot()Ljava/lang/String;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$6(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->showAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$1(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)V

    .line 163
    return-void
.end method
