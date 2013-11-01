.class Leu/chainfire/supersu/MainActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$3;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$3$1;->a:Leu/chainfire/supersu/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$3$1;)Leu/chainfire/supersu/MainActivity$3;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3$1;->a:Leu/chainfire/supersu/MainActivity$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3$1;->a:Leu/chainfire/supersu/MainActivity$3;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$3;->b(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b6

    new-instance v2, Leu/chainfire/supersu/MainActivity$3$1$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$3$1$1;-><init>(Leu/chainfire/supersu/MainActivity$3$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b7

    new-instance v2, Leu/chainfire/supersu/MainActivity$3$1$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$3$1$2;-><init>(Leu/chainfire/supersu/MainActivity$3$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$3$1$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$3$1$3;-><init>(Leu/chainfire/supersu/MainActivity$3$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
