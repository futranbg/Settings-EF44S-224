.class Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;
.super Ljava/lang/Object;
.source "ExpandableStaticListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->_reloadViewsOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

.field private final synthetic val$finalGroupPosition:I


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iput p2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;->val$finalGroupPosition:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$2;->val$finalGroupPosition:I

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->toggleGroup(I)V

    .line 82
    return-void
.end method
