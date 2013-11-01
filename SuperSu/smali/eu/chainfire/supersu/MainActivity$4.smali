.class Leu/chainfire/supersu/MainActivity$4;
.super Leu/chainfire/supersu/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Leu/chainfire/supersu/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shown_remove_competitors"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$4;->a([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_remove_competitors"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/MainActivity$4$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$4$1;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    new-instance v2, Leu/chainfire/supersu/MainActivity$4$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$4$2;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$4$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$4$3;-><init>(Leu/chainfire/supersu/MainActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    invoke-static {v0, v3}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/MainActivity$4;->a(Ljava/lang/Integer;)V

    return-void
.end method
