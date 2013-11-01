.class Leu/chainfire/supersu/Constants$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Constants$OnExpireTimeSelected;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/Constants$1;->a:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/Constants$1;->a:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Constants$1;->a:Leu/chainfire/supersu/Constants$OnExpireTimeSelected;

    invoke-static {p2}, Leu/chainfire/supersu/Constants;->e(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Leu/chainfire/supersu/Constants$OnExpireTimeSelected;->a(J)V

    :cond_0
    return-void
.end method
