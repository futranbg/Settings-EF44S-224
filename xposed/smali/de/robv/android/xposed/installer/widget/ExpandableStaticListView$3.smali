.class Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;
.super Ljava/lang/Object;
.source "ExpandableStaticListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->expandGroup(I)V
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
    iput-object p1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iput p2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mExpandedGroups:[Z

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 155
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->loadChildViews(I)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->this$0:Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;

    iget-object v1, v1, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView;->mChildren:[[Landroid/view/View;

    iget v2, p0, Lde/robv/android/xposed/installer/widget/ExpandableStaticListView$3;->val$groupPosition:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
