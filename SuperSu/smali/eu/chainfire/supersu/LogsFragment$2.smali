.class Leu/chainfire/supersu/LogsFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/LogsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/LogsFragment;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(I)V

    return-void
.end method
