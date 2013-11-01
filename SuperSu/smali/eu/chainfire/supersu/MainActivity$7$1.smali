.class Leu/chainfire/supersu/MainActivity$7$1;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$7;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$7;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v2}, Leu/chainfire/supersu/MainActivity$7;->a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b([Ljava/lang/String;)Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$7$1;->a([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$7;->a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v1}, Leu/chainfire/supersu/MainActivity$7;->a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$7;->a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu/chainfire/supersu/MainActivity;->c:Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$7$1;->a:Leu/chainfire/supersu/MainActivity$7;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$7;->a(Leu/chainfire/supersu/MainActivity$7;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity;->c(Leu/chainfire/supersu/MainActivity;)Leu/chainfire/supersu/LogsFragment;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/LogsFragment;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$7$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
