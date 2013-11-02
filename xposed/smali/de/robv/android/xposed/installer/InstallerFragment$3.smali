.class Lde/robv/android/xposed/installer/InstallerFragment$3;
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

.field private final synthetic val$none:Ljava/lang/String;

.field private final synthetic val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

.field private final synthetic val$txtJarInstalledVersion:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/InstallerFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iput-object p2, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iput-object p3, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$none:Ljava/lang/String;

    iput-object p4, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/InstallerFragment$3;)Lde/robv/android/xposed/installer/InstallerFragment;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    const v1, 0x7f080013

    new-instance v2, Lde/robv/android/xposed/installer/InstallerFragment$3$1;

    iget-object v3, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iget-object v4, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$none:Ljava/lang/String;

    iget-object v5, p0, Lde/robv/android/xposed/installer/InstallerFragment$3;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v4, v5}, Lde/robv/android/xposed/installer/InstallerFragment$3$1;-><init>(Lde/robv/android/xposed/installer/InstallerFragment$3;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->areYouSure(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/installer/InstallerFragment;->access$5(Lde/robv/android/xposed/installer/InstallerFragment;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 154
    return-void
.end method
