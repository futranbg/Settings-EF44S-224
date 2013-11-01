.class public Leu/chainfire/supersu/AppDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0, p1, p2, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAppDetailCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onAppDetailForget(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->c()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onAppDetailSave(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setContentView(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    new-instance v0, Leu/chainfire/supersu/AppDetailActivity$1;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    const-string v2, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Leu/chainfire/supersu/AppDetailActivity$1;-><init>(Leu/chainfire/supersu/AppDetailActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method
