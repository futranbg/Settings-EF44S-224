.class public Leu/chainfire/supersu/MainActivity$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;

# interfaces
.implements Landroid/support/v4/view/aj;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/actionbarsherlock/app/ActionBar;

.field private final d:Landroid/support/v4/view/ViewPager;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/MainActivity;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, p2

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->b:Landroid/content/Context;

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    iput-object p3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/k;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/aj;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, p2, p3}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;-><init>(Leu/chainfire/supersu/MainActivity$TabsAdapter;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->c:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/MainActivity$TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->d(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->d(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->a(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;->b(Leu/chainfire/supersu/MainActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez p1, :cond_4

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/AppsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/AppsFragment;)V

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/LogsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/LogsFragment;)V

    :cond_5
    if-ne p1, v4, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    move-object v0, v1

    check-cast v0, Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v2, v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Leu/chainfire/supersu/SettingsFragment;)V

    goto :goto_0
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-static {v0, v2}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;I)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->b:Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->b(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->b()V

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iget-boolean v0, v0, Leu/chainfire/supersu/MainActivity;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->c:Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->b()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$TabsAdapter;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 0

    return-void
.end method
