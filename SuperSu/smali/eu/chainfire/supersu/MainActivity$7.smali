.class Leu/chainfire/supersu/MainActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$7;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3

    new-instance v0, Leu/chainfire/supersu/MainActivity$7$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/MainActivity$7$1;-><init>(Leu/chainfire/supersu/MainActivity$7;)V

    sget-object v1, Leu/chainfire/supersu/AsyncTask;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/MainActivity$7$1;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Leu/chainfire/supersu/AsyncTask;

    const/4 v0, 0x1

    return v0
.end method
