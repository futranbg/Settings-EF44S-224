.class Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WelcomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/WelcomeActivity;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/WelcomeActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 59
    iput-object p1, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    .line 60
    const v0, 0x7f030007

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 61
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    .line 68
    .local v2, item:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;
    const v5, 0x1020015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, description:Landroid/widget/TextView;
    iget-object v5, v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, frameworkUpdateAvailable:Z
    const/4 v3, 0x0

    .line 73
    .local v3, moduleUpdateAvailable:Z
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 74
    iget-object v5, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    #getter for: Lde/robv/android/xposed/installer/WelcomeActivity;->repoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;
    invoke-static {v5}, Lde/robv/android/xposed/installer/WelcomeActivity;->access$0(Lde/robv/android/xposed/installer/WelcomeActivity;)Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lde/robv/android/xposed/installer/util/RepoLoader;->hasFrameworkUpdate()Z

    move-result v1

    .line 75
    iget-object v5, p0, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->this$0:Lde/robv/android/xposed/installer/WelcomeActivity;

    #getter for: Lde/robv/android/xposed/installer/WelcomeActivity;->repoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;
    invoke-static {v5}, Lde/robv/android/xposed/installer/WelcomeActivity;->access$0(Lde/robv/android/xposed/installer/WelcomeActivity;)Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v5

    invoke-virtual {v5}, Lde/robv/android/xposed/installer/util/RepoLoader;->hasModuleUpdates()Z

    move-result v3

    .line 78
    :cond_0
    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-object v4

    :cond_1
    move v5, v7

    .line 78
    goto :goto_0

    :cond_2
    move v6, v7

    .line 79
    goto :goto_1
.end method
