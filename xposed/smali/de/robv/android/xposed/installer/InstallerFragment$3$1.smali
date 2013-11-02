.class Lde/robv/android/xposed/installer/InstallerFragment$3$1;
.super Ljava/lang/Object;
.source "InstallerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/InstallerFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/robv/android/xposed/installer/InstallerFragment$3;

.field private final synthetic val$none:Ljava/lang/String;

.field private final synthetic val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

.field private final synthetic val$txtJarInstalledVersion:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/InstallerFragment$3;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$3;

    iput-object p2, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iput-object p3, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$none:Ljava/lang/String;

    iput-object p4, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/high16 v3, -0x1

    .line 147
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$3;

    #getter for: Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;
    invoke-static {v0}, Lde/robv/android/xposed/installer/InstallerFragment$3;->access$0(Lde/robv/android/xposed/installer/InstallerFragment$3;)Lde/robv/android/xposed/installer/InstallerFragment;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$3;

    #getter for: Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment$3;->access$0(Lde/robv/android/xposed/installer/InstallerFragment$3;)Lde/robv/android/xposed/installer/InstallerFragment;

    move-result-object v1

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->cleanup()Ljava/lang/String;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$4(Lde/robv/android/xposed/installer/InstallerFragment;)Ljava/lang/String;

    move-result-object v1

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->showAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/InstallerFragment;->access$1(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->this$1:Lde/robv/android/xposed/installer/InstallerFragment$3;

    #getter for: Lde/robv/android/xposed/installer/InstallerFragment$3;->this$0:Lde/robv/android/xposed/installer/InstallerFragment;
    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment$3;->access$0(Lde/robv/android/xposed/installer/InstallerFragment$3;)Lde/robv/android/xposed/installer/InstallerFragment;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$none:Ljava/lang/String;

    #calls: Lde/robv/android/xposed/installer/InstallerFragment;->getInstalledAppProcessVersion(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lde/robv/android/xposed/installer/InstallerFragment;->access$2(Lde/robv/android/xposed/installer/InstallerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtAppProcessInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$none:Ljava/lang/String;

    invoke-static {v1}, Lde/robv/android/xposed/installer/InstallerFragment;->getJarInstalledVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lde/robv/android/xposed/installer/InstallerFragment$3$1;->val$txtJarInstalledVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    return-void
.end method
