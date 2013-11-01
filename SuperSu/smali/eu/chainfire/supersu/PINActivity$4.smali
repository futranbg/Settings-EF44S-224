.class Leu/chainfire/supersu/PINActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PINActivity;

.field private final synthetic b:Leu/chainfire/supersu/Settings$App;

.field private final synthetic c:Leu/chainfire/supersu/Settings;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PINActivity;Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    iput-object p2, p0, Leu/chainfire/supersu/PINActivity$4;->b:Leu/chainfire/supersu/Settings$App;

    iput-object p3, p0, Leu/chainfire/supersu/PINActivity$4;->c:Leu/chainfire/supersu/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->b:Leu/chainfire/supersu/Settings$App;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Leu/chainfire/supersu/Settings$App;->c:J

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->b:Leu/chainfire/supersu/Settings$App;

    const/4 v1, 0x2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->n:I

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->b:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->c:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->b:Leu/chainfire/supersu/Settings$App;

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    iget-object v2, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    invoke-static {v2}, Leu/chainfire/supersu/PINActivity;->a(Leu/chainfire/supersu/PINActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/Settings$App;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/PINActivity;->finish()V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity$4;->a:Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v0, v3, v3}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    return-void
.end method
