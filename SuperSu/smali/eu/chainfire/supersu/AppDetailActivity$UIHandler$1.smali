.class Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iput-object p2, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)Leu/chainfire/supersu/AppDetailActivity$UIHandler;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-static {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p3, v4, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    :cond_0
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->b:Landroid/app/Activity;

    if-ne p3, v4, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->b:Landroid/app/Activity;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$1;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)V

    new-instance v3, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$2;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1$2;-><init>(Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;)V

    invoke-static {v1, v0, v2, v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->b:Landroid/app/Activity;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-static {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->b:Landroid/app/Activity;

    const/16 v1, 0x1101

    invoke-static {v0, v3, v1, v3}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ZIZ)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Leu/chainfire/supersu/AppDetailActivity$UIHandler;J)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity$UIHandler$1;->a:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(Z)V

    return-void
.end method
