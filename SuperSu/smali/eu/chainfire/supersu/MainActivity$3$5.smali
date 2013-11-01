.class Leu/chainfire/supersu/MainActivity$3$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$3;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$3;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$3$5;->a:Leu/chainfire/supersu/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3$5;->a:Leu/chainfire/supersu/MainActivity$3;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$3;->b(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    return-void
.end method
