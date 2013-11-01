.class Leu/chainfire/supersu/Installer$1;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Installer;

.field private d:Landroid/app/ProgressDialog;

.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Ljava/lang/Boolean;

.field private final synthetic g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/Installer$1;->a:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/Installer$1;->f:Ljava/lang/Boolean;

    iput-object p4, p0, Leu/chainfire/supersu/Installer$1;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->a:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer$1;->a([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900ce

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f090021

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "SuperSU"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-boolean v0, Leu/chainfire/supersu/Constants;->a:Z

    if-eqz v0, :cond_4

    if-ne v1, v3, :cond_3

    const v0, 0x7f0900cc

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090004

    new-instance v3, Leu/chainfire/supersu/Installer$1$1;

    iget-object v4, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-direct {v3, p0, v1, v4}, Leu/chainfire/supersu/Installer$1$1;-><init>(Leu/chainfire/supersu/Installer$1;ILandroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Leu/chainfire/supersu/Installer$1$2;

    iget-object v3, p0, Leu/chainfire/supersu/Installer$1;->e:Landroid/content/Context;

    invoke-direct {v2, p0, v1, v3}, Leu/chainfire/supersu/Installer$1$2;-><init>(Leu/chainfire/supersu/Installer$1;ILandroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/Installer$1;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f0900cd

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    const v0, 0x7f090022

    goto :goto_0

    :cond_5
    const v0, 0x7f090023

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
