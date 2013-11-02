.class Lde/robv/android/xposed/installer/DownloadFragment$4;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/DownloadFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$4;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 155
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$4;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    const/4 v1, 0x0

    #calls: Lde/robv/android/xposed/installer/DownloadFragment;->setFilter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lde/robv/android/xposed/installer/DownloadFragment;->access$6(Lde/robv/android/xposed/installer/DownloadFragment;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method
