.class Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadFragment.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private final mDateFormatter:Ljava/text/DateFormat;

.field private mFilter:Landroid/widget/Filter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private sectionHeadersDate:[Ljava/lang/String;

.field private sectionHeadersStatus:[Ljava/lang/String;

.field final synthetic this$0:Lde/robv/android/xposed/installer/DownloadFragment;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/DownloadFragment;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 228
    iput-object p1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    .line 229
    const v1, 0x7f030003

    const v2, 0x1020014

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 221
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mDateFormatter:Ljava/text/DateFormat;

    .line 230
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 232
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    .local v0, res:Landroid/content/res/Resources;
    new-array v1, v7, [Ljava/lang/String;

    .line 234
    const v2, 0x7f080031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 235
    const v2, 0x7f080032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 236
    const v2, 0x7f080033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 237
    const v2, 0x7f080034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 233
    iput-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->sectionHeadersStatus:[Ljava/lang/String;

    .line 239
    new-array v1, v7, [Ljava/lang/String;

    .line 240
    const v2, 0x7f080035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 241
    const v2, 0x7f080036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 242
    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 243
    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 239
    iput-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->sectionHeadersDate:[Ljava/lang/String;

    .line 245
    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;-><init>(Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter$DownloadFilter;)V

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mFilter:Landroid/widget/Filter;

    .line 340
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 10
    .parameter "position"

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    .line 310
    .local v3, item:Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;
    iget-object v8, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v8}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 311
    iget-object v8, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v8}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLastUpdate()J

    move-result-wide v6

    .line 312
    .local v6, timestamp:J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 313
    .local v0, age:J
    const-wide/32 v4, 0x5265c00

    .line 314
    .local v4, mSecsPerDay:J
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 315
    const-wide/16 v8, 0x0

    .line 331
    .end local v0           #age:J
    .end local v4           #mSecsPerDay:J
    .end local v6           #timestamp:J
    :goto_1
    return-wide v8

    .line 311
    :cond_0
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getCreationDate()J

    move-result-wide v6

    goto :goto_0

    .line 316
    .restart local v0       #age:J
    .restart local v4       #mSecsPerDay:J
    .restart local v6       #timestamp:J
    :cond_1
    const-wide/32 v8, 0x240c8400

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    .line 317
    const-wide/16 v8, 0x1

    goto :goto_1

    .line 318
    :cond_2
    const-wide v8, 0x9a7ec800L

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    .line 319
    const-wide/16 v8, 0x2

    goto :goto_1

    .line 320
    :cond_3
    const-wide/16 v8, 0x3

    goto :goto_1

    .line 322
    .end local v0           #age:J
    .end local v4           #mSecsPerDay:J
    .end local v6           #timestamp:J
    :cond_4
    iget-boolean v8, v3, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->isFramework:Z

    if-eqz v8, :cond_5

    .line 323
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 325
    :cond_5
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstallStatus()I

    move-result v2

    .line 326
    .local v2, installStatus:I
    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 327
    const-wide/16 v8, 0x1

    goto :goto_1

    .line 328
    :cond_6
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 329
    const-wide/16 v8, 0x2

    goto :goto_1

    .line 331
    :cond_7
    const-wide/16 v8, 0x3

    goto :goto_1
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 295
    if-nez p2, :cond_0

    .line 296
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 301
    .local v0, section:J
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 302
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mSortingOrder:I
    invoke-static {v3}, Lde/robv/android/xposed/installer/DownloadFragment;->access$2(Lde/robv/android/xposed/installer/DownloadFragment;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->sectionHeadersStatus:[Ljava/lang/String;

    long-to-int v4, v0

    aget-object v3, v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-object p2

    .line 302
    :cond_1
    iget-object v3, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->sectionHeadersDate:[Ljava/lang/String;

    long-to-int v4, v0

    aget-object v3, v3, v4

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 254
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 256
    .local v9, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;

    .line 257
    .local v3, item:Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getModule()Lde/robv/android/xposed/installer/repo/Module;

    move-result-object v5

    .line 258
    .local v5, module:Lde/robv/android/xposed/installer/repo/Module;
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLatestVersion()Lde/robv/android/xposed/installer/repo/ModuleVersion;

    move-result-object v4

    .line 259
    .local v4, latest:Lde/robv/android/xposed/installer/repo/ModuleVersion;
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstalled()Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;

    move-result-object v2

    .line 260
    .local v2, installed:Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;
    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getInstallStatus()I

    move-result v1

    .line 262
    .local v1, installStatus:I
    const v10, 0x1020015

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 263
    .local v7, txtSummary:Landroid/widget/TextView;
    iget-object v10, v5, Lde/robv/android/xposed/installer/repo/Module;->summary:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v10, 0x7f0a000a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 266
    .local v6, txtStatus:Landroid/widget/TextView;
    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    .line 267
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f08002b

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v2, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v4, Lde/robv/android/xposed/installer/repo/ModuleVersion;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v10, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    invoke-virtual {v10}, Lde/robv/android/xposed/installer/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_0
    iget-object v10, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mDateFormatter:Ljava/text/DateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getCreationDate()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, creationDate:Ljava/lang/String;
    iget-object v10, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mDateFormatter:Ljava/text/DateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v3}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;->getLastUpdate()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, updateDate:Ljava/lang/String;
    const v10, 0x7f0a000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 281
    iget-object v11, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    const v12, 0x7f08002c

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-virtual {v11, v12, v13}, Lde/robv/android/xposed/installer/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 280
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-object v9

    .line 270
    .end local v0           #creationDate:Ljava/lang/String;
    .end local v8           #updateDate:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x1

    if-ne v1, v10, :cond_1

    .line 271
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f08002a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v2, Lde/robv/android/xposed/installer/util/ModuleUtil$InstalledModule;->versionName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v10, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    invoke-virtual {v10}, Lde/robv/android/xposed/installer/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f07

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->setNotifyOnChange(Z)V

    .line 289
    iget-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mAdapter:Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;
    invoke-static {v0}, Lde/robv/android/xposed/installer/DownloadFragment;->access$1(Lde/robv/android/xposed/installer/DownloadFragment;)Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->sort(Ljava/util/Comparator;)V

    .line 290
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 291
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lde/robv/android/xposed/installer/DownloadFragment$DownloadItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->mOriginalValues:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {p0}, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lde/robv/android/xposed/installer/DownloadFragment$DownloadsAdapter;->this$0:Lde/robv/android/xposed/installer/DownloadFragment;

    #getter for: Lde/robv/android/xposed/installer/DownloadFragment;->mFilterText:Ljava/lang/String;
    invoke-static {v1}, Lde/robv/android/xposed/installer/DownloadFragment;->access$0(Lde/robv/android/xposed/installer/DownloadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method
