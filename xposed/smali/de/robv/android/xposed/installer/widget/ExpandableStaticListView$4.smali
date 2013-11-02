.class Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;
.super Ljava/lang/Object;
.source "ExpandableStaticListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->collapseGroup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

.field private final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iput p2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->val$groupPosition:I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mExpandedGroups:[Z

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->val$groupPosition:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 174
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->val$groupPosition:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->val$groupPosition:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$4;->val$groupPosition:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
