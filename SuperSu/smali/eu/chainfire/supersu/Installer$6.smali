.class Leu/chainfire/supersu/Installer$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Installer;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/Installer$6;->a:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$6;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Installer$6;->b:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Landroid/content/Context;)V

    return-void
.end method
