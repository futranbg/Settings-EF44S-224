.class Lde/robv/android/xposed/installer/InstallerFragment$4;
.super Ljava/lang/Object;
.source "InstallerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/InstallerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/InstallerFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/InstallerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$4;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/InstallerFragment$4;)Lde/robv/android/xposed/installer/InstallerFragment;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$4;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$4;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    const v1, 0x7f080018

    new-instance v2, Lde/robv/android/xposed/installer/InstallerFragment$4$1;

    invoke-direct {v2, p0}, Lde/robv/android/xposed/installer/InstallerFragment$4$1;-><init>(Lde/robv/android/xposed/installer/InstallerFragment$4;)V

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->areYouSure(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/installer/InstallerFragment;->access$5(Lde/robv/android/xposed/installer/InstallerFragment;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 165
    return-void
.end method
