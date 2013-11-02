.class Lde/robv/android/xposed/installer/InstallerFragment$1;
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iput-object p2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iput-object p3, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$none:Ljava/lang/String;

    iput-object p4, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, -0xff0100

    .line 115
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iget-object v3, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->install()Ljava/lang/String;
    invoke-static {v3}, Lde/robv/android/xposed/installer/InstallerFragment;->access$0(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;

    move-result-object v3

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->showAlert(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lde/robv/android/xposed/installer/InstallerFragment;->access$1(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iget-object v3, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    iget-object v4, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$none:Ljava/lang/String;

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lde/robv/android/xposed/installer/InstallerFragment;->access$2(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    iget-object v3, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$none:Ljava/lang/String;

    invoke-static {v3}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$1;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/InstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->getEnabledModules(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 122
    .local v1, enabledModules:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->updateModulesList(Landroid/content/Context;Ljava/util/Set;)V

    .line 123
    return-void
.end method
