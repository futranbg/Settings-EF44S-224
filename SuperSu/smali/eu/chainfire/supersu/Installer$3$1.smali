.class Leu/chainfire/supersu/Installer$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Installer$3;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer$3;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/Installer$3$1;->a:Leu/chainfire/supersu/Installer$3;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$3$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Installer$3$1;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Installer$3$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
