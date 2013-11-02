.class Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$1;
.super Ljava/lang/Object;
.source "ExpandableStaticListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->reloadViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$1;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$1;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->_reloadViewsOnUiThread()V

    .line 54
    return-void
.end method
