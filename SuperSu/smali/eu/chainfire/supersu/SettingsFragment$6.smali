.class Leu/chainfire/supersu/SettingsFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x6

    new-array v5, v0, [Leu/chainfire/supersu/SettingsFragment$IconItem;

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f090091

    const v3, 0x7f020064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v0, v5, v9

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v2, 0x7f0900ac

    const v3, 0x7f02005e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v0, v5, v6

    const/4 v0, 0x2

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v3, 0x7f090092

    const v4, 0x7f02005f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v1, v5, v0

    const/4 v0, 0x3

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v3, 0x7f090093

    const v4, 0x7f02005c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v1, v5, v0

    const/4 v0, 0x4

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v3, 0x7f090094

    const v4, 0x7f020060

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v1, v5, v0

    const/4 v0, 0x5

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$IconItem;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    const v3, 0x7f090095

    const v4, 0x7f02005d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Leu/chainfire/supersu/SettingsFragment$IconItem;-><init>(Leu/chainfire/supersu/SettingsFragment;ILjava/lang/Integer;)V

    aput-object v1, v5, v0

    const/high16 v0, 0x4240

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v7, v0

    const/high16 v0, 0x4100

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v8, v0

    new-instance v0, Leu/chainfire/supersu/SettingsFragment$6$1;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090011

    const v4, 0x1020014

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Leu/chainfire/supersu/SettingsFragment$6$1;-><init>(Leu/chainfire/supersu/SettingsFragment$6;Landroid/content/Context;II[Leu/chainfire/supersu/SettingsFragment$IconItem;[Leu/chainfire/supersu/SettingsFragment$IconItem;II)V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$6$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$6$2;-><init>(Leu/chainfire/supersu/SettingsFragment$6;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v9
.end method
