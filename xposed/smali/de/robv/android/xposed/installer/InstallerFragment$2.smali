.class Lde/robv/android/xposed/installer/InstallerFragment$2;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iput-object p2, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iput-object p3, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$none:Ljava/lang/String;

    iput-object p4, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/high16 v3, -0x1

    .line 134
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->uninstall()Ljava/lang/String;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$3(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->showAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$1(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$none:Ljava/lang/String;

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lde/robv/android/xposed/installer/InstallerFragment;->access$2(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$none:Ljava/lang/String;

    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$2;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    return-void
.end method
