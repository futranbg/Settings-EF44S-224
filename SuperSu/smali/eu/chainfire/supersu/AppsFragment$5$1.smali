.class Leu/chainfire/supersu/AppsFragment$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment$5;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment$5;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$5$1;->a:Leu/chainfire/supersu/AppsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5$1;->a:Leu/chainfire/supersu/AppsFragment$5;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment$5;->a(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/Logs;

    move-result-object v0

    sput-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$5$1;->a:Leu/chainfire/supersu/AppsFragment$5;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment$5;->b(Leu/chainfire/supersu/AppsFragment$5;)Leu/chainfire/supersu/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x1200

    invoke-static {v0, p3, v1}, Leu/chainfire/supersu/LogDetailActivity;->a(Landroid/app/Activity;II)V

    return-void
.end method
