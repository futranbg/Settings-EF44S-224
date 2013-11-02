.class public Lde/robv/android/xposed/installer/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;,
        Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

.field private repoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/robv/android/xposed/installer/WelcomeActivity;)Lde/robv/android/xposed/installer/util/RepoLoader;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->repoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/WelcomeActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-static {}, Lde/robv/android/xposed/installer/util/RepoLoader;->getInstance()Lde/robv/android/xposed/installer/util/RepoLoader;

    move-result-object v1

    iput-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->repoLoader:Lde/robv/android/xposed/installer/util/RepoLoader;

    .line 28
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/WelcomeActivity;->setContentView(I)V

    .line 30
    new-instance v1, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    invoke-direct {v1, p0, p0}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    .line 32
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    new-instance v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    const v3, 0x7f080002

    const v4, 0x7f080003

    invoke-direct {v2, p0, v3, v4}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->add(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    new-instance v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    const v3, 0x7f080004

    const v4, 0x7f080005

    invoke-direct {v2, p0, v3, v4}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->add(Ljava/lang/Object;)V

    .line 34
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    new-instance v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    const v3, 0x7f080006

    const v4, 0x7f080007

    invoke-direct {v2, p0, v3, v4}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->add(Ljava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    new-instance v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    const v3, 0x7f08000a

    const v4, 0x7f08000b

    invoke-direct {v2, p0, v3, v4}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->add(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    new-instance v2, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;

    const v3, 0x7f08000c

    const v4, 0x7f08000d

    invoke-direct {v2, p0, v3, v4}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeItem;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;II)V

    invoke-virtual {v1, v2}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->add(Ljava/lang/Object;)V

    .line 38
    const/high16 v1, 0x7f0a

    invoke-virtual {p0, v1}, Lde/robv/android/xposed/installer/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 39
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v1, Lde/robv/android/xposed/installer/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/installer/WelcomeActivity$1;-><init>(Lde/robv/android/xposed/installer/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 55
    iget-object v0, p0, Lde/robv/android/xposed/installer/WelcomeActivity;->mAdapter:Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;

    invoke-virtual {v0}, Lde/robv/android/xposed/installer/WelcomeActivity$WelcomeAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method
