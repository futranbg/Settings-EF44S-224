.class Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;
.super Landroid/widget/Filter;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;


# direct methods
.method private constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;-><init>(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .parameter "filter"

    .prologue
    .line 346
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 348
    .local v5, results:Landroid/widget/Filter$FilterResults;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v7}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->access$0(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 350
    :cond_0
    iput-object v3, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 367
    :goto_0
    return-object v5

    .line 353
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 354
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v4, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, filterStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 363
    iput-object v4, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 364
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    .line 359
    .local v6, value:Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;
    invoke-virtual {v6, v1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->containsText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 373
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->clear()V

    .line 374
    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->addAll(Ljava/util/Collection;)V

    .line 375
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->notifyDataSetChanged()V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;->this$1:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
