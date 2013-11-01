.class Leu/chainfire/supersu/MainActivity$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$3$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$3$1;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$3$1$1;->a:Leu/chainfire/supersu/MainActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3$1$1;->a:Leu/chainfire/supersu/MainActivity$3$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$3$1;->a(Leu/chainfire/supersu/MainActivity$3$1;)Leu/chainfire/supersu/MainActivity$3;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$3;->a(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/Installer;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$3$1$1;->a:Leu/chainfire/supersu/MainActivity$3$1;

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity$3$1;->a(Leu/chainfire/supersu/MainActivity$3$1;)Leu/chainfire/supersu/MainActivity$3;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity$3;->b(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/MainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->i(Landroid/content/Context;)V

    return-void
.end method
