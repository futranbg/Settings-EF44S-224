.class Leu/chainfire/supersu/MainActivity$3;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private d:Leu/chainfire/supersu/Installer;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/Installer;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/MainActivity$3;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iput-object v2, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$3;->a([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000b

    new-instance v2, Leu/chainfire/supersu/MainActivity$3$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$3$1;-><init>(Leu/chainfire/supersu/MainActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    new-instance v2, Leu/chainfire/supersu/MainActivity$3$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$3$2;-><init>(Leu/chainfire/supersu/MainActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$3$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$3$3;-><init>(Leu/chainfire/supersu/MainActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->d:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0900cb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/MainActivity$3$4;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$3$4;-><init>(Leu/chainfire/supersu/MainActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$3$5;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$3$5;-><init>(Leu/chainfire/supersu/MainActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const v0, 0x7f090020

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->e(Leu/chainfire/supersu/MainActivity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$3;->a(Ljava/lang/Integer;)V

    return-void
.end method
