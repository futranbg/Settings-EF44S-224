.class Leu/chainfire/supersu/PromptActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PromptActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$2;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity$2;)Leu/chainfire/supersu/PromptActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->a:Leu/chainfire/supersu/PromptActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->a:Leu/chainfire/supersu/PromptActivity;

    invoke-static {v0, v4}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$2;->a:Leu/chainfire/supersu/PromptActivity;

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$2;->a:Leu/chainfire/supersu/PromptActivity;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/PromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leu/chainfire/supersu/PromptActivity$2$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/PromptActivity$2$1;-><init>(Leu/chainfire/supersu/PromptActivity$2;)V

    new-instance v3, Leu/chainfire/supersu/PromptActivity$2$2;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/PromptActivity$2$2;-><init>(Leu/chainfire/supersu/PromptActivity$2;)V

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V

    return v4
.end method
